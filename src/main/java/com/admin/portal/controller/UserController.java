package com.admin.portal.controller;

import java.security.Principal;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.admin.portal.model.Users;
import com.admin.portal.service.UserService;

@Controller
@RequestMapping("/user")
public class UserController {

	private static final Logger logger = LoggerFactory.getLogger(DashBoardController.class);
	
	@Autowired
	UserService userService;
	
	@GetMapping("/dashboard")
	public ModelAndView userDashboard(Principal principal) {
		logger.info("Welcome to userDashboard!..");
		ModelAndView model = new ModelAndView("/admin/user_details");
		Users user = userService.findUserByUserName(principal.getName());
		model.addObject("user",user);
		return model;
	}
}
