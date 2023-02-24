package com.admin.portal.repository;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.time.LocalDate;
import java.util.Date;
import java.util.List;

import org.apache.commons.lang3.StringUtils;
import org.hibernate.SessionFactory;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.admin.portal.dto.TransactionSearchDto;
import com.admin.portal.model.Payments;

@Repository
public class PaymentDaoImpl implements PaymentDao{

	private static final Logger logger = LoggerFactory.getLogger(PaymentDaoImpl.class);

	@Autowired
	private SessionFactory sessionFactory;
	
	@SuppressWarnings("unchecked")
	@Override
	public List<Payments> findAll(Payments payment) {
		logger.info("getting payments list based" );
		List<Payments> payments = null;
			payments=(List<Payments>) sessionFactory.getCurrentSession().createQuery("from Payments ORDER BY payId DESC").list();
		return payments;
	}


	@SuppressWarnings("unchecked")
	@Override
	public List<Payments> getAllTransactionsBasedOnSearch(TransactionSearchDto tnxSearch) throws ParseException {
		logger.info("getting payments list based" );
		List<Payments> payments = null;
		StringBuilder sbQuery= new StringBuilder("from Payments");
		SimpleDateFormat  df = new SimpleDateFormat("yyyy-MM-dd");
		if(StringUtils.isNotBlank(tnxSearch.getPayerName())) {
			
			String whereQuery = getPaymentsBasedOnSearch(tnxSearch);
			sbQuery.append(" WHERE ").append(whereQuery);
			
			logger.info("Final Query ===> : {}",sbQuery.toString());
			
			if(tnxSearch.getFromDate()!=null && tnxSearch.getToDate()!=null) {
				 Date d1 = df.parse(tnxSearch.getFromDate());
				 Date d2 = df.parse(tnxSearch.getToDate());
				 
				 java.sql.Date  fromDate = new java.sql.Date(d1.getTime());
				 java.sql.Date  toDate= new java.sql.Date(d2.getTime());
				 logger.info("fromDate ===> : {}",fromDate);
				 logger.info("toDate ===> : {}",toDate);
				 
				 payments=(List<Payments>) sessionFactory.getCurrentSession().createQuery(sbQuery.toString())
						.setParameter("payerName", tnxSearch.getPayerName())
						.setParameter("fromDate", fromDate)
						.setParameter("toDate", toDate).list();
			}else {
				payments=(List<Payments>) sessionFactory.getCurrentSession().createQuery(sbQuery.toString())
						.setParameter("payerName", tnxSearch.getPayerName()).list();
			}
			
		}else {
			String whereQuery = getPaymentsBasedOnSearch(tnxSearch);
			sbQuery.append(" WHERE ").append(whereQuery);
			logger.info("Final Query ===> : {}",sbQuery.toString());
			if(whereQuery.length() > 0){
				 Date d1 = df.parse(tnxSearch.getFromDate());
				 Date d2 = df.parse(tnxSearch.getToDate());
				 java.sql.Date  fromDate = new java.sql.Date(d1.getTime());
				 java.sql.Date  toDate= new java.sql.Date(d2.getTime());
				 logger.info("fromDate ===> : {}",fromDate);
				 logger.info("toDate ===> : {}",toDate);
				payments=(List<Payments>) sessionFactory.getCurrentSession().createQuery(sbQuery.toString())
						 .setParameter("fromDate", fromDate)
						.setParameter("toDate", toDate).list();
			}else {
				payments=(List<Payments>) sessionFactory.getCurrentSession().createQuery(sbQuery.toString()).list();
			}
			
		}
		return payments;
	}
	
	private String getPaymentsBasedOnSearch(TransactionSearchDto payment) {
		String whereClause = "";
		if(StringUtils.isNotBlank(payment.getPayerName())) {
			 if(whereClause.length() > 0){
			        whereClause += " AND ";
			    }
			 whereClause+=" payerName=:payerName ";
		}
		if(StringUtils.isNotBlank(payment.getFromDate()) && StringUtils.isNotBlank(payment.getToDate())) {
			if(whereClause.length() > 0){
		        whereClause += " AND ";
		    }
		 whereClause+=" createddate BETWEEN :fromDate AND :toDate ";
		}
		whereClause+=" ORDER BY payId DESC";
		logger.info("Where Condition : {}",whereClause.toString());
		return whereClause;
	}

	@Override
	public Integer savePayment(Payments payments) {
		Integer id= (Integer) sessionFactory.getCurrentSession().save(payments);
		logger.info("Transaction Inserted Success!");
		return id;
	}


	@SuppressWarnings("unchecked")
	@Override
	public List<Payments> getPaymentListByType(String paymentType) {
		List<Payments> payments=(List<Payments>) sessionFactory.getCurrentSession().createQuery("from Payments where paymentType=:paymentType")
				.setParameter("paymentType", paymentType).list();
		return payments;
	}



	@Override
	public void updatePayment(Payments payment) {
		sessionFactory.getCurrentSession()
		.createQuery("update Payments set paymentStatus=:paymentStatus,recentlyPaid=:recentlyPaid where paymentid=:paymentid")
		.setParameter("paymentStatus", payment.getPaymentStatus())
		.setParameter("paymentid", payment.getPayId())
		//.setParameter("recentlyPaid", payment.getRecentlyPaid())
		.executeUpdate();

	}



	
}
