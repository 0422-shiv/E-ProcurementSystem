package com.example.demo.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.example.demo.model.Admin;
import com.example.demo.repository.AdminRepository;
@RestController
public class AdminController {
	
	
	@Autowired
	AdminRepository adminRepository;
	
	
	@GetMapping("/Admin")
	public ModelAndView adminLogin()
	{
		return new ModelAndView("AdminLogIn","admin",new Admin());
	}
	@PostMapping("/CheckAdminLogIn")
	public ModelAndView checkAdmin(@ModelAttribute Admin admin,HttpServletRequest req)
		{
			List<Admin> data=adminRepository.checkLogIn(admin.getAdminid(), admin.getPassword());
			if(data.size()==0)
			{
				Map<String,Object>model=new HashMap<String,Object>();
				model.put("admin", admin);
				model.put("Message","Invalid UserId/Password");
				return new ModelAndView("AdminLogIn",model);
			}
			else
			{
				HttpSession ses=req.getSession();
				ses.setAttribute("ADMINSESSION", data.get(0));
				return new ModelAndView("AdminHomePage");
			}
		}
	
	@GetMapping("/AdminLogout")
	public ModelAndView adminLogout(HttpServletRequest req)
	{ HttpSession ses=req.getSession();
	     ses.invalidate();
		return new ModelAndView("AdminLogIn","admin",new Admin());
	}
	
	@GetMapping("/AdminHomePage")
	public ModelAndView loginAdmin(HttpServletRequest req)
	{
		return new ModelAndView("AdminHomePage");
	}

}
