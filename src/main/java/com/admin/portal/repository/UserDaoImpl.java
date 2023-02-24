package com.admin.portal.repository;

import java.util.List;

import org.hibernate.SessionFactory;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.admin.portal.dto.UsersDto;
import com.admin.portal.model.Authorities;
import com.admin.portal.model.UploadFile;
import com.admin.portal.model.Users;

@Repository
public class UserDaoImpl implements UserDao {

	private static final Logger logger = LoggerFactory.getLogger(UserDaoImpl.class);

	@Autowired
	private SessionFactory sessionFactory;

	@Override
	public Users findUserByUserName(String email) {
		Users user = (Users) sessionFactory.getCurrentSession().createQuery("from Users where userName=:userName ORDER BY userId DESC")
				.setParameter("userName", email).uniqueResult();
		return user;
	}

	@Override
	public Integer saveUser(Users info) {
		return (Integer) sessionFactory.getCurrentSession().save(info);
	}

	@Override
	public void updateDynamicCode(String dynamicCode, UsersDto users) {
		if (logger.isTraceEnabled())
			logger.info("UserDaoImpl === updateDynamicCode == end");

		sessionFactory.getCurrentSession()
				.createQuery("update Users set dynamic_access_code=:dynamic_access_code where mobile_no=:mobile_no")
				.setParameter("dynamic_access_code", dynamicCode).setParameter("mobile_no", users.getMobileNo())
				.executeUpdate();

		if (logger.isTraceEnabled())
			logger.info("UserDaoImpl === updateDynamicCode == end");
	}

	@Override
	public Users getUserById(Integer userId) {
		if (logger.isTraceEnabled())
			logger.info("UserDaoImpl === getUserById == end");

		Users user = (Users) sessionFactory.getCurrentSession().createQuery("from Users where userId=:userId")
				.setParameter("userId", userId).uniqueResult();

		if (logger.isTraceEnabled())
			logger.info("UserDaoImpl === getUserById == end");

		return user;
	}


	@Override
	public void updateUserInfo(UsersDto userDto) {
		if (logger.isTraceEnabled())
			logger.info("UserDaoImpl === updateUsers == start ");

		sessionFactory.getCurrentSession()
				.createQuery("update Users set dynamic_status=:dynamic_status , enabled=:enabled where userId=:userId")
				.setParameter("dynamic_status", true).setParameter("enabled", true)
				.setParameter("userId", userDto.getUserId()).executeUpdate();

		if (logger.isTraceEnabled())
			logger.info("UserDaoImpl === updateUsers == end ");
	}

	@Override
	public Users getUserByUsernamePassword(UsersDto usersDto) {
		if (logger.isTraceEnabled())
			logger.info("UserDaoImpl === findUserByUserName == end");

		Users user = (Users) sessionFactory.getCurrentSession()
				.createQuery("from Users where mobile_no=:mobile_no and password=:password ")
				.setParameter("mobile_no", usersDto.getMobileNo()).setParameter("password", usersDto.getPassword())
				.uniqueResult();

		if (logger.isTraceEnabled())
			logger.info("UserDaoImpl === findUserByUserName == end");
		return user;
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<Users> findAll() {
		List<Users> users=(List<Users>) sessionFactory.getCurrentSession().createQuery("from Users where email!=:email")
				.setParameter("email", "admin@gmail.com").list();
		return users;
	}
	
	@SuppressWarnings("unchecked")
	@Override
	public List<Users> findAllUsers() {
		List<Users> users=(List<Users>) sessionFactory.getCurrentSession().createQuery("from Users").list();
		return users;
	}

	@Override
	public void saveAuthorities(Authorities authorities) {
		sessionFactory.getCurrentSession().save(authorities);
	}

	@Override
	public void deleteUserById(Integer userId) {
		sessionFactory.getCurrentSession().createQuery("delete from Users where userId=:userId").setParameter("userId", userId).executeUpdate();
	}

	@Override
	public void updateUserById(Users info) {
		sessionFactory.getCurrentSession()
		.createQuery("update Users set presentAddress=:presentAddress , platform=:platform, comment=:comment,alternateMobileNo=:alternateMobileNo,userCurrentStatus=:userCurrentStatus,jobJoiningDate=:jobJoiningDate where userId=:userId")
		.setParameter("presentAddress", info.getPresentAddress()).setParameter("platform", info.getPlatform())
		.setParameter("comment", info.getComment()).setParameter("alternateMobileNo", info.getAlternateMobileNo())
		.setParameter("userCurrentStatus", info.getUserCurrentStatus()).setParameter("jobJoiningDate", info.getJobJoiningDate()).setParameter("userId", info.getUserId()).executeUpdate();
	}

	@Override
	public void saveUserDocuments(UploadFile file) {
		sessionFactory.getCurrentSession().save(file);
	}

	@Override
	public UploadFile getUploadFileById(Integer userId) {
		UploadFile uploadFile = (UploadFile) sessionFactory.getCurrentSession().createQuery("from UploadFile where userId=:userId")
				.setParameter("userId", userId).uniqueResult();
		return uploadFile;
	}


}
