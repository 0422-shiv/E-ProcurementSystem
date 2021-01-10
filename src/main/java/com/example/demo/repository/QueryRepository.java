package com.example.demo.repository;

import java.util.List;



import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.example.demo.model.Queries;





public interface QueryRepository extends JpaRepository<Queries,Integer>{
	@Query("FROM Queries WHERE qid= ?1")
	List<Queries> findQueryByID(int qid);
}
