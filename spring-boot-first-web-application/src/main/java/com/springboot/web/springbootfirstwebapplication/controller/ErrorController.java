package com.springboot.web.springbootfirstwebapplication.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.servlet.ModelAndView;

@Controller("error")
public class ErrorController {
	
	@ExceptionHandler(Exception.class)
	private ModelAndView handleException
	(HttpServletRequest request,Exception ex) {
		ModelAndView mv=  new ModelAndView();
		mv.addObject("exception",ex.getStackTrace());
		mv.addObject("url",request.getRequestURL());
		mv.setViewName("error");
		return mv;
	}

}
