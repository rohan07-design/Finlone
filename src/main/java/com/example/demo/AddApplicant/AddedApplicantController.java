package com.example.demo.AddApplicant;

import java.io.BufferedOutputStream;
import java.io.FileOutputStream;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

@Controller
public class AddedApplicantController {

	@Autowired
	AddedApplicantRepo d1;
	
	@Autowired
	AddedApplicantService s1;
	
	@PostMapping("/addApplicant")
	public String setApplicantData(@RequestParam("typeOfApplicant") String typeOfApplicant,
			@RequestParam("name") String name,
			@RequestParam("email") String email,
			@RequestParam("address") String address,
			@RequestParam("typeOfProof") String typeOfProof,
			@RequestParam("city") String city,
			@RequestParam("number") String number,
			@RequestParam("status") String status,
			@RequestParam("loanAmount") int loanAmount,
			@RequestParam("proof") MultipartFile proof) throws Exception {
			
			AddedApplicant a1 = new AddedApplicant();
			a1.setTypeOfApplicant(typeOfApplicant);
			a1.setName(name);
			a1.setEmail(email);
			a1.setAddress(address);
			a1.setTypeOfProof(typeOfProof);
			a1.setCity(city);
			a1.setNumber(number);
			a1.setLoanAmount(loanAmount);
			a1.setStatus(status);
			
			
			String documentName = proof.getOriginalFilename();
///			documentName = documentName.substring(0, documentName.lastIndexOf(".")) + "_" + a1.getId() + documentName.substring(documentName.lastIndexOf("."));

//			System.out.println(path+" "+proof);
			byte[] b = proof.getBytes();
			
			// Generate the image name
	        String imageName = a1.getName() + "_" + a1.getNumber();
	        
	        String path = "C:\\Users\\Rohan Parande\\eclipse-workspace\\Project\\src\\main\\resources\\static\\documents\\"+ imageName+".jpeg";
			
	        Path  imageFilePath = Paths.get(imageName);
	        Files.write(imageFilePath, b);
			try {
				BufferedOutputStream fout = new BufferedOutputStream(new FileOutputStream(path));
				fout.write(b);
				fout.close();
			} catch(Exception e) {
				e.printStackTrace();
			}
			a1.setFilecontents(proof.getBytes());
			a1.setFileName(imageName);
			d1.save(a1);
			
		return "notifications/addedApplicantNotify";
	}
	
	@GetMapping("billing/{id}")
	public String getUserById(@PathVariable int id, ModelMap m) {
		AddedApplicant allData = s1.getUserId(id);
		AddedApplicant data = d1.findById(id)
		            .orElseThrow(() -> new IllegalArgumentException("Invalid data id"));
		
		m.addAttribute("command", data);
		return "verifyDocuments";
	}
}
