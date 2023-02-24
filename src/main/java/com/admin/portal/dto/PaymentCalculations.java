package com.admin.portal.dto;

public class PaymentCalculations {

	private Integer usersCount;

	private double totalCRAmt;
	private double totalExpensesAmt;

	private double totalTrainingExpectedAmt;

	private double totalSupportExpectedAmt;

	private double totalTrainingReceivedAmt;

	private double totalSupportReceivedAmt;
	
	private double clearedDRAmt;
	
	public Integer getUsersCount() {
		return usersCount;
	}

	public void setUsersCount(Integer usersCount) {
		this.usersCount = usersCount;
	}

	public double getTotalCRAmt() {
		return totalCRAmt;
	}

	public void setTotalCRAmt(double totalCRAmt) {
		this.totalCRAmt = totalCRAmt;
	}

	public double getTotalExpensesAmt() {
		return totalExpensesAmt;
	}

	public void setTotalExpensesAmt(double totalExpensesAmt) {
		this.totalExpensesAmt = totalExpensesAmt;
	}

	public double getTotalTrainingExpectedAmt() {
		return totalTrainingExpectedAmt;
	}

	public void setTotalTrainingExpectedAmt(double totalTrainingExpectedAmt) {
		this.totalTrainingExpectedAmt = totalTrainingExpectedAmt;
	}

	public double getTotalSupportExpectedAmt() {
		return totalSupportExpectedAmt;
	}

	public void setTotalSupportExpectedAmt(double totalSupportExpectedAmt) {
		this.totalSupportExpectedAmt = totalSupportExpectedAmt;
	}

	
	public double getTotalTrainingReceivedAmt() {
		return totalTrainingReceivedAmt;
	}

	public void setTotalTrainingReceivedAmt(double totalTrainingReceivedAmt) {
		this.totalTrainingReceivedAmt = totalTrainingReceivedAmt;
	}

	public double getTotalSupportReceivedAmt() {
		return totalSupportReceivedAmt;
	}

	public void setTotalSupportReceivedAmt(double totalSupportReceivedAmt) {
		this.totalSupportReceivedAmt = totalSupportReceivedAmt;
	}

	public double getClearedDRAmt() {
		return clearedDRAmt;
	}

	public void setClearedDRAmt(double clearedDRAmt) {
		this.clearedDRAmt = clearedDRAmt;
	}

	@Override
	public String toString() {
		return "PaymentCalculations [usersCount=" + usersCount + ", totalCRAmt=" + totalCRAmt + ", totalExpensesAmt="
				+ totalExpensesAmt + ", totalTrainingExpectedAmt=" + totalTrainingExpectedAmt
				+ ", totalSupportExpectedAmt=" + totalSupportExpectedAmt + ", totalTrainingReceivedAmt="
				+ totalTrainingReceivedAmt + ", totalSupportReceivedAmt=" + totalSupportReceivedAmt + ", clearedDRAmt="
				+ clearedDRAmt + "]";
	}

}
