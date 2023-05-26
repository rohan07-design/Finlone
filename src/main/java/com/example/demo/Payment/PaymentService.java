package com.example.demo.Payment;

import java.time.LocalDate;
import java.util.List;

import com.razorpay.Order;

public interface PaymentService {

	void saveAllData(Order order);

}
