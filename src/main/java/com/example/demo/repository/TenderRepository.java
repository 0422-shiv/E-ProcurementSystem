package com.example.demo.repository;



import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.example.demo.model.Tender;



public interface TenderRepository extends JpaRepository<Tender,Integer>{

	@Query("FROM Tender WHERE t_no= ?1")
	List<Tender> findTenderByID(int tid);


	

	
}