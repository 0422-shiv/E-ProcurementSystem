package com.example.demo.controller;

import java.util.HashMap;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.example.demo.model.Bids;
import com.example.demo.model.Supplier;

import com.example.demo.repository.SupplierRepository;

@RestController
public class SupplierController {
	
	@Autowired
	SupplierRepository supplierRepository;
	
	
	
	
	@GetMapping("/LogInPage")
	public ModelAndView landingPage()
	{
		return new ModelAndView("LogInPage","sup",new Supplier());
	}
	@GetMapping("/Logout")
	public ModelAndView logout(HttpServletRequest req)
	{ HttpSession ses=req.getSession();
	     ses.invalidate();
		return new ModelAndView("LogInPage","sup",new Supplier());
	}
	
	@PostMapping("/CheckLogIn")
	public ModelAndView  checkLogIn(@ModelAttribute Supplier sup,HttpServletRequest req)
	{
		
		List<Supplier> data=supplierRepository.checkLogIn(sup.getSupplierid(),sup.getPwd());
		if(data.size()==0)
		{
			Map<String,Object>model=new HashMap<String,Object>();
			model.put("sup", sup);
			model.put("Message","Invalid UserId/Password");
			return new ModelAndView("LogInPage",model);
		}
		else
		{
			HttpSession ses=req.getSession();
			ses.setAttribute("SUPSESSION", data.get(0));
			return new ModelAndView("redirect:/Homepage");
		}
		
	}
	
	
	
	
	@GetMapping("/Supplier")
	public ModelAndView supplierView()
	{
		return new ModelAndView("Supplier","sup",new Supplier());
	}
	
	@PostMapping("/submit")
	public ModelAndView supplierSubmit( @ModelAttribute Supplier sup)
	{
		supplierRepository.save(sup);
		Map<String,Object> model= new HashMap<String,Object>();
		model.put("sup",new Supplier());
		model.put("message","Record Submitted");
		return new ModelAndView("Supplier",model);
	}
	

	@GetMapping("/Homepage")
	public ModelAndView homePage(HttpServletRequest req)
	{ HttpSession ses=req.getSession();
		/* E=(Employee)ses.getAttribute("EMPSESSION");
        System.out.print("xxxxxxxxxxxxxxxxxxxxxxxx"+E.getEmployeename());
		*/
		return new ModelAndView("Homepage");
	}
	
	@GetMapping("/contact")
	public ModelAndView contactPage()
	{  
		return new ModelAndView("contact");
	}
	
	@GetMapping("/about")
	public ModelAndView aboutPage()
	{  
		return new ModelAndView("About");
	}
	
	
}

