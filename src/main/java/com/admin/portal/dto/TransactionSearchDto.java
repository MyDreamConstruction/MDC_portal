package com.admin.portal.dto;

public class TransactionSearchDto {

	private String payerName;
	private String dt_type;

	private String fromDate;
	private String toDate;

	public TransactionSearchDto() {

	}

	public TransactionSearchDto(String payerName, String dt_type) {
		super();
		this.payerName = payerName;
		this.dt_type = dt_type;
	}

	public TransactionSearchDto(String payerName, String dt_type, String fromDate, String toDate) {
		super();
		this.payerName = payerName;
		this.dt_type = dt_type;
		this.fromDate = fromDate;
		this.toDate = toDate;
	}

	public String getPayerName() {
		return payerName;
	}

	public void setPayerName(String payerName) {
		this.payerName = payerName;
	}

	public String getDt_type() {
		return dt_type;
	}

	public void setDt_type(String dt_type) {
		this.dt_type = dt_type;
	}

	public String getFromDate() {
		return fromDate;
	}

	public void setFromDate(String fromDate) {
		this.fromDate = fromDate;
	}

	public String getToDate() {
		return toDate;
	}

	public void setToDate(String toDate) {
		this.toDate = toDate;
	}

	@Override
	public String toString() {
		return "TransactionSearchDto [payerName=" + payerName + ", dt_type=" + dt_type + ", fromDate=" + fromDate
				+ ", toDate=" + toDate + "]";
	}

}
