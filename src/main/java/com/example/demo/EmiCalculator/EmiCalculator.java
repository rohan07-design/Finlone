package com.example.demo.EmiCalculator;

import java.text.DecimalFormat;

public class EmiCalculator {
	private double loanAmount;
	private double years;
	private double interest;
	
	
	public double getLoanAmount() {
		DecimalFormat df = new DecimalFormat("#,##0.00");
		return  loanAmount;
	}
	public void setLoanAmount(double loanAmount) {
		this.loanAmount = loanAmount;
	}
	public double getYears() {
		return years;
	}
	public void setYears(double years) {
		this.years = years;
	}
	public double getInterest() {
		return interest;
	}
	public void setInterest(double interest) {
		this.interest = interest;
	}
	
	
}
