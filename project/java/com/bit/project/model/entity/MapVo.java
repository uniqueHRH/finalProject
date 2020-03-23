package com.bit.project.model.entity;

public class MapVo {
	
	private int latlng_no;
	private String country;
	private String city;
	private String spot;
	
	public MapVo() {
		// TODO Auto-generated constructor stub
	}

	public int getLatlng_no() {
		return latlng_no;
	}

	public void setLatlng_no(int latlng_no) {
		this.latlng_no = latlng_no;
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

	public String getSpot() {
		return spot;
	}

	public void setSpot(String spot) {
		this.spot = spot;
	}

	@Override
	public String toString() {
		return "MapVo [latlng_no=" + latlng_no + ", country=" + country + ", city=" + city + ", spot=" + spot + "]";
	}

	public MapVo(int latlng_no, String country, String city, String spot) {
		super();
		this.latlng_no = latlng_no;
		this.country = country;
		this.city = city;
		this.spot = spot;
	}
	
}
