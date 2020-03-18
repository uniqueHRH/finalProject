package com.bit.project.model.entity;

public class EastAsiaVo {
	
	private int eastasia_no;
	private String country;
	private String city;
	private String introduce;
	private int cost;
	private String mainimg;
	private String comments;
	private String course;
	private String firstimg;
	private String secondimg;
	private String thirdimg;
	
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


	public String getComments() {
		return comments;
	}


	public void setComments(String comments) {
		this.comments = comments;
	}


	public String getCourse() {
		return course;
	}


	public void setCourse(String course) {
		this.course = course;
	}


	public String getFirstimg() {
		return firstimg;
	}


	public void setFirstimg(String firstimg) {
		this.firstimg = firstimg;
	}


	public String getSecondimg() {
		return secondimg;
	}


	public void setSecondimg(String secondimg) {
		this.secondimg = secondimg;
	}


	public String getThirdimg() {
		return thirdimg;
	}


	public void setThirdimg(String thirdimg) {
		this.thirdimg = thirdimg;
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
				+ introduce + ", cost=" + cost + ", mainimg=" + mainimg + ", comments=" + comments + ", course="
				+ course + ", firstimg=" + firstimg + ", secondimg=" + secondimg + ", thirdimg=" + thirdimg
				+ ", GuideVo=" + GuideVo + "]";
	}


	public EastAsiaVo(int eastasia_no, String country, String city, String introduce, int cost, String mainimg,
			String comments, String course, String firstimg, String secondimg, String thirdimg,
			com.bit.project.model.entity.GuideVo guideVo) {
		super();
		this.eastasia_no = eastasia_no;
		this.country = country;
		this.city = city;
		this.introduce = introduce;
		this.cost = cost;
		this.mainimg = mainimg;
		this.comments = comments;
		this.course = course;
		this.firstimg = firstimg;
		this.secondimg = secondimg;
		this.thirdimg = thirdimg;
		GuideVo = guideVo;
	}
	
}

	

	