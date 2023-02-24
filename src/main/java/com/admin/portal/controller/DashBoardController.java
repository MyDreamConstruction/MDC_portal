package com.admin.portal.controller;

import java.security.Principal;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.admin.portal.dto.PaymentCalculations;
import com.admin.portal.service.PaymentService;

@Controller
@RequestMapping("/admin")
public class DashBoardController {

	private static final Logger logger = LoggerFactory.getLogger(DashBoardController.class);
	
	
	@Autowired
	PaymentService paymentService;
	
	@GetMapping("/dashboard")
	public ModelAndView dashboard(Principal principal) {
		logger.info("Welcome to dashboard!..");
		ModelAndView model = new ModelAndView("/admin/dashboard");
		
		PaymentCalculations paymentStatastics= paymentService.getPaymentStasticts();
		
		model.addObject("paymentStatastics",paymentStatastics);
		return model;
	}
}
