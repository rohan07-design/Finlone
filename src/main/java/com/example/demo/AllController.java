package com.example.demo;

import java.time.LocalDate;
import java.util.Calendar;
import java.util.Date;
import java.util.List;
import java.util.Optional;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.view.RedirectView;

import com.example.demo.AddApplicant.AddedApplicant;
import com.example.demo.AddApplicant.AddedApplicantRepo;
import com.example.demo.Payment.PaymentService;
import com.example.demo.Payment.TransactionsDetails;
import com.example.demo.Payment.TrasnsactionRepo;

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
	 public String customerList()
	 {
		  return "dashboardPages/customerList";
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
