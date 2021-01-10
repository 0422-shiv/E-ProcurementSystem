package com.example.demo.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.example.demo.model.Bids;


public interface BidsRepository extends JpaRepository<Bids,Integer>{

	@Query("FROM Bids WHERE t= ?1")
	List<Bids> findBidsByID(int t);
}
