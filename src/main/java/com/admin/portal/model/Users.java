package com.admin.portal.model;

import java.util.Date;
import java.util.HashSet;
import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name = "users")
public class Users implements java.io.Serializable {

	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "userid", unique = true, nullable = false)
	private Integer userId;

	@Column(name = "firstname")
	private String firstname;

	@Column(name = "lastname")
	private String lastname;

	@Column(name = "email", unique = true, length = 100)
	private String email;

	@Column(name = "username")
	private String username;

	@Column(name = "password")
	private String password;

	@Column(name = "gender")
	private String gender;

	@Column(name = "city")
	private String city;

	@Column(name = "state")
	private String state;

	@Column(name = "country")
	private String country;

	@Column(name = "zipcode")
	private String zipcode;

	@Column(name = "presentAddress")
	private String presentAddress;

	@Column(name = "permanentAddress")
	private String permanentAddress;

	@Column(name = "mobileNo")
	private String mobileNo;

	@Column(name = "alternateMobileNo")
	private String alternateMobileNo;

	@Column(name = "experience")
	private String experience;

	@Column(name = "platform")
	private String platform;

	@Column(name = "comment")
	private String comment;

	@Column(name = "enabled")
	private boolean enabled;

	@Column(name = "dateofbirth")
	private String dateofbirth;

	@Column(name = "createddate")
	private Date createddate;
	
	@Column(name = "userRole")
	private String userRole;
	
	@Column(name = "userCurrentStatus")
	private String userCurrentStatus;
	
	@Column(name = "jobJoiningDate")
	private Date jobJoiningDate;
	
	
	@OneToMany(cascade = CascadeType.ALL,fetch = FetchType.LAZY, mappedBy = "user")
	private Set<Authorities> authorities = new HashSet<>();
	
	public Users() {
	}

	public Users(Integer userId, String firstname, String lastname, String email, String username, String password,
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

	public Users(Integer userId, String firstname, String lastname, String email, String username, String password,
			String gender, String city, String state, String country, String zipcode, String presentAddress,
			String permanentAddress, String mobileNo, String alternateMobileNo, String experience, String platform,
			String comment, boolean enabled, String dateofbirth, Date createddate) {
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
		this.dateofbirth = dateofbirth;
		this.createddate = createddate;
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

	public Date getCreateddate() {
		return createddate;
	}

	public void setCreateddate(Date createddate) {
		this.createddate = createddate;
	}

	public String getDateofbirth() {
		return dateofbirth;
	}

	public void setDateofbirth(String dateofbirth) {
		this.dateofbirth = dateofbirth;
	}

	public Set<Authorities> getAuthorities() {
		return authorities;
	}

	public void setAuthorities(Set<Authorities> authorities) {
		this.authorities = authorities;
	}
	
	
	public String getUserRole() {
		return userRole;
	}

	public void setUserRole(String userRole) {
		this.userRole = userRole;
	}
	
	public String getUserCurrentStatus() {
		return userCurrentStatus;
	}

	public void setUserCurrentStatus(String userCurrentStatus) {
		this.userCurrentStatus = userCurrentStatus;
	}

	public Date getJobJoiningDate() {
		return jobJoiningDate;
	}

	public void setJobJoiningDate(Date jobJoiningDate) {
		this.jobJoiningDate = jobJoiningDate;
	}

	@Override
	public String toString() {
		return "Users [userId=" + userId + ", firstname=" + firstname + ", lastname=" + lastname + ", email=" + email
				+ ", username=" + username + ", password=" + password + ", gender=" + gender + ", city=" + city
				+ ", state=" + state + ", country=" + country + ", zipcode=" + zipcode + ", presentAddress="
				+ presentAddress + ", permanentAddress=" + permanentAddress + ", mobileNo=" + mobileNo
				+ ", alternateMobileNo=" + alternateMobileNo + ", experience=" + experience + ", platform=" + platform
				+ ", comment=" + comment + ", enabled=" + enabled + ", dateofbirth=" + dateofbirth + ", createddate="
				+ createddate + ", userRole=" + userRole + ", authorities=" + authorities + "]";
	}

}
