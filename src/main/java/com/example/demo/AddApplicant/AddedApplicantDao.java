package com.example.demo.AddApplicant;

import org.springframework.stereotype.Service;

@Service
public class AddedApplicantDao implements AddedApplicantService {

	@Override
	public void setApplicant(AddedApplicant a1) {
		System.out.println(a1.getTypeOfProof()+" "+a1.getStatus());
	}



}
