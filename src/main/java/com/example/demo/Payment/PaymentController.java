package com.example.demo.Payment;

import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Date;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletResponse;
import javax.swing.text.Document;

import org.apache.pdfbox.pdmodel.PDDocument;
import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.io.ByteArrayResource;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.example.demo.AddApplicant.AddedApplicant;
import com.example.demo.AddApplicant.AddedApplicantRepo;
import com.itextpdf.text.DocumentException;
import com.itextpdf.text.Element;
import com.itextpdf.text.FontFactory;
import com.itextpdf.text.Image;
import com.itextpdf.text.PageSize;
import com.itextpdf.text.Paragraph;
import com.itextpdf.text.pdf.PdfPCell;
import com.itextpdf.text.pdf.PdfPTable;
import com.itextpdf.text.pdf.PdfWriter;
import com.itextpdf.text.pdf.codec.Base64.OutputStream;

import com.razorpay.Order;
import com.razorpay.RazorpayClient;
@Controller
public class PaymentController {
	@Autowired
	AddedApplicantRepo r1;

	@Autowired
	PaymentService p1;

	@Autowired
	TrasnsactionRepo tr;

	List<TransactionsDetails> dataList;
	Date sDate,eDate;

	//get the form for payment
	@RequestMapping("/payment/{id}")
	public String PaymentForm(@PathVariable int id, ModelMap m) {
		AddedApplicant userForPayment = r1.getById(id);
		m.addAttribute("pay", userForPayment);
		return "payment";
	}

	//create the order for payment
	@PostMapping("/userpayment/{id}")
	@ResponseBody
	public String createOrder(@RequestBody Map<String, Object> data,@PathVariable int id) throws Exception {
		System.out.println("hello");
		System.out.println(data);
		int amt = Integer.parseInt(data.get("amount").toString());
		var client = new RazorpayClient("rzp_test_b2ljmnm5S5yKeE","SVvPUQOkSoIL9vRL3AUKXy2c");
		JSONObject options = new JSONObject();
		options.put("amount", amt*10);
		options.put("currency", "INR");
		options.put("receipt", "txn_123456");

		//get the data of the particular id
		AddedApplicant a1 = r1.getById(id);
		
		//create the object of the class
		TransactionsDetails t1 = new TransactionsDetails();
		
		//creating new order
		Order order = client.Orders.create(options);
		System.out.println(order);
		t1.setOrderId(order.get("id").toString()); //orderId
		t1.setAmount(order.get("amount").toString()); //amount
		t1.setName(a1.getName()); //name
		t1.setEmail(a1.getEmail()); //email
		t1.setMobNo(a1.getNumber()); //mobNo
		t1.setAmount_due(order.get("amount_due").toString()); //amount_due
		t1.setAmount_paid(order.get("amount_paid").toString()); //amount_paid
		t1.setReceipt(order.get("receipt").toString()); //receipt
		t1.setStatus(order.get("status").toString()); //status
		t1.setTypeOfApplicant(a1.getTypeOfApplicant());

		Date timestamp =  order.get("created_at");
		SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss.SSS");

		//Date newDate = dateFormat.parse(timestamp);		
		t1.setCreatedAtDate(timestamp);


		TransactionsDetails savedOrder = tr.save(t1);

		String orderData = order.toString();
		return orderData;
	}


	@PostMapping("/getAllTransactions")
	public String demo(@RequestParam("startDate") @DateTimeFormat(pattern = "yyyy-MM-dd") Date startDate,
			@RequestParam("endDate") @DateTimeFormat(pattern = "yyyy-MM-dd") Date endDate,
			ModelMap model) {
		System.out.println(startDate);
		sDate = startDate;
		eDate = endDate;
		dataList = tr.findByDateRange(startDate, endDate);
		System.out.println(dataList);
		model.addAttribute("dataList", dataList);
		return "/dashboardPages/downloadTransaction";
	}

	@RequestMapping(value="/download", method = {RequestMethod.GET, RequestMethod.POST}	)
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
	        
	        // Add additional sentence
	        String additionalSentence = "This Transacations are from "+sDate+" To "+eDate;
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
			for (TransactionsDetails transaction : dataList) {
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
}


