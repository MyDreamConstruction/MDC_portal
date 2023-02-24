package com.admin.portal.dto;

import java.util.Date;

import org.springframework.web.multipart.MultipartFile;

public class UserDocuments {

	private MultipartFile document;
	private String file_name;
	private String createdBy;
	private Date createddate;

	private Integer userid;

	public String getCreatedBy() {
		return createdBy;
	}

	public void setCreatedBy(String createdBy) {
		this.createdBy = createdBy;
	}

	public Date getCreateddate() {
		return createddate;
	}

	public void setCreateddate(Date createddate) {
		this.createddate = createddate;
	}

	public String getFile_name() {
		return file_name;
	}

	public void setFile_name(String file_name) {
		this.file_name = file_name;
	}

	public MultipartFile getDocument() {
		return document;
	}

	public void setDocument(MultipartFile document) {
		this.document = document;
	}

	public Integer getUserid() {
		return userid;
	}

	public void setUserid(Integer userid) {
		this.userid = userid;
	}

	@Override
	public String toString() {
		return "UserDocuments [document=" + document + ", file_name=" + file_name + ", createdBy=" + createdBy
				+ ", createddate=" + createddate + "]";
	}

}
