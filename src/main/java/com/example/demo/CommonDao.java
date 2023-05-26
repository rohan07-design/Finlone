package com.example.demo;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.demo.AddApplicant.AddedApplicant;
import com.example.demo.Payment.TransactionsDetails;
import com.example.demo.Payment.TrasnsactionRepo;

@Service
public class CommonDao implements CommonService {
	
	@Autowired
	CommonRepository cRepo;

	@Autowired
	TrasnsactionRepo tRepo;
	
	@Override
	public List<AddedApplicant> getAllApplicants() {
		return cRepo.findAll();
	}

	@Override
	public List<TransactionsDetails> getTransactionApplicant() {
		// TODO Auto-generated method stub
		return tRepo.findAll();
	}

}
