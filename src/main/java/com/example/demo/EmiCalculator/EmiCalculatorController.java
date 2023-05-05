package com.example.demo.EmiCalculator;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class EmiCalculatorController {
	
		
	@RequestMapping(value="dashboardPages/emiCalculator", method=RequestMethod.POST)
	public String getEmiInfo(@ModelAttribute("emp") EmiCalculator emp, Model m) {
		double principalAmount = emp.getLoanAmount();
		
		double monthlyInterest = emp.getInterest()/12/100;
		double months = emp.getYears()*12;
		double emi = (principalAmount*monthlyInterest*Math.pow(1+monthlyInterest,months))/(Math.pow(1+monthlyInterest,months)-1);
		
		double interestAmount = emi * months - principalAmount;
		double totalAmount = (emi * months)+100;
		
		m.addAttribute("principalAmount",principalAmount);
		m.addAttribute("totalInterset",interestAmount);
		m.addAttribute("totalAmount",totalAmount);
		m.addAttribute("emi",emi);
		
		return "dashboardPages/emiCalculator"; 
	}
}
