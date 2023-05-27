package com.example.demo;

import java.util.List;

import com.example.demo.AddApplicant.AddedApplicant;
import com.example.demo.Payment.TransactionsDetails;

public interface CommonService {

	List<AddedApplicant> getAllApplicants();

	List<TransactionsDetails> getTransactionApplicant();
	
}
