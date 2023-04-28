package com.example.demo;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class AllController {

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
	 public String loanDetails()
	 {
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
