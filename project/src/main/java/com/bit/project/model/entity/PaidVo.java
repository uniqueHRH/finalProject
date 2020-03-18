package com.bit.project.model.entity;

public class PaidVo {
	
	private int paid_no;
	private String board_sub;
	private String paid_name;
	private String paid_phone;
	private int paid_sex;
	private String paid_birth;
	private int paid_count;
	private String paid_kakaoid;
	private int board_no;
	
	
	public PaidVo() {
	}


	public int getPaid_no() {
		return paid_no;
	}
	public void setPaid_no(int paid_no) {
		this.paid_no = paid_no;
	}
	public String getBoard_sub() {
		return board_sub;
	}
	public void setBoard_sub(String board_sub) {
		this.board_sub = board_sub;
	}
	public String getPaid_name() {
		return paid_name;
	}
	public void setPaid_name(String paid_name) {
		this.paid_name = paid_name;
	}
	public String getPaid_phone() {
		return paid_phone;
	}
	public void setPaid_phone(String paid_phone) {
		this.paid_phone = paid_phone;
	}
	public int getPaid_sex() {
		return paid_sex;
	}
	public void setPaid_sex(int paid_sex) {
		this.paid_sex = paid_sex;
	}
	public String getPaid_birth() {
		return paid_birth;
	}
	public void setPaid_birth(String paid_birth) {
		this.paid_birth = paid_birth;
	}
	public int getPaid_count() {
		return paid_count;
	}
	public void setPaid_count(int paid_count) {
		this.paid_count = paid_count;
	}
	public String getPaid_kakaoid() {
		return paid_kakaoid;
	}
	public void setPaid_kakaoid(String paid_kakaoid) {
		this.paid_kakaoid = paid_kakaoid;
	}
	public int getBoard_no() {
		return board_no;
	}
	public void setBoard_no(int board_no) {
		this.board_no = board_no;
	}


	@Override
	public String toString() {
		return "PaidVo [paid_no=" + paid_no + ", board_sub=" + board_sub + ", paid_name=" + paid_name + ", paid_phone="
				+ paid_phone + ", paid_sex=" + paid_sex + ", paid_birth=" + paid_birth + ", paid_count=" + paid_count
				+ ", paid_kakaoid=" + paid_kakaoid + ", board_no=" + board_no + "]";
	}


	public PaidVo(int paid_no, String board_sub, String paid_name, String paid_phone, int paid_sex, String paid_birth,
			int paid_count, String paid_kakaoid, int board_no) {
		super();
		this.paid_no = paid_no;
		this.board_sub = board_sub;
		this.paid_name = paid_name;
		this.paid_phone = paid_phone;
		this.paid_sex = paid_sex;
		this.paid_birth = paid_birth;
		this.paid_count = paid_count;
		this.paid_kakaoid = paid_kakaoid;
		this.board_no = board_no;
	}

	
}
