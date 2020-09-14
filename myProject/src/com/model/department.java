package com.model;


import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
@Entity
@Table(name="department",catalog="test")

public class department implements Serializable{
	private static final long serialVersionUID = 1L;
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private int profileid;
	@Column
	private String Deaprtment_Name;
	public int getProfileid() {
		return profileid;
	}
	public void setProfileid(int profileid) {
		this.profileid = profileid;
	}
	public String getDeaprtment_Name() {
		return Deaprtment_Name;
	}
	public void setDeaprtment_Name(String deaprtment_Name) {
		Deaprtment_Name = deaprtment_Name;
	}
	public String getDepartment_id() {
		return Department_id;
	}
	public void setDepartment_id(String department_id) {
		Department_id = department_id;
	}
	public String getFlag() {
		return flag;
	}
	public void setFlag(String flag) {
		this.flag = flag;
	}
	private String Department_id;
	private String flag;
}
