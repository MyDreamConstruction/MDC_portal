package com.admin.portal.model;

import java.time.LocalDate;
import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "payment_triggers")
public class PaymentTriggers {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "triggerid", unique = true, nullable = false)
	private Integer triggerid;

	@Column(name = "paymenttype")
	private String paymenttype;

	@Column(name = "startdate")
	private Date startdate;

	@Column(name = "next_paymentdate")
	private Date next_paymentdate;

	@Column(name = "trigger_count")
	private Integer trigger_count;

	@Column(name = "userid")
	private Integer userid;

	public PaymentTriggers() {

	}

	public PaymentTriggers(Integer triggerid, String paymenttype, Date startdate, Date next_paymentdate,
			Integer trigger_count, Integer userid) {
		super();
		this.triggerid = triggerid;
		this.paymenttype = paymenttype;
		this.startdate = startdate;
		this.next_paymentdate = next_paymentdate;
		this.trigger_count = trigger_count;
		this.userid = userid;
	}

	public Integer getTriggerid() {
		return triggerid;
	}

	public void setTriggerid(Integer triggerid) {
		this.triggerid = triggerid;
	}

	public String getPaymenttype() {
		return paymenttype;
	}

	public void setPaymenttype(String paymenttype) {
		this.paymenttype = paymenttype;
	}

	public Date getStartdate() {
		return startdate;
	}

	public void setStartdate(Date startdate) {
		this.startdate = startdate;
	}

	public Date getNext_paymentdate() {
		return next_paymentdate;
	}

	public void setNext_paymentdate(Date next_paymentdate) {
		this.next_paymentdate = next_paymentdate;
	}

	public Integer getTrigger_count() {
		return trigger_count;
	}

	public void setTrigger_count(Integer trigger_count) {
		this.trigger_count = trigger_count;
	}

	public Integer getUserid() {
		return userid;
	}

	public void setUserid(Integer userid) {
		this.userid = userid;
	}

	@Override
	public String toString() {
		return "PaymentTriggers [triggerid=" + triggerid + ", paymenttype=" + paymenttype + ", startdate=" + startdate
				+ ", next_paymentdate=" + next_paymentdate + ", trigger_count=" + trigger_count + ", userid=" + userid
				+ "]";
	}

}
