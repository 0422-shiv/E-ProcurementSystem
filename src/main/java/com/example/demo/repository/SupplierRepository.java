package com.example.demo.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.example.demo.model.Supplier;


public interface SupplierRepository extends JpaRepository<Supplier,Integer>
{
	@Query("FROM Supplier WHERE supplierid=?1 and pwd=?2")
	List<Supplier> checkLogIn(int Sid,String pwd);
 	
	
}