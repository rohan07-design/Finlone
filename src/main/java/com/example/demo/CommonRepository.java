package com.example.demo;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.example.demo.AddApplicant.AddedApplicant;

@Repository
public interface CommonRepository extends JpaRepository<AddedApplicant, Integer>{

}
