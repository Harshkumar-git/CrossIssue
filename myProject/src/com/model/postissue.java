package com.model;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
@Entity
@Table(name="postissue",catalog="test")

public class postissue {
	
	
		@Id
		@GeneratedValue(strategy=GenerationType.AUTO)
		private int profileid;
		@Column
		
		private String Employee_email;
		private String isuuetype;
		private String discribeisuue;
		private String flag;
		private String title;
		public String getEmployee_email() {
			return Employee_email;
		}
		public void setEmployee_email(String employee_email) {
			Employee_email = employee_email;
		}
		public String getTitle() {
			return title;
		}
		public void setTitle(String title) {
			this.title = title;
		}
		public String getFlag() {
			return flag;
		}
		public void setFlag(String flag) {
			this.flag = flag;
		}
		public int getProfileid() {
			return profileid;
		}
		public void setProfileid(int profileid) {
			this.profileid = profileid;
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
		
		
			// TODO Auto-generated method stub
			
		}
		

