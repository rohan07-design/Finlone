package com.example.demo;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.example.demo.AddApplicant.AddedApplicant;
import com.example.demo.AddApplicant.AddedApplicantRepo;

@Controller
public class AllController {
	
	@Autowired
	CommonService c1;
	
	@Autowired
	AddedApplicantRepo r1;
	

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
	 public String pendingAmount()
	 {
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
	 
}
