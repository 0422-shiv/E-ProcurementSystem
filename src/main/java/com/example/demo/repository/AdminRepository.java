package com.example.demo.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.example.demo.model.Admin;



public interface AdminRepository extends JpaRepository<Admin,Integer>{

	@Query("FROM Admin WHERE adminid=?1 and password=?2")
	List<Admin> checkLogIn(int adminid,String password);
}
