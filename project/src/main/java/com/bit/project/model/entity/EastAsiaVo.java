package com.bit.project.model.entity;

public class EastAsiaVo {
	
	private int eastasia_no;
	private String country;
	private String city;
	private String introduce;
	private int cost;
	private String mainimg;
	
	private GuideVo GuideVo;
	
	
	public EastAsiaVo() {
		// TODO Auto-generated constructor stub
	}


	public int getEastasia_no() {
		return eastasia_no;
	}


	public void setEastasia_no(int eastasia_no) {
		this.eastasia_no = eastasia_no;
	}


	public String getCountry() {
		return country;
	}


	public void setCountry(String country) {
		this.country = country;
	}


	public String getCity() {
		return city;
	}


	public void setCity(String city) {
		this.city = city;
	}


	public String getIntroduce() {
		return introduce;
	}


	public void setIntroduce(String introduce) {
		this.introduce = introduce;
	}


	public int getCost() {
		return cost;
	}


	public void setCost(int cost) {
		this.cost = cost;
	}


	public String getMainimg() {
		return mainimg;
	}


	public void setMainimg(String mainimg) {
		this.mainimg = mainimg;
	}


	public GuideVo getGuideVo() {
		return GuideVo;
	}


	public void setGuideVo(GuideVo guideVo) {
		GuideVo = guideVo;
	}


	@Override
	public String toString() {
		return "EastAsiaVo [eastasia_no=" + eastasia_no + ", country=" + country + ", city=" + city + ", introduce="
				+ introduce + ", cost=" + cost + ", mainimg=" + mainimg + ", GuideVo=" + GuideVo + "]";
	}


	public EastAsiaVo(int eastasia_no, String country, String city, String introduce, int cost, String mainimg,
			com.bit.project.model.entity.GuideVo guideVo) {
		super();
		this.eastasia_no = eastasia_no;
		this.country = country;
		this.city = city;
		this.introduce = introduce;
		this.cost = cost;
		this.mainimg = mainimg;
		GuideVo = guideVo;
	}

	

	

	
	
}

	