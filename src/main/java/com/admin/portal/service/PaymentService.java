package com.admin.portal.service;

import java.io.IOException;
import java.util.List;

import org.springframework.web.multipart.MultipartFile;

import com.admin.portal.dto.PaymentCalculations;
import com.admin.portal.dto.TransactionSearchDto;
import com.admin.portal.model.Payments;

public interface PaymentService {

	List<Payments> getAllPayments(Payments payment);

	Integer savePayment(Payments payments);

	PaymentCalculations getPaymentStasticts();

	void saveUploadFileTransactions(MultipartFile excel) throws IOException;

	List<Payments> getAllTransactionsBasedOnSearch(TransactionSearchDto tnxSearch);

}
