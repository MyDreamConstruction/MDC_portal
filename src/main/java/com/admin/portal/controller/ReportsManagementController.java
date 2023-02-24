package com.admin.portal.controller;

import java.text.DecimalFormat;
import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.admin.portal.dto.TransactionSearchDto;
import com.admin.portal.model.Payments;
import com.admin.portal.service.PaymentService;
import com.admin.portal.service.UserService;

@Controller
@RequestMapping("/admin")
public class ReportsManagementController {

	private static final Logger logger = LoggerFactory.getLogger(ReportsManagementController.class);

	@Autowired
	UserService userService;

	@Autowired
	PaymentService paymentService;
	
	 private static final DecimalFormat df = new DecimalFormat("0.00");
	 
	@GetMapping("/reports")
	public ModelAndView reports(@ModelAttribute TransactionSearchDto tnxSearch) {
		logger.info("Welcome to reports!..");
		ModelAndView model = new ModelAndView("/admin/reports");
		List<Payments> payments = paymentService.getAllTransactionsBasedOnSearch(tnxSearch);
		model.addObject("payments",payments);
		return model;
	}
	
	@GetMapping("/trx/reports")
	public ModelAndView tnxReports(@ModelAttribute TransactionSearchDto tnxSearch) {
		logger.info("Welcome to tnxReports!..");
		ModelAndView model = new ModelAndView("/admin/reports");
		List<Payments> payments = paymentService.getAllTransactionsBasedOnSearch(tnxSearch);
		
		double totalCR = getTotalCalculation(payments,"CR");
		double totalDR = getTotalCalculation(payments,"DR");
		double total_marks = totalCR + totalDR;
		
		float percentageCR =  (float)((totalCR / total_marks) * 100);
		float percentageDR =  (float)((totalDR / total_marks) * 100);
		
		model.addObject("payments",payments);
		model.addObject("tnxSearch",tnxSearch);
		model.addObject("totalCR",totalCR);
		model.addObject("totalDR",totalDR);
		model.addObject("percentageCR",df.format(percentageCR));
		model.addObject("percentageDR",df.format(percentageDR));
		return model;
	}

	private double getTotalCalculation(List<Payments> payments, String trxType) {
		logger.info("IN::getTotalCalculation Based on = {}",trxType);
		double totalCalAmt = payments.stream().filter(p ->p.getPaymentType().equalsIgnoreCase(trxType)).mapToDouble(amt -> amt.getAmount()).sum();
		logger.info("====> getTotalCalculation::{}", totalCalAmt);
		return totalCalAmt;
	}
}
