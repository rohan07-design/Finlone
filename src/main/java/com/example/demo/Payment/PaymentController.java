package com.example.demo.Payment;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class PaymentController {
	
	//get the form for payment
	@RequestMapping("/payment")
	public String PaymentForm() {
		return "payment";
	}
}
