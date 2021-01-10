package com.example.demo.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.example.demo.model.Bids;

import com.example.demo.repository.BidsRepository;

@RestController
public class BidsController {

	@Autowired
	BidsRepository bidsRepository;
	@GetMapping("/bids")
	public ModelAndView bidsView()
	{
		return new ModelAndView("Bid","bids",new Bids());
	}
	
	@PostMapping("/BidsSubmit")
	public ModelAndView bidsSubmit( @ModelAttribute Bids bids)
	{
		bidsRepository.save(bids);
		Map<String,Object> model= new HashMap<String,Object>();
		model.put("bids",new Bids());
		model.put("message","Record Submitted");
		return new ModelAndView("Bid",model);
	}
	@GetMapping("/Bidding")
	public ModelAndView displayBidding()
	{
		List<Bids> B=bidsRepository.findAll();
		return new ModelAndView("Bidding","bids",B);
	}
	
}


