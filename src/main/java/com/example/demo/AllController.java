package com.example.demo;

import java.io.ByteArrayOutputStream;
import java.time.LocalDate;
import java.util.Calendar;
import java.util.Date;
import java.util.List;
import java.util.Optional;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.io.ByteArrayResource;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.view.RedirectView;

import com.example.demo.AddApplicant.AddedApplicant;
import com.example.demo.AddApplicant.AddedApplicantRepo;
import com.example.demo.Payment.PaymentService;
import com.example.demo.Payment.TransactionsDetails;
import com.example.demo.Payment.TrasnsactionRepo;
import com.itextpdf.text.Element;
import com.itextpdf.text.FontFactory;
import com.itextpdf.text.Image;
import com.itextpdf.text.PageSize;
import com.itextpdf.text.Paragraph;
import com.itextpdf.text.pdf.PdfPTable;
import com.itextpdf.text.pdf.PdfWriter;

@Controller
public class AllController {

	@Autowired
	CommonService c1;

	@Autowired
	AddedApplicantRepo r1;

	@Autowired
	TrasnsactionRepo tRepo;

	@Autowired
	PaymentService pser;

	List<TransactionsDetails> allCustomers;

	@PersistenceContext
	private EntityManager entityManager;

	@RequestMapping("/")
	public String dashboard()
	{
		return "dashboard";
	}

	@RequestMapping("/tables")
	public String addApplicant()
	{
		return "tables";
	}

	@RequestMapping("/billing")
	public String loanDetails(ModelMap m)
	{
		List<AddedApplicant> l1 = c1.getAllApplicants();
		m.addAttribute("list",l1);
		return "billing";
	}

	@RequestMapping("/pending_amount")
	public String pendingAmount(ModelMap m)
	{
		List<TransactionsDetails> l1 = c1.getTransactionApplicant(); 

		for (TransactionsDetails transaction : l1) {
			Date currentDate = transaction.getCreatedAtDate();
			Calendar calendar = Calendar.getInstance();
			calendar.setTime(currentDate);

			//add 3 yrs
			calendar.add(Calendar.YEAR, 3);
			Date updatedDate = calendar.getTime();
			transaction.setDueDate(updatedDate);
			m.addAttribute("transactionDetails", l1);
		}
		return "pending_amount";
	}

	@RequestMapping("/collectedLoans")
	public String collectedLoans()
	{
		return "collectedLoans";
	}

	@RequestMapping("/transactions")
	public String transactions()
	{
		return "transactions";
	}

	//Dashboard's root mapping

	@RequestMapping("/dashboardPages/wallet")
	public String dashboardWallet()
	{
		return "dashboardPages/wallet";
	}

	@RequestMapping("/dashboardPages/addWalletFunds")
	public String addWalletFunds()
	{
		return "dashboardPages/addWalletFunds";
	}

	@RequestMapping("/dashboardPages/customerList")
	public String customerList(ModelMap m)
	{
		allCustomers = pser.getCustomerApplicants();
		m.addAttribute("cust", allCustomers);
		return "dashboardPages/customerList";
	}

	@RequestMapping(value="/generatereport", method = {RequestMethod.GET, RequestMethod.POST}	)
	public ResponseEntity<ByteArrayResource> downloadDataAsPdf(HttpServletResponse response) {
		try {
			// Create a new PDF document
			com.itextpdf.text.Document document = new com.itextpdf.text.Document(PageSize.A4);

			ByteArrayOutputStream outputStream = new ByteArrayOutputStream();
			PdfWriter.getInstance(document, outputStream);

			// Open the document
			document.open();

			//Add company name and logo
			String companyName = "Finlone";
			String logoPath = "C:\\Users\\Rohan Parande\\eclipse-workspace\\Project\\src\\main\\resources\\static\\img\\logo2.png";
			Image logo = Image.getInstance(logoPath);
			logo.setAlignment(Element.ALIGN_CENTER);
			logo.scaleToFit(120, 120); // Adjust the logo size as needed

			Paragraph companyParagraph = new Paragraph(companyName, FontFactory.getFont(FontFactory.HELVETICA_BOLD, 16));
			companyParagraph.setAlignment(Element.ALIGN_CENTER);
			companyParagraph.setSpacingAfter(20);

			LocalDate currentDate = LocalDate.now();

			// Add additional sentence
			String additionalSentence = "Loan Report. "+"Date: "+currentDate;
			Paragraph additionalSentenceParagraph = new Paragraph(additionalSentence, FontFactory.getFont(FontFactory.HELVETICA, 12));
			additionalSentenceParagraph.setAlignment(Element.ALIGN_CENTER);
			additionalSentenceParagraph.setSpacingAfter(20);

			document.add(logo);
			document.add(companyParagraph);
			document.add(additionalSentenceParagraph);


			// Create the table
			PdfPTable table = new PdfPTable(8); // Assuming 3 columns for demonstration

			// Increase table width
			table.setWidthPercentage(100); // Set table width to 100% of the page width

			// Add table headers
			table.addCell("Order ID");
			table.addCell("Name");
			table.addCell("Contact No");
			table.addCell("Email Address");
			table.addCell("Amount Received");
			table.addCell("Amount Paid");
			table.addCell("Received Date");
			table.addCell("Receipt No");

			// Add table rows
			for (TransactionsDetails transaction : allCustomers) {
				table.addCell(transaction.getOrderId());
				table.addCell(transaction.getName());
				table.addCell(transaction.getMobNo());
				table.addCell(transaction.getEmail());
				table.addCell(transaction.getAmount());
				table.addCell(transaction.getAmount_paid());
				table.addCell(transaction.getCreatedAtDate().toString());
				table.addCell(transaction.getReceipt());
			}

			// Add the table to the document
			document.add(table);

			// Close the document
			document.close();

			//Create a ByteArrayResource from the PDF content
			ByteArrayResource resource = new ByteArrayResource(outputStream.toByteArray());

			// Set the response headers for PDF download
			HttpHeaders headers = new HttpHeaders();
			headers.add(HttpHeaders.CONTENT_DISPOSITION, "attachment; filename=data.pdf");
			headers.add(HttpHeaders.CONTENT_TYPE, "application/pdf");

			// Return the response entity with the PDF content
			return ResponseEntity.ok()
					.headers(headers)
					.body(resource);
		} catch (Exception e) {
			e.printStackTrace();
			// Handle any exceptions
		}

		// If an error occurs, return an appropriate response
		return ResponseEntity.status(HttpStatus.INTERNAL_SERVER_ERROR).build();
	}


	@RequestMapping("/dashboardPages/emiCalculator")
	public String emiCalculator()
	{
		return "dashboardPages/emiCalculator";
	}

	@RequestMapping("/dashboardPages/downloadTransaction")
	public String downloadTransaction()
	{
		return "dashboardPages/downloadTransaction";
	}

	//verifyUser Mapping
	@GetMapping("/confirm-payment/{id}")
	public RedirectView goToVerifyPayment(@PathVariable int id, ModelMap m) {
		Optional<AddedApplicant> userForPayment = r1.findById(id);
		AddedApplicant paymentId = entityManager.find(AddedApplicant.class, id);
		String paymentUrl = "/payment/" + id;
		return new RedirectView(paymentUrl);
	}
}
