package com.bit.project.model.entity;

import java.sql.Date;

public class StaffVo {

	private int staff_no;
	private String staff_name;
	private String staff_phone;
	private String staff_email;
	private int staff_team;
	private Date staff_joindate;
	private String staff_pw;
	
	
	
	public StaffVo() {
	}


	public int getStaff_no() {
		return staff_no;
	}
	public void setStaff_no(int staff_no) {
		this.staff_no = staff_no;
	}
	public String getStaff_name() {
		return staff_name;
	}
	public void setStaff_name(String staff_name) {
		this.staff_name = staff_name;
	}
	public String getStaff_phone() {
		return staff_phone;
	}
	public void setStaff_phone(String staff_phone) {
		this.staff_phone = staff_phone;
	}
	public String getStaff_email() {
		return staff_email;
	}
	public void setStaff_email(String staff_email) {
		this.staff_email = staff_email;
	}
	public int getStaff_team() {
		return staff_team;
	}
	public void setStaff_team(int staff_team) {
		this.staff_team = staff_team;
	}
	public Date getStaff_joindate() {
		return staff_joindate;
	}
	public void setStaff_joindate(Date staff_joindate) {
		this.staff_joindate = staff_joindate;
	}
	public String getStaff_pw() {
		return staff_pw;
	}
	public void setStaff_pw(String staff_pw) {
		this.staff_pw = staff_pw;
	}


	
	@Override
	public String toString() {
		return "staffVo [staff_no=" + staff_no + ", staff_name=" + staff_name + ", staff_phone=" + staff_phone
				+ ", staff_email=" + staff_email + ", staff_team=" + staff_team + ", staff_joindate=" + staff_joindate
				+ ", staff_pw=" + staff_pw + "]";
	}


	
	public StaffVo(int staff_no, String staff_name, String staff_phone, String staff_email, int staff_team,
			Date staff_joindate, String staff_pw) {
		super();
		this.staff_no = staff_no;
		this.staff_name = staff_name;
		this.staff_phone = staff_phone;
		this.staff_email = staff_email;
		this.staff_team = staff_team;
		this.staff_joindate = staff_joindate;
		this.staff_pw = staff_pw;
	}
	
	
}
