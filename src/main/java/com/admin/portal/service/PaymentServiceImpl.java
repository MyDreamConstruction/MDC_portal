package com.admin.portal.service;

import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.List;
import java.util.Objects;

import org.apache.poi.xssf.usermodel.XSSFRow;
import org.apache.poi.xssf.usermodel.XSSFSheet;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.multipart.MultipartFile;

import com.admin.portal.dto.PaymentCalculations;
import com.admin.portal.dto.TransactionSearchDto;
import com.admin.portal.model.ManageAccounts;
import com.admin.portal.model.PaymentTypes;
import com.admin.portal.model.Payments;
import com.admin.portal.model.Users;
import com.admin.portal.repository.ManageAccountDao;
import com.admin.portal.repository.PaymentDao;
import com.admin.portal.repository.UserDao;

@Service
@Transactional
public class PaymentServiceImpl implements PaymentService {

	private static final Logger logger = LoggerFactory.getLogger(PaymentServiceImpl.class);

	@Autowired
	PaymentDao paymentDao;

	@Autowired
	UserDao userDao;

	@Autowired
	ManageAccountDao manageAccountDao;

	@Override
	public List<Payments> getAllPayments(Payments payment) {
		return paymentDao.findAll(payment);
	}

	@Override
	public Integer savePayment(Payments payments) {
		payments.setCreateddate(new Date());
		payments.setUpdateddate(new Date());
		ManageAccounts accounts = manageAccountDao.getAccountById(payments.getPayerNameId());
		payments.setPayerName(accounts.getName());
		return paymentDao.savePayment(payments);
	}

	@Override
	public void saveUploadFileTransactions(MultipartFile excel) throws IOException {
		logger.info("Inside saveUploadFileTransactions");
		XSSFWorkbook workbook = new XSSFWorkbook(excel.getInputStream());
		XSSFSheet worksheet = workbook.getSheetAt(0);

		for (int i = 1; i < worksheet.getPhysicalNumberOfRows(); i++) {

			XSSFRow row = worksheet.getRow(i);
			Payments payments = new Payments();
//			System.out.println((int) row.getCell(0).getNumericCellValue());
//			System.out.println(row.getCell(1).getStringCellValue());
			String payerName = row.getCell(0).getStringCellValue();
			String paymentType = row.getCell(1).getStringCellValue();
			double amount = (double) row.getCell(2).getNumericCellValue();
			String paymentDesc = row.getCell(3).getStringCellValue();
			String createdBy = row.getCell(4).getStringCellValue();
			logger.info("PayerName = {}", payerName);
			logger.info("PaymentType = {}", paymentType);
			logger.info("Amount = {}", amount);
			logger.info("paymentDesc = {}", paymentDesc);
			logger.info("createdBy = {}", createdBy);

			ManageAccounts accounts = manageAccountDao.findByName(payerName);
			if (Objects.isNull(accounts)) {
				accounts = new ManageAccounts();
				accounts.setName(payerName);
				accounts.setCreated(new Date());
				accounts.setStatus(true);
				manageAccountDao.saveManageAccounts(accounts);
			}

			payments.setPayerName(payerName);
			payments.setPaymentType(paymentType);
			payments.setAmount(amount);
			payments.setPaymentDesc(paymentDesc);
			payments.setCreatedBy(createdBy);
			payments.setCreateddate(new Date());
			payments.setUpdateddate(new Date());

			paymentDao.savePayment(payments);
			logger.info("Transaction Inserted Success!");
		}

	}

	@Override
	public PaymentCalculations getPaymentStasticts() {

		PaymentCalculations statastics = new PaymentCalculations();
		List<Users> users = userDao.findAll();
		// Total credited amount
		List<Payments> payments = paymentDao.getPaymentListByType("CR");
		double totalCRAmt = calculateTotalAmt(payments);

		// Total Debited amount
		List<Payments> paymentsExp = paymentDao.getPaymentListByType("DR");
		double totalExpensesAmt = calculateTotalAmt(paymentsExp);

//		List<PaymentTypes> paymentTypes = paymentDao.getAllPaymentTypes();
//
//		double totalTrainingExpectedAmt = paymentTypes.stream()
//				.filter(type -> type.getPaymenttype().equalsIgnoreCase("TRAINING"))
//				.mapToDouble(pay -> pay.getFixedValue()).sum();
//		double totalSupportExpectedAmt = 0.0;
//		for (PaymentTypes type : paymentTypes) {
//			totalSupportExpectedAmt += getTotalSupportAmount(type);
//		}

//		double totalTrainingReceivedAmt = payments.stream().filter( type -> type.getPaymentName().equalsIgnoreCase("TRAINING")).mapToDouble( pay -> pay.getPrice()).sum();
//		double totalSupportReceivedAmt = payments.stream().filter( type -> type.getPaymentName().equalsIgnoreCase("SUPPORT")).mapToDouble( pay -> pay.getPrice()).sum();
//		
//		double totalClearedAmt = paymentsExp.stream().filter( type -> type.getPaymentStatus().equalsIgnoreCase("CLEARED")).mapToDouble( pay -> pay.getPrice()).sum();

		statastics.setUsersCount(users.size());
		statastics.setTotalCRAmt(totalCRAmt);
		statastics.setTotalExpensesAmt(totalExpensesAmt);
//		statastics.setTotalTrainingExpectedAmt(totalTrainingExpectedAmt);
//		statastics.setTotalSupportExpectedAmt(totalSupportExpectedAmt);
//		statastics.setTotalTrainingReceivedAmt(totalTrainingReceivedAmt);
//		statastics.setTotalSupportReceivedAmt(totalSupportReceivedAmt);
//		statastics.setClearedDRAmt(totalClearedAmt);

		return statastics;
	}

	private double calculateTotalAmt(List<Payments> totalAmt) {
		logger.info("IN::calculateTotalAmt");
		double totalCalAmt = totalAmt.stream().mapToDouble(amt -> amt.getAmount()).sum();
		logger.info("====> calculateTotalAmt::{}", totalCalAmt);
		return totalCalAmt;
	}

	public static double getTotalSupportAmount(PaymentTypes paymentTypes) {
		logger.info("getTotalAmount() from PaymentTypes ::{}", paymentTypes);
		double totalAmount = 0.0;
		if (paymentTypes.getPaymenttype().equalsIgnoreCase("SUPPORT")) {
			Integer percent = Integer.valueOf(paymentTypes.getPercentageValue().replace("%", ""));
			totalAmount += (paymentTypes.getPercentageTotal() * percent) / 100;
		}
		logger.info("Calculatig Total amount ::{}", totalAmount);
		return totalAmount;
	}

	@Override
	public List<Payments> getAllTransactionsBasedOnSearch(TransactionSearchDto tnxSearch) {

		addFilterConditions(tnxSearch);
		try {
			return paymentDao.getAllTransactionsBasedOnSearch(tnxSearch);
		} catch (ParseException e) {
			e.printStackTrace();
		}
		return null;
	}

	private void addFilterConditions(TransactionSearchDto tnxSearch) {
		SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
		String fromDate = null;
		String toDate = null;
		Calendar calendar = Calendar.getInstance();
		if(tnxSearch.getDt_type()!=null) {
			switch (tnxSearch.getDt_type()) {
	
			case "cwk":
					logger.info("************* Searching filter current week ************");
					calendar.setFirstDayOfWeek(Calendar.MONDAY);
					Date currentWeekStart = calendar.getTime();
		
					calendar.add(Calendar.DATE, 6); // add 6 days after Monday
					Date currentWeekEnd = calendar.getTime();
		
					logger.info("Week Start Date: {}" , currentWeekStart);
					logger.info("Week End Date: {}" , currentWeekEnd);
					fromDate = dateFormat.format(currentWeekStart);
					toDate = dateFormat.format(currentWeekEnd);
					break;
				
			case "lwk":
					logger.info("************* Searching filter Last week ************");
					int i = calendar.get(Calendar.DAY_OF_WEEK) - calendar.getFirstDayOfWeek();
					calendar.add(Calendar.DATE, -i - 7);
					Date start = calendar.getTime();
					calendar.add(Calendar.DATE, 6);
					Date end = calendar.getTime();
					logger.info(start + " - " + end);
					fromDate = dateFormat.format(start);
					toDate = dateFormat.format(end);
					break;
					
			case "cm":
				    logger.info("************* Searching filter Current Month ************");
					calendar.add(Calendar.MONTH, 0);
					calendar.set(Calendar.DATE, calendar.getActualMinimum(Calendar.DAY_OF_MONTH));
					Date currentMonthFirstDay = calendar.getTime();
					calendar.set(Calendar.DATE, calendar.getActualMaximum(Calendar.DAY_OF_MONTH));
					Date currentMonthLastDay = calendar.getTime();
					logger.info("currentMonthFirstDay = "+currentMonthFirstDay);
					logger.info("currentMonthLastDay = "+currentMonthLastDay);
					fromDate = dateFormat.format(currentMonthFirstDay);
					toDate = dateFormat.format(currentMonthLastDay);
					break;
					
			case "lm":
				    logger.info("************* Searching filter Last Month ************");
					// add -1 month to current month
					calendar.add(Calendar.MONTH, -1);
					// set DATE to 1, so first date of previous month
					calendar.set(Calendar.DATE, 1);
					Date firstDateOfPreviousMonth = calendar.getTime();
					// set actual maximum date of previous month
					calendar.set(Calendar.DATE,     calendar.getActualMaximum(Calendar.DAY_OF_MONTH));
					//read it
					Date lastDateOfPreviousMonth = calendar.getTime();
				
					logger.info("firstDateOfPreviousMonth = "+firstDateOfPreviousMonth);
					logger.info("lastDateOfPreviousMonth = "+lastDateOfPreviousMonth);
					fromDate = dateFormat.format(firstDateOfPreviousMonth);
					toDate = dateFormat.format(lastDateOfPreviousMonth);
				break;
			default:
				logger.info("Switch case not matching...");
				break;
			}
		
		}
		
		logger.info("fromDate :::"+fromDate+" ,toDate ::: "+toDate);
		
		tnxSearch.setFromDate(fromDate);
		tnxSearch.setToDate(toDate);
		
	}

}
