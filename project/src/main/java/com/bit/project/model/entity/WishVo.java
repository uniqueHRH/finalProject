package com.bit.project.model.entity;

public class WishVo {     

	private int wish_no;
	private int tour_no;
	private String client_nick1;
	private int wishChk;

	
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
	public String getClient_nick1() {
		return client_nick1;
	}
	public void setClient_nick1(String client_nick1) {
		this.client_nick1 = client_nick1;
	}
	public int getWishChk() {
		return wishChk;
	}
	public void setWishChk(int wishChk) {
		this.wishChk = wishChk;
	}


	@Override
	public String toString() {
		return "wishVo [wish_no=" + wish_no + ", tour_no=" + tour_no + ", client_nick1=" + client_nick1 + ", wishChk="
				+ wishChk + "]";
	}


	public WishVo(int wish_no, int tour_no, String client_nick1, int wishChk) {
		super();
		this.wish_no = wish_no;
		this.tour_no = tour_no;
		this.client_nick1 = client_nick1;
		this.wishChk = wishChk;
	}
	
	
}
