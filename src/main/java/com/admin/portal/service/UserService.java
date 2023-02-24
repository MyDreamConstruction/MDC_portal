package com.admin.portal.service;

import java.io.IOException;
import java.text.ParseException;
import java.util.List;

import com.admin.portal.dto.UserDocuments;
import com.admin.portal.dto.UsersDto;
import com.admin.portal.model.UploadFile;
import com.admin.portal.model.Users;

public interface UserService {

	Users findUserByUserName(String email);
	Users getUserById(Integer userId);
	//public Captcha getCaptcha();
	Users getUserByUsernamePassword(UsersDto usersDto);
	Integer saveUser(UsersDto users);
//	Users checkDynamicAccessCode(UsersDto userDto);
	void updateUserInfo(UsersDto userDto);
	void updateDynamicCode(String dynamicCode, UsersDto users);
	//List<UsersDto> getCustomersList(Principal principal);
	List<Users> geUsersList();
	List<Users> findAllUsers();
	void updateUserById(UsersDto user) throws ParseException;
	void deleteUserById(Integer userId);
	void saveUserDocuments(UserDocuments userDocuments) throws IOException;
	UploadFile getUploadFileById(Integer userId);
}