package com.example.demo.Payment;

import java.time.LocalDate;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.razorpay.Order;

@Service
public class PaymentTransactionDao implements PaymentService{

	@Autowired
	TrasnsactionRepo pr;

	@Override
	public void saveAllData(Order order) {
		// TODO Auto-generated method stub
//		pr.saveAll(order);
	}


}
