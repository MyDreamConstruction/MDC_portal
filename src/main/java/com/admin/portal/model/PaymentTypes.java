package com.admin.portal.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Transient;

@Entity
@Table(name = "payment_types")
public class PaymentTypes {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "typeId", unique = true, nullable = false)
	private Integer typeId;

	@Column(name = "paymenttype")
	private String paymenttype;

	@Column(name = "placeholder")
	private String placeholder;

	@Column(name = "fixedValue")
	private double fixedValue;

	@Column(name = "percentageValue")
	private String percentageValue;

	@Column(name = "percentageTotal")
	private double percentageTotal;
	
	@Column(name = "userid")
	private Integer userid;
	
	@Transient
	private String firstname;
	
	@Transient
	private String lastname;
	
	public PaymentTypes() {

	}

	public PaymentTypes(Integer typeId, String paymenttype, String placeholder, double fixedValue,
			String percentageValue,double percentageTotal,Integer userid) {
		super();
		this.typeId = typeId;
		this.paymenttype = paymenttype;
		this.placeholder = placeholder;
		this.fixedValue = fixedValue;
		this.percentageValue = percentageValue;
		this.percentageTotal = percentageTotal;
		this.userid = userid;
	}

	public Integer getTypeId() {
		return typeId;
	}

	public void setTypeId(Integer typeId) {
		this.typeId = typeId;
	}

	public String getPaymenttype() {
		return paymenttype;
	}

	public void setPaymenttype(String paymenttype) {
		this.paymenttype = paymenttype;
	}

	public String getPlaceholder() {
		return placeholder;
	}

	public void setPlaceholder(String placeholder) {
		this.placeholder = placeholder;
	}

	public double getFixedValue() {
		return fixedValue;
	}

	public void setFixedValue(double fixedValue) {
		this.fixedValue = fixedValue;
	}

	public String getPercentageValue() {
		return percentageValue;
	}

	public void setPercentageValue(String percentageValue) {
		this.percentageValue = percentageValue;
	}
	

	public double getPercentageTotal() {
		return percentageTotal;
	}

	public void setPercentageTotal(double percentageTotal) {
		this.percentageTotal = percentageTotal;
	}

	
	public Integer getUserid() {
		return userid;
	}

	public void setUserid(Integer userid) {
		this.userid = userid;
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

	@Override
	public String toString() {
		return "PaymentTypes [typeId=" + typeId + ", paymenttype=" + paymenttype + ", placeholder=" + placeholder
				+ ", fixedValue=" + fixedValue + ", percentageValue=" + percentageValue + ", percentageTotal="
				+ percentageTotal + ", userid=" + userid + "]";
	}

}
