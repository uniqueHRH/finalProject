package com.bit.project.model.entity;

public class WishVo {     

	private int wish_no;
	private int tour_no;
	private String client_name;
	private int wishchk;

	
	public WishVo() {
	}


	public int getWish_no() {
		return wish_no;
	}


	public void setWish_no(int wish_no) {
		this.wish_no = wish_no;
	}


	public int getTour_no() {
		return tour_no;
	}


	public void setTour_no(int tour_no) {
		this.tour_no = tour_no;
	}


	public String getClient_name() {
		return client_name;
	}


	public void setClient_name(String client_name) {
		this.client_name = client_name;
	}


	public int getWishchk() {
		return wishchk;
	}


	public void setWishchk(int wishchk) {
		this.wishchk = wishchk;
	}


	@Override
	public String toString() {
		return "WishVo [wish_no=" + wish_no + ", tour_no=" + tour_no + ", client_name=" + client_name + ", wishchk="
				+ wishchk + "]";
	}


	public WishVo(int wish_no, int tour_no, String client_name, int wishchk) {
		super();
		this.wish_no = wish_no;
		this.tour_no = tour_no;
		this.client_name = client_name;
		this.wishchk = wishchk;
	}


	
	

	
	
}
