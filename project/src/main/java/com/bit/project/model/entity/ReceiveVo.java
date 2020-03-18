package com.bit.project.model.entity;

import java.sql.Date;

public class ReceiveVo {

	private int receive_no;
	private String client_nick1;
	private String client_nick2;
	private String receive_content;
	private Date receive_date;
	
	
	public ReceiveVo() {
	}


	public int getReceive_no() {
		return receive_no;
	}
	public void setReceive_no(int receive_no) {
		this.receive_no = receive_no;
	}
	public String getClient_nick1() {
		return client_nick1;
	}
	public void setClient_nick1(String client_nick1) {
		this.client_nick1 = client_nick1;
	}
	public String getClient_nick2() {
		return client_nick2;
	}
	public void setClient_nick2(String client_nick2) {
		this.client_nick2 = client_nick2;
	}
	public String getReceive_content() {
		return receive_content;
	}
	public void setReceive_content(String receive_content) {
		this.receive_content = receive_content;
	}
	public Date getReceive_date() {
		return receive_date;
	}
	public void setReceive_date(Date receive_date) {
		this.receive_date = receive_date;
	}


	
	@Override
	public String toString() {
		return "receiveVo [receive_no=" + receive_no + ", client_nick1=" + client_nick1 + ", client_nick2="
				+ client_nick2 + ", receive_content=" + receive_content + ", receive_date=" + receive_date + "]";
	}

	

	public ReceiveVo(int receive_no, String client_nick1, String client_nick2, String receive_content,
			Date receive_date) {
		super();
		this.receive_no = receive_no;
		this.client_nick1 = client_nick1;
		this.client_nick2 = client_nick2;
		this.receive_content = receive_content;
		this.receive_date = receive_date;
	}
	
	
}
