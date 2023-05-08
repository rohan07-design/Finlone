package com.example.demo;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.demo.AddApplicant.AddedApplicant;

@Service
public class CommonDao implements CommonService {
	
	@Autowired
	CommonRepository cRepo;

	@Override
	public List<AddedApplicant> getAllApplicants() {
		return cRepo.findAll();
	}

}
