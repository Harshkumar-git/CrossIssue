package com.model;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
@Entity
@Table(name="rolltype",catalog="test")
public class roll implements Serializable {
	private static final long serialVersionUID = 1L;
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private int profileid;
	@Column
	private String Rolltype;
	public int getProfileid() {
		return profileid;
	}
	public void setProfileid(int profileid) {
		this.profileid = profileid;
	}
	public String getRolltype() {
		return Rolltype;
	}
	public void setRolltype(String rolltype) {
		Rolltype = rolltype;
	}
	public String getRollID() {
		return RollID;
	}
	public void setRollID(String rollID) {
		RollID = rollID;
	}
	private String RollID;
}