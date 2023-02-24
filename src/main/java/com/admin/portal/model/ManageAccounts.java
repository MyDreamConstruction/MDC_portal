package com.admin.portal.model;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "manage_accounts")
public class ManageAccounts {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "id")
	private Long id;
	
	@Column(name = "name")
	private String name;
	
	@Column(name = "status")
	private boolean status;
	
	@Column(name = "createdDate")
	private Date created;

	public ManageAccounts() {

	}

	public ManageAccounts(Long id, String name, boolean status, Date created) {
		super();
		this.id = id;
		this.name = name;
		this.status = status;
		this.created = created;
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public boolean isStatus() {
		return status;
	}

	public void setStatus(boolean status) {
		this.status = status;
	}

	public Date getCreated() {
		return created;
	}

	public void setCreated(Date created) {
		this.created = created;
	}

	@Override
	public String toString() {
		return "ManageAccounts [id=" + id + ", name=" + name + ", status=" + status + ", created=" + created + "]";
	}

}
