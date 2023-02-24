package com.admin.portal.repository;

import java.util.List;

import org.hibernate.SessionFactory;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.admin.portal.model.ManageAccounts;
import com.admin.portal.model.Users;

@Repository
public class ManageAccountDaoImpl implements ManageAccountDao{

	private static final Logger logger = LoggerFactory.getLogger(ManageAccountDaoImpl.class);

	@Autowired
	private SessionFactory sessionFactory;
	
	
	@SuppressWarnings("unchecked")
	@Override
	public List<ManageAccounts> findAllAccounts() {
		List<ManageAccounts> accounts=(List<ManageAccounts>) sessionFactory.getCurrentSession().createQuery("from ManageAccounts").list();
		return accounts;
	}

	
	@Override
	public ManageAccounts findByName(String name) {
		ManageAccounts accounts = (ManageAccounts) sessionFactory.getCurrentSession().createQuery("from ManageAccounts where name=:name ORDER BY id DESC")
				.setParameter("name", name).uniqueResult();
		return accounts;
	}

	@Override
	public Long saveManageAccounts(ManageAccounts accounts) {
		return (Long) sessionFactory.getCurrentSession().save(accounts);
	}
	
	@Override
	public ManageAccounts getAccountById(Long id) {
		if (logger.isTraceEnabled())
			logger.info("ManageAccountDaoImpl === getAccountById == end");

		ManageAccounts accounts = (ManageAccounts) sessionFactory.getCurrentSession().createQuery("from ManageAccounts where id=:id")
				.setParameter("id", id).uniqueResult();

		if (logger.isTraceEnabled())
			logger.info("ManageAccountDaoImpl === getAccountById == end");

		return accounts;
	}
}
