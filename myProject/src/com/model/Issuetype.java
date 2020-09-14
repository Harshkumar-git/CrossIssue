package com.model;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
@Entity
@Table(name="issuetype",catalog="test")
public class Issuetype implements Serializable {
	private static final long serialVersionUID = 1L;
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private int profileid;
	@Column
	private String IssueType;
	private String IssueDepartment;
	
	public int getProfileid() {
		return profileid;
	}
	public void setProfileid(int profileid) {
		this.profileid = profileid;
	}
	public String getIssueType() {
		return IssueType;
	}
	public void setIssueType(String issueType) {
		IssueType = issueType;
	}
	public String getIssueDepartment() {
		return IssueDepartment;
	}
	public void setIssueDepartment(String issueDepartment) {
		IssueDepartment = issueDepartment;
	}
	
	
}