package com.example.demo.AddApplicant;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface AddedApplicantRepo extends JpaRepository<AddedApplicant, Integer> {

}
