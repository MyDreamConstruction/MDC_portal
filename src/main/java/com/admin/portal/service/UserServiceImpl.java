package com.admin.portal.service;

import java.io.IOException;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.admin.portal.controller.CommonController;
import com.admin.portal.dto.UserDocuments;
import com.admin.portal.dto.UsersDto;
import com.admin.portal.model.Authorities;
import com.admin.portal.model.UploadFile;
import com.admin.portal.model.Users;
import com.admin.portal.repository.UserDao;

@Service
@Transactional
public class UserServiceImpl extends CommonController implements UserService {

	@Autowired
	private  UserDao userDao;
	
	@Autowired
	PaymentService paymentService;
	
	@Autowired
	private BCryptPasswordEncoder bCryptPasswordEncoder;
	
	@Override
	public Users findUserByUserName(String email) {
		return userDao.findUserByUserName(email);
	}

	@Override
	public Users getUserById(Integer userId) {
		return userDao.getUserById(userId);
	}

	@Override
	public Integer saveUser(UsersDto users) {
		
		Users info=new Users();
		info.setFirstname(users.getFirstname());
		info.setLastname(users.getLastname());
		info.setMobileNo(users.getMobileNo());
		info.setGender(users.getGender());
		StringBuffer  br =new StringBuffer();
		br.append(users.getBirthday_year()).append("-");
		br.append(users.getBirthday_month()).append("-");
		br.append(users.getBirthday_date());
		info.setDateofbirth(br.toString());
		info.setEmail(users.getEmail());
		String encodedPassword = bCryptPasswordEncoder.encode(users.getMobileNo());
		info.setPassword(encodedPassword);
		info.setUsername(users.getEmail());
		info.setCountry(users.getCountry());
		info.setState(users.getState());
		info.setCity(users.getCity());
		info.setAlternateMobileNo(users.getAlternateMobileNo());
		info.setZipcode(users.getZipcode());
		info.setPresentAddress(users.getPresentAddress());
		info.setPermanentAddress(users.getPermanentAddress());
		info.setExperience(users.getExperience());
		info.setPlatform(users.getPlatform());
		info.setComment(users.getComment());
		info.setEnabled(true);
		info.setCreateddate(new Date());
		info.setUserRole("ROLE_ADMIN");
		info.setUserCurrentStatus("A");
		//Setting Role_USER
		Set<Authorities> authorities = new HashSet<>();
		Authorities role= new Authorities();
		role.setAuthority("ROLE_ADMIN");
		authorities.add(role);
		info.setAuthorities(authorities);
		
		Integer userid = userDao.saveUser(info);
		info.setUserId(userid);
		role.setUser(info);
		userDao.saveAuthorities(role);
		return userid;
	}

	@Override
	public void updateDynamicCode(String dynamicCode,UsersDto users) {
		userDao.updateDynamicCode(dynamicCode,users);		
	}

	
//	@Override
//	public Users checkDynamicAccessCode(UsersDto userDto) {
//		return userDao.checkDynamicAccessCode(userDto);
//	}

	@Override
	public void updateUserInfo(UsersDto userDto) {
		userDao.updateUserInfo(userDto);
	}

	@Override
	public Users getUserByUsernamePassword(UsersDto usersDto) {
		return userDao.getUserByUsernamePassword(usersDto);
	}

	@Override
	public List<Users> geUsersList() {
		return userDao.findAll();
	}

	@Override
	public List<Users> findAllUsers() {
		return userDao.findAllUsers();
	}
//	@Override
//	public List<UsersDto> getCustomersList(Principal principal) {
//		return userDao.getCustomersList(principal);
//	}

	@Override
	public void updateUserById(UsersDto users) throws ParseException {
		Users info=new Users();
		info.setUserId(users.getUserId());
		info.setPresentAddress(users.getPresentAddress());
		info.setExperience(users.getExperience());
		info.setPlatform(users.getPlatform());
		info.setComment(users.getComment());
		info.setAlternateMobileNo(users.getAlternateMobileNo());
		DateFormat format = new SimpleDateFormat("dd-MM-yyyy");
		Date date = format.parse(users.getJobJoiningDate());
		info.setJobJoiningDate(date);
		info.setUserCurrentStatus(users.getUserCurrentStatus());
		
		userDao.updateUserById(info);
		
	}

	@Override
	public void deleteUserById(Integer userId) {
		userDao.deleteUserById(userId);
	}

	@Override
	public void saveUserDocuments(UserDocuments userDocuments) throws IOException {
		UploadFile file =  new UploadFile();
		
		file.setCreatedBy("ADMIN");
		file.setCreateddate(new Date());
		file.setUserid(userDocuments.getUserid());
		file.setFileName(userDocuments.getDocument().getOriginalFilename());
		file.setData(userDocuments.getDocument().getBytes());
		
		userDao.saveUserDocuments(file);
	}

	@Override
	public UploadFile getUploadFileById(Integer userId) {
		return userDao.getUploadFileById(userId);
	}

}
