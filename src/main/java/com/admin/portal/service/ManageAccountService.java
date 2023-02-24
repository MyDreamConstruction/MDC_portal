package com.admin.portal.service;

import java.util.List;

import com.admin.portal.model.ManageAccounts;

public interface ManageAccountService {

	List<ManageAccounts> geAccountsList();

	ManageAccounts findByName(String name);

	Long saveAccount(ManageAccounts accounts);

}
