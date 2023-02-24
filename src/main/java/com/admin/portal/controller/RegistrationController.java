package com.admin.portal.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.admin.portal.dto.UsersDto;
import com.admin.portal.service.UserService;

@Controller
public class RegistrationController {

	private static final Logger logger = LoggerFactory.getLogger(RegistrationController.class);
	
	@Autowired
	UserService userService;
	
	@GetMapping(value = "/registration")
	public ModelAndView registration() {
		logger.info("registration !..");
		ModelAndView model = new ModelAndView("registration");

		return model;
	}
	
	@RequestMapping(value="/registration",method=RequestMethod.POST)
	public String registrationSubmit(@ModelAttribute UsersDto user, final RedirectAttributes redirectAttributess) {
		logger.info("registrationSubmit !..");
		try {
			Integer userId = userService.saveUser(user);
			user.setUserId(userId);
			redirectAttributess.addFlashAttribute("success","Account Registrated Successfully!");
			redirectAttributess.addFlashAttribute("user", user);
		}catch (Exception e) {
			e.printStackTrace();
		}
		return "redirect:/registration_success";
	}

	@GetMapping(value = "/registration_success")
	public ModelAndView registrationSuccess(Model model) {
		logger.info("registration success!..");
		ModelAndView mView = new ModelAndView("registration_success");
		String success = (String)model.asMap().get("success");
		UsersDto user = (UsersDto)model.asMap().get("user");

		mView.addObject("success",success);
		mView.addObject("user",user);
		return mView;
	}
}
