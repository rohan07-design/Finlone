package com.example.demo.AddApplicant;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Lob;

@Entity
public class AddedApplicant {
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private int id;
	private String typeOfApplicant;
	private String name;
	private String email;
	private String address;
	private String typeOfProof;
	private String city;
	private String number;
	private String status;
	private int loanAmount;
	
	public int getLoanAmount() {
		return loanAmount;
	}
	public void setLoanAmount(int loanAmount) {
		this.loanAmount = loanAmount;
	}
	@Lob
	private byte[] filecontents;
	
	public byte[] getFilecontents() {
		return filecontents;
	}
	public void setFilecontents(byte[] filecontents) {
		this.filecontents = filecontents;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getTypeOfApplicant() {
		return typeOfApplicant;
	}
	public void setTypeOfApplicant(String typeOfApplicant) {
		this.typeOfApplicant = typeOfApplicant;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getTypeOfProof() {
		return typeOfProof;
	}
	public void setTypeOfProof(String typeOfProof) {
		this.typeOfProof = typeOfProof;
	}
	
	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
	}
	public String getNumber() {
		return number;
	}
	public void setNumber(String number) {
		this.number = number;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	
	
}
