package com.admin.portal.dto;

import java.sql.Date;

import javax.persistence.Column;

public class UsersDto {

	private Integer userId;
	private String firstname;
	private String lastname;
	private String email;
	private String username;
	private String password;
	private String gender;

	private String city;
	private String state;
	private String country;
	private String zipcode;

	private String presentAddress;
	private String permanentAddress;
	private String mobileNo;
	private String alternateMobileNo;

	private String experience;
	private String platform;
	private String comment;

	private String birthday_date;
	private String birthday_month;
	private String birthday_year;

	private Date createddate;
	private boolean enabled;

	private String userCurrentStatus;
	private String jobJoiningDate;

	public UsersDto() {
	}

	public UsersDto(Integer userId, String firstname, String lastname, String email, String username, String password,
			String gender, String city, String state, String country, String zipcode, String presentAddress,
			String permanentAddress, String mobileNo, String alternateMobileNo, String experience, String platform,
			String comment, boolean enabled) {
		super();
		this.userId = userId;
		this.firstname = firstname;
		this.lastname = lastname;
		this.email = email;
		this.username = username;
		this.password = password;
		this.gender = gender;
		this.city = city;
		this.state = state;
		this.country = country;
		this.zipcode = zipcode;
		this.presentAddress = presentAddress;
		this.permanentAddress = permanentAddress;
		this.mobileNo = mobileNo;
		this.alternateMobileNo = alternateMobileNo;
		this.experience = experience;
		this.platform = platform;
		this.comment = comment;
		this.enabled = enabled;
	}

	public UsersDto(Integer userId, String firstname, String lastname, String email, String username, String password,
			String gender, String city, String state, String country, String zipcode, String presentAddress,
			String permanentAddress, String mobileNo, String alternateMobileNo, String experience, String platform,
			String comment, String birthday_date, String birthday_month, String birthday_year, Date createddate,
			boolean enabled) {
		super();
		this.userId = userId;
		this.firstname = firstname;
		this.lastname = lastname;
		this.email = email;
		this.username = username;
		this.password = password;
		this.gender = gender;
		this.city = city;
		this.state = state;
		this.country = country;
		this.zipcode = zipcode;
		this.presentAddress = presentAddress;
		this.permanentAddress = permanentAddress;
		this.mobileNo = mobileNo;
		this.alternateMobileNo = alternateMobileNo;
		this.experience = experience;
		this.platform = platform;
		this.comment = comment;
		this.birthday_date = birthday_date;
		this.birthday_month = birthday_month;
		this.birthday_year = birthday_year;
		this.createddate = createddate;
		this.enabled = enabled;
	}

	public Integer getUserId() {
		return userId;
	}

	public void setUserId(Integer userId) {
		this.userId = userId;
	}

	public String getFirstname() {
		return firstname;
	}

	public void setFirstname(String firstname) {
		this.firstname = firstname;
	}

	public String getLastname() {
		return lastname;
	}

	public void setLastname(String lastname) {
		this.lastname = lastname;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city;
	}

	public String getState() {
		return state;
	}

	public void setState(String state) {
		this.state = state;
	}

	public String getCountry() {
		return country;
	}

	public void setCountry(String country) {
		this.country = country;
	}

	public String getZipcode() {
		return zipcode;
	}

	public void setZipcode(String zipcode) {
		this.zipcode = zipcode;
	}

	public String getPresentAddress() {
		return presentAddress;
	}

	public void setPresentAddress(String presentAddress) {
		this.presentAddress = presentAddress;
	}

	public String getPermanentAddress() {
		return permanentAddress;
	}

	public void setPermanentAddress(String permanentAddress) {
		this.permanentAddress = permanentAddress;
	}

	public String getMobileNo() {
		return mobileNo;
	}

	public void setMobileNo(String mobileNo) {
		this.mobileNo = mobileNo;
	}

	public String getAlternateMobileNo() {
		return alternateMobileNo;
	}

	public void setAlternateMobileNo(String alternateMobileNo) {
		this.alternateMobileNo = alternateMobileNo;
	}

	public String getExperience() {
		return experience;
	}

	public void setExperience(String experience) {
		this.experience = experience;
	}

	public String getPlatform() {
		return platform;
	}

	public void setPlatform(String platform) {
		this.platform = platform;
	}

	public String getComment() {
		return comment;
	}

	public void setComment(String comment) {
		this.comment = comment;
	}

	public boolean isEnabled() {
		return enabled;
	}

	public void setEnabled(boolean enabled) {
		this.enabled = enabled;
	}

	public String getBirthday_date() {
		return birthday_date;
	}

	public void setBirthday_date(String birthday_date) {
		this.birthday_date = birthday_date;
	}

	public String getBirthday_month() {
		return birthday_month;
	}

	public void setBirthday_month(String birthday_month) {
		this.birthday_month = birthday_month;
	}

	public String getBirthday_year() {
		return birthday_year;
	}

	public void setBirthday_year(String birthday_year) {
		this.birthday_year = birthday_year;
	}

	public Date getCreateddate() {
		return createddate;
	}

	public void setCreateddate(Date createddate) {
		this.createddate = createddate;
	}

	public String getUserCurrentStatus() {
		return userCurrentStatus;
	}

	public void setUserCurrentStatus(String userCurrentStatus) {
		this.userCurrentStatus = userCurrentStatus;
	}

	public String getJobJoiningDate() {
		return jobJoiningDate;
	}

	public void setJobJoiningDate(String jobJoiningDate) {
		this.jobJoiningDate = jobJoiningDate;
	}

	@Override
	public String toString() {
		return "UsersDto [userId=" + userId + ", firstname=" + firstname + ", lastname=" + lastname + ", email=" + email
				+ ", username=" + username + ", password=" + password + ", gender=" + gender + ", city=" + city
				+ ", state=" + state + ", country=" + country + ", zipcode=" + zipcode + ", presentAddress="
				+ presentAddress + ", permanentAddress=" + permanentAddress + ", mobileNo=" + mobileNo
				+ ", alternateMobileNo=" + alternateMobileNo + ", experience=" + experience + ", platform=" + platform
				+ ", comment=" + comment + ", birthday_date=" + birthday_date + ", birthday_month=" + birthday_month
				+ ", birthday_year=" + birthday_year + ", createddate=" + createddate + ", enabled=" + enabled
				+ ", userCurrentStatus=" + userCurrentStatus + ", jobJoiningDate=" + jobJoiningDate + "]";
	}

}
