package com.example.demo.Payment;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface TrasnsactionRepo extends JpaRepository<TransactionsDetails, Integer> {

}
