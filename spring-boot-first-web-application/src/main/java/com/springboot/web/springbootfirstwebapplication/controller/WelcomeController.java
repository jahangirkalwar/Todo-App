package com.springboot.web.springbootfirstwebapplication.controller;


import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;



@Controller
public class WelcomeController {
	
	@RequestMapping(value="/", method=RequestMethod.GET)
	public String showWelcomePage(ModelMap model) {
		model.put("name",getLoggedInUserName());
		return "welcome";
	}
	
	private String getLoggedInUserName() {
		Object principle =SecurityContextHolder.getContext().getAuthentication().getPrincipal();
		
		if(principle instanceof UserDetails) {
			return ((UserDetails) principle).getUsername();
		}
		
		return principle.toString();
	}
}
