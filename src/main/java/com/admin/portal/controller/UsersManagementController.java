package com.admin.portal.controller;

import java.text.ParseException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.admin.portal.dto.UsersDto;
import com.admin.portal.model.UploadFile;
import com.admin.portal.model.Users;
import com.admin.portal.service.PaymentService;
import com.admin.portal.service.UserService;

@Controller
@RequestMapping("/admin")
public class UsersManagementController extends CommonController {

	private static final Logger logger = LoggerFactory.getLogger(UsersManagementController.class);
	
	@Autowired
	UserService userService;
	
	@Autowired
	PaymentService paymentService;
	
	@GetMapping("/users_list")
	public ModelAndView usersList() {
		logger.info("Welcome to usersList!..");
		ModelAndView model = new ModelAndView("/admin/users");
		List<Users> users = userService.geUsersList();
		model.addObject("users",users);
		return model;
	}
	
	@GetMapping("/user/{userId}")
	public ModelAndView getUserById(@PathVariable Integer userId) {
		logger.info("Welcome to getUserById!..");
		ModelAndView model = new ModelAndView("/admin/user_details");
		Users user = userService.getUserById(userId);
		String[] s= user.getPlatform().split(",");
		List<String> skills = new ArrayList<>(Arrays.asList(s));
		
		UploadFile file = userService.getUploadFileById(userId);
		model.addObject("file",file);
		model.addObject("user",user);
		model.addObject("skills",skills);
		return model;
	}
	
//	@GetMapping("/user_invoice/{userId}")
//	public ModelAndView getUserInvoice(@PathVariable Integer userId) throws ParseException {
//		logger.info("Welcome to getUserInvoice!..");
//		ModelAndView model = new ModelAndView("/admin/user_invoice");
//		Users user = userService.getUserById(userId);
//		
//		List<Payments> trainingList = paymentService.getAllPaymentsByPaymentName("TRAINING", userId);
//		List<Payments> supportList = paymentService.getAllPaymentsByPaymentName("SUPPORT",userId);
//		if(supportList.size() == 0 || Objects.isNull(supportList)) {
//			supportList= paymentService.getAllPaymentsByPaymentName("JOB_SUPPORT",userId);
//		}
//		
//		List<PaymentTypes> trainingPaymentType = paymentService.getPaymentTypeByUserId("TRAINING",userId);
//		List<PaymentTypes> supportPaymentType = paymentService.getPaymentTypeByUserId("SUPPORT",userId);
//		
//		if(supportPaymentType.size() == 0 || Objects.isNull(supportPaymentType)) {
//			supportPaymentType = paymentService.getPaymentTypeByUserId("JOB_SUPPORT",userId);
//		}
//		
//		PaymentTriggers paymentTriggers = paymentService.getPaymentTriggerDetail(userId);
//		boolean flag = false;
//		if(Objects.nonNull(paymentTriggers)) {
//			 SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
//			 Date dt1 = paymentTriggers.getNext_paymentdate();
//	         Date dt2 = new Date();
//	         String d1 = sdf.format(dt1);
//	         String d2 = sdf.format(dt2);
//	         Date date1 = sdf.parse(d1);
//	         Date date2 = sdf.parse(d2);
//	         if (date1.after(date2)) {
//	        	 flag =true;
//	         }
//		}
//        
//		model.addObject("trainingList",trainingList);
//		model.addObject("supportList",supportList);
//		model.addObject("trainingTotalAmt",getTotalAmount(trainingPaymentType));
//		model.addObject("supportTotalAmt",getTotalAmount(supportPaymentType));
//		model.addObject("user",user);
//		model.addObject("paymentTriggers",paymentTriggers);
//		model.addObject("flag",flag);
//		
//		return model;
//	}
	
	
	@GetMapping("/edit/{userId}")
	public ModelAndView editUser(@PathVariable Integer userId) {
		logger.info("Welcome to editUser!..");
		ModelAndView model = new ModelAndView("/admin/edit_user");
		Users user = userService.getUserById(userId);
		model.addObject("user",user);
		return model;
	}
	
	@PostMapping("/edit/submit")
	public ModelAndView editUserSubmit(@ModelAttribute UsersDto user) {
		logger.info("Welcome to editUserSubmit!..");
		ModelAndView model = new ModelAndView("redirect:/admin/user/"+user.getUserId());
		try {
			userService.updateUserById(user);
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return model;
	}
	
	@GetMapping("/delete/{userId}")
	public ModelAndView deleteUser(@PathVariable Integer userId) {
		logger.info("Welcome to deleteUser!..");
		ModelAndView model = new ModelAndView("redirect:/admin/users_list");
		userService.deleteUserById(userId);
		return model;
	}
}
