package com.admin.portal.repository;

import java.util.List;

import com.admin.portal.dto.UsersDto;
import com.admin.portal.model.Authorities;
import com.admin.portal.model.UploadFile;
import com.admin.portal.model.Users;

public interface UserDao {

	public Users findUserByUserName(String email);

	public Users getUserById(Integer userId);

	//public Captcha getCaptcha();

	public Integer saveUser(Users info);

	//public Users checkDynamicAccessCode(UsersDto userDto);

	public void updateUserInfo(UsersDto userDto);

	public Users getUserByUsernamePassword(UsersDto usersDto);

	public void updateDynamicCode(String dynamicCode, UsersDto users);

	public List<Users> findAll();

	public void saveAuthorities(Authorities authorities);

	List<Users> findAllUsers();

	public void deleteUserById(Integer userId);

	public void updateUserById(Users info);

	public void saveUserDocuments(UploadFile file);

	public UploadFile getUploadFileById(Integer userId);

	//public List<UsersDto> getCustomersList(Principal principal);

}