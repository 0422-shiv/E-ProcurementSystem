package com.example.demo.controller;



import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import org.springframework.web.bind.annotation.RestController;

import org.springframework.web.servlet.ModelAndView;


import com.example.demo.model.Bids;
import com.example.demo.model.Tender;

import com.example.demo.repository.TenderRepository;


@RestController
public class TenderController {
	
	@Autowired
	TenderRepository tenderRepository;
	
	@GetMapping("/tender")
	public ModelAndView viewTender()
	{
		return new ModelAndView("PublishTender","tender",new Tender());
	}
	@PostMapping("/tenderSubmit")
	public ModelAndView submitTender(@ModelAttribute Tender t)
	{
		tenderRepository.save(t);
		
		Map<String,Object> model=new HashMap<String,Object>();
		model.put("tender", new Tender());
		model.put("message", "Tender Published  Sucessfully ");
		return new ModelAndView("PublishTender",model);
	}
	@GetMapping("/displayAllTenders")
	public ModelAndView displayAll()
	{
		List tenders=tenderRepository.findAll();
		return new ModelAndView("DisplayTenders","ten",tenders);
	}
	
	@GetMapping("/updateTender")
	public ModelAndView updateTender(HttpServletRequest req)
	{
		Tender T=tenderRepository.getOne(Integer.parseInt(req.getParameter("t_no")));
	
		return new ModelAndView("updateTender","ten",T);
	}
	@PostMapping("/TenderUpdateDelete")
	public ModelAndView TenderEditDelete(HttpServletRequest req,@ModelAttribute Tender ten)
	{
		 if(req.getParameter("bton").equals("Edit"))
		 {
		 	 
		 	 tenderRepository.save(ten);
		 	}
		 else if(req.getParameter("bton").equals("Delete"))
		 { 
			 
			
			
			 tenderRepository.deleteById(ten.getT_no());
			
		 	}
		return new ModelAndView("redirect:/displayAllTenders");		
	}
	
	
	
	@GetMapping("/Activetender")
	public ModelAndView display()
	{
		List tenders=tenderRepository.findAll();
		return new ModelAndView("ActiveTenders","ten",tenders);
	}
	
}
