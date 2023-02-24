package com.admin.portal.service;

import java.util.Date;
import java.util.List;


import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.admin.portal.model.ManageAccounts;
import com.admin.portal.repository.ManageAccountDao;

@Service
@Transactional
public class ManageAccountServiceImpl implements ManageAccountService {

	private static final Logger logger = LoggerFactory.getLogger(ManageAccountServiceImpl.class);

	@Autowired
	ManageAccountDao manageAccountDao;

	@Override
	public List<ManageAccounts> geAccountsList() {
		return manageAccountDao.findAllAccounts();
	}

	@Override
	public ManageAccounts findByName(String name) {
		return manageAccountDao.findByName(name);
	}

	@Override
	public Long saveAccount(ManageAccounts accounts) {

		accounts.setCreated(new Date());
		accounts.setStatus(true);
		logger.info("Account Details ---> " + accounts);
		return manageAccountDao.saveManageAccounts(accounts);
	}

}
