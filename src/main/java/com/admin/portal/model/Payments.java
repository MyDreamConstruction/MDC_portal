package com.admin.portal.model;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Transient;

@Entity
@Table(name = "transactions")
public class Payments {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "payId", unique = true, nullable = false)
	private Integer payId;

	@Column(name = "payerName")
	private String payerName;
	
	@Column(name = "paymentType")
	private String paymentType;

	@Column(name = "paymentDesc")
	private String paymentDesc;

	@Column(name = "amount")
	private double amount;

	@Column(name = "createdBy")
	private String createdBy;

	@Column(name = "paymentStatus")
	private String paymentStatus;

	@Column(name = "createddate")
	private Date createddate;

	@Column(name = "updateddate")
	private Date updateddate;

	@Transient
	private Long payerNameId;
	
	public Payments() {

	}

	public Payments(Integer payId, String paymentType, String payerName, String paymentDesc, double amount,
			String createdBy, String paymentStatus, Date createddate, Date updateddate) {
		super();
		this.payId = payId;
		this.paymentType = paymentType;
		this.payerName = payerName;
		this.paymentDesc = paymentDesc;
		this.amount = amount;
		this.createdBy = createdBy;
		this.paymentStatus = paymentStatus;
		this.createddate = createddate;
		this.updateddate = updateddate;
	}

	public Integer getPayId() {
		return payId;
	}

	public void setPayId(Integer payId) {
		this.payId = payId;
	}

	public String getPaymentType() {
		return paymentType;
	}

	public void setPaymentType(String paymentType) {
		this.paymentType = paymentType;
	}

	public String getPayerName() {
		return payerName;
	}

	public void setPayerName(String payerName) {
		this.payerName = payerName;
	}

	public String getPaymentDesc() {
		return paymentDesc;
	}

	public void setPaymentDesc(String paymentDesc) {
		this.paymentDesc = paymentDesc;
	}

	public double getAmount() {
		return amount;
	}

	public void setAmount(double amount) {
		this.amount = amount;
	}

	public String getCreatedBy() {
		return createdBy;
	}

	public void setCreatedBy(String createdBy) {
		this.createdBy = createdBy;
	}

	public String getPaymentStatus() {
		return paymentStatus;
	}

	public void setPaymentStatus(String paymentStatus) {
		this.paymentStatus = paymentStatus;
	}

	public Date getCreateddate() {
		return createddate;
	}

	public void setCreateddate(Date createddate) {
		this.createddate = createddate;
	}

	public Date getUpdateddate() {
		return updateddate;
	}

	public void setUpdateddate(Date updateddate) {
		this.updateddate = updateddate;
	}

	
	public Long getPayerNameId() {
		return payerNameId;
	}

	public void setPayerNameId(Long payerNameId) {
		this.payerNameId = payerNameId;
	}

	@Override
	public String toString() {
		return "Payments [payId=" + payId + ", paymentType=" + paymentType + ", payerName=" + payerName
				+ ", paymentDesc=" + paymentDesc + ", amount=" + amount + ", createdBy=" + createdBy
				+ ", paymentStatus=" + paymentStatus + ", createddate=" + createddate + ", updateddate=" + updateddate
				+ "]";
	}

	
}
