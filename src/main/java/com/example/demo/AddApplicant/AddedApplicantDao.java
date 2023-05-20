package com.example.demo.AddApplicant;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class AddedApplicantDao implements AddedApplicantService {
	
	@Autowired
	AddedApplicantRepo repo;

	@Override
	public void setApplicant(AddedApplicant a1) {
		System.out.println(a1.getTypeOfProof()+" "+a1.getStatus());
	}

	@Override
	public AddedApplicant getUserId(int id) {
		return repo.getById(id);
	}

//	@Override
//	public AddedApplicant getDocuments(int id) {
//		return repo.findById(id);
//	}



}
