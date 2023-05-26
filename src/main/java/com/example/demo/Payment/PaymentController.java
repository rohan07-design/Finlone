package com.example.demo.Payment;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.time.Instant;
import java.time.LocalDate;
import java.util.Date;
import java.util.List;
import java.util.Map;
import java.util.Optional;

import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
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
	
	@Autowired
	PaymentService p1;
	
	@Autowired
	TrasnsactionRepo tr;
	
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
		
//		//get the data of the particular id
		AddedApplicant a1 = r1.getById(id);
//		
//		//create the object of the class
		TransactionsDetails t1 = new TransactionsDetails();
		
//		
//		
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
		List<TransactionsDetails> dataList = tr.findByDateRange(startDate, endDate);
		System.out.println(dataList);
        model.addAttribute("dataList", dataList);
		return "/dashboardPages/downloadTransaction";
	}
}
