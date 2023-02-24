package com.admin.portal.controller;

import java.util.List;
import java.util.Objects;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.admin.portal.dto.UsersDto;
import com.admin.portal.model.ManageAccounts;
import com.admin.portal.service.ManageAccountService;

@Controller
@RequestMapping("/admin")
public class ManageAccountsController {

	private static final Logger logger = LoggerFactory.getLogger(ManageAccountsController.class);
	
	@Autowired
	ManageAccountService manageAccountService;
	
	@GetMapping("/manage_accounts")
	public ModelAndView accountsList(@RequestParam(required = false) String success) {
		logger.info("Welcome to accountsList!..");
		ModelAndView model = new ModelAndView("/admin/manage_accounts");
		List<ManageAccounts> accounts = manageAccountService.geAccountsList();
		model.addObject("accounts",accounts);
		return model;
	}
	
	@RequestMapping(value="/manage_accounts",method=RequestMethod.POST)
	public String manageAcountSubmit(@ModelAttribute ManageAccounts accounts, final RedirectAttributes redirectAttributess) {
		logger.info("manageAcountSubmit !..");
		try {
			ManageAccounts account = manageAccountService.findByName(accounts.getName());
			if(Objects.isNull(account)) {
				Long id = manageAccountService.saveAccount(accounts);
				logger.info("Account Created Successfully! Id : {}",id);
				return "redirect:/admin/manage_accounts";
			}
			
			redirectAttributess.addFlashAttribute("success","Account Name Already Exist!");
			redirectAttributess.addFlashAttribute("accoutName", accounts.getName());
		}catch (Exception e) {
			e.printStackTrace();
		}
		return "redirect:/admin/manage_accounts";
	}

}
