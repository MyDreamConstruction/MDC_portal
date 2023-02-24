package com.admin.portal.controller;

import java.io.IOException;
import java.security.Principal;
import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.admin.portal.model.ManageAccounts;
import com.admin.portal.model.Payments;
import com.admin.portal.model.Users;
import com.admin.portal.service.ManageAccountService;
import com.admin.portal.service.PaymentService;
import com.admin.portal.service.UserService;

@Controller
public class PaymentManagement {

	private static final Logger logger = LoggerFactory.getLogger(PaymentManagement.class);

	@Autowired
	UserService userService;
	
	@Autowired
	PaymentService paymentService;

	@Autowired
	ManageAccountService manageAccountService;
	
	@RequestMapping(value="/admin/transactions_list",method=RequestMethod.GET)
	public ModelAndView paymentsList(@RequestParam(required = false) String recentlyPaid,Principal principal){
		logger.info("paymentsList page");
		ModelAndView model = new ModelAndView("/admin/transactions");
		Users user=userService.findUserByUserName(principal.getName());
		List<Payments> payments = null;
		Payments payment = new Payments();
		if(user.getUserRole().equals("ROLE_ADMIN")) {
			payments = paymentService.getAllPayments(payment);
		}else {
			//payment.setUserid(user.getUserId());
			payments = paymentService.getAllPayments(payment);
		}
		model.addObject("payments",payments);
		return model;
	}
	
	@RequestMapping(value="/admin/transaction_create",method=RequestMethod.GET)
	public ModelAndView paymentDefine(Principal principal){
		logger.info("paymentDefine page");
		ModelAndView model = new ModelAndView("/admin/create_transactions");
		List<ManageAccounts> accounts = manageAccountService.geAccountsList();
		model.addObject("accounts",accounts);
		
		return model;
	}
	
	@RequestMapping(value="/admin/transaction_create",method=RequestMethod.POST)
	public String paymentDefineSubmit(@ModelAttribute Payments payments){
		logger.info("paymentDefineSubmit page");
		ModelAndView model = new ModelAndView("/admin/create_transactions");
		Integer id = paymentService.savePayment(payments);
			
		return "redirect:/admin/transactions_list";
	}
	
	@PostMapping("/admin/uploadfile")
	public ModelAndView saveUplocadedFileTrns(@RequestParam("file") MultipartFile excel) {
		logger.info("saveUplocadedFileTrns page");
		ModelAndView model = new ModelAndView("redirect:/admin/transactions_list");
		try {
			paymentService.saveUploadFileTransactions(excel);
			
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return model;
	}

	
}
