package com.example.demo.Payment;

import java.util.Map;
import java.util.Optional;

import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.example.demo.AddApplicant.AddedApplicant;
import com.example.demo.AddApplicant.AddedApplicantRepo;
import com.razorpay.*;
@Controller
public class PaymentController {
	@Autowired
	AddedApplicantRepo r1;
	
	//get the form for payment
	@RequestMapping(value="/payment/{id}")
	public String PaymentForm(@PathVariable int id, ModelMap m) {
		AddedApplicant userForPayment = r1.getById(id);
		m.addAttribute("pay", userForPayment);
		return "payment";
	}
	
	//create the order for payment
	@PostMapping("/userpayment/{id}")
	@ResponseBody
	public String createOrder(@RequestBody Map<String, Object> data) throws Exception {
		System.out.println("hello");
		System.out.println(data);
//		int amt = Integer.parseInt(data.get("amount").toString());
//		var client = new RazorpayClient("rzp_test_b2ljmnm5S5yKeE","SVvPUQOkSoIL9vRL3AUKXy2c");
//		JSONObject options = new JSONObject();
//		options.put("amount", amt);
//		options.put("currency", "INR");
//		options.put("receipt", "txn_123456");
//		
		
		//creating new order
//		Order order = client.Orders.create(options);
//		System.out.println(order);
		return null;
	}
}
