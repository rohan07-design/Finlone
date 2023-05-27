package com.example.demo.Payment;

import java.time.LocalDate;
import java.util.Date;
import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.example.demo.AddApplicant.AddedApplicant;

@Repository
public interface TrasnsactionRepo extends JpaRepository<TransactionsDetails, Integer> {

	@Query("SELECT d FROM TransactionsDetails d WHERE d.createdAtDate BETWEEN :startDate AND :endDate")
    List<TransactionsDetails> findByDateRange(Date startDate, Date endDate);

	List<TransactionsDetails> findByTypeOfApplicant(String typeOfApplicant);
}
