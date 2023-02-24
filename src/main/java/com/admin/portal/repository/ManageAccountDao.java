package com.admin.portal.repository;

import java.util.List;

import com.admin.portal.model.ManageAccounts;

public interface ManageAccountDao {

	ManageAccounts findByName(String name);

	Long saveManageAccounts(ManageAccounts accounts);

	List<ManageAccounts> findAllAccounts();

	ManageAccounts getAccountById(Long id);

}
