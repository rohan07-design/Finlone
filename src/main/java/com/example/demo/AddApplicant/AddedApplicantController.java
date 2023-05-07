package com.example.demo.AddApplicant;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

@Controller
public class AddedApplicantController {

	@Autowired
	AddedApplicantService s1;
	
	@PostMapping("/addApplicant")
	public String setApplicantData(@ModelAttribute("a1") AddedApplicant a1) {
		s1.setApplicant(a1);
		return "notifications/addedApplicantNotify";
	}
}
