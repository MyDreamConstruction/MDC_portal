package com.admin.portal.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class HomeController {

	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);

	@GetMapping("/")
	public ModelAndView home() {
		logger.info("home page ....");
		ModelAndView model = new ModelAndView("home");
		return model;
	}

	
	@GetMapping(value="/login")
	public ModelAndView login() {
		logger.info("Welcome to login page!..");
		ModelAndView model = new ModelAndView("login");

		return model;
	}
}
