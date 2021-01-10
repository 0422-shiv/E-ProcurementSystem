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

import com.example.demo.model.Queries;
import com.example.demo.repository.QueryRepository;

@RestController
public class QueryController {
	@Autowired
	QueryRepository queryRepository ; 
	@GetMapping("/Queries")
	public ModelAndView queriesView()
	{	
		//List queries=queryRepository.findAll();
		return new ModelAndView("Queries","Queries",new Queries());
	}
	@PostMapping("/querySubmit")
	public ModelAndView submitQuery(@ModelAttribute Queries q)
	{
		queryRepository.save(q);
		
		Map<String,Object> model=new HashMap<String,Object>();
		model.put("Queries", new Queries());
		model.put("message", "Query submitted  Sucessfully");
		return new ModelAndView("Queries",model);
	}
	
	@GetMapping("/displayAllQuery")
	public ModelAndView displayAll()
	{
		List Queries=queryRepository.findAll();
		return new ModelAndView("DisplayQueries","Queries",Queries);
	}
	@GetMapping("/answerQuery")
	public ModelAndView answerQuery(HttpServletRequest req)
	{
		Queries Q=queryRepository.getOne(Integer.parseInt(req.getParameter("qid")));
	//	int ab=Integer.parseInt(req.getParameter("id"));
		return new ModelAndView("UpdateQuery","Queries",Q);
	}
	@PostMapping("/answerSubmit")
	public ModelAndView answerSubmit(HttpServletRequest req,@ModelAttribute Queries q)
	{
		
		 
		 	 
		 	 queryRepository.save(q);
		 	
		
		return new ModelAndView("redirect:/displayAllQuery");		
	}
	@GetMapping("/ViewQuery")
	public ModelAndView viewAllQuery()
	{
		List<Queries> Queries=queryRepository.findAll();
		return new ModelAndView("ViewQuery","Queries",Queries);
	}
}
