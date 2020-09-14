package com.model;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
@Entity
@Table(name="allocation",catalog="test")

public class allocation implements Serializable {
	private static final long serialVersionUID = 1L;
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private int profileid;
	@Column
	private String Employee_email;
	private String isuuetype;
	private String discribeisuue;
	private String Engineer_Email ;
	private String title;
	
	private String flag;
	private String status;
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public int getProfileid() {
		return profileid;
	}
	public void setProfileid(int profileid) {
		this.profileid = profileid;
	}
	public String getEmployee_email() {
		return Employee_email;
	}
	public void setEmployee_email(String employee_email) {
		Employee_email = employee_email;
	}
	public String getIsuuetype() {
		return isuuetype;
	}
	public void setIsuuetype(String isuuetype) {
		this.isuuetype = isuuetype;
	}
	public String getDiscribeisuue() {
		return discribeisuue;
	}
	public void setDiscribeisuue(String discribeisuue) {
		this.discribeisuue = discribeisuue;
	}
	public String getFlag() {
		return flag;
	}
	public void setFlag(String flag) {
		this.flag = flag;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	
	public String getEngineer_Email() {
		return Engineer_Email;
	}
	public void setEngineer_Email(String engineer_Email) {
		Engineer_Email = engineer_Email;
	}
	
	
	

}
