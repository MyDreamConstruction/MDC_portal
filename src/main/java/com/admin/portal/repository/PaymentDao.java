package com.admin.portal.repository;

import java.text.ParseException;
import java.util.List;

import com.admin.portal.dto.TransactionSearchDto;
import com.admin.portal.model.Payments;

public interface PaymentDao {

	List<Payments> findAll(Payments payment);

	Integer savePayment(Payments payments);

	void updatePayment(Payments payment);

	List<Payments> getPaymentListByType(String type);

	List<Payments> getAllTransactionsBasedOnSearch(TransactionSearchDto tnxSearch) throws ParseException;

}
