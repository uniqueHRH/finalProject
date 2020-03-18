package com.bit.project.model.entity;

import java.sql.Date;

public class BoardVo {

	private int board_no;
	private int board_id;
	private String board_sub;
	private int board_count;
	private String board_content;
	private String client_nick1;
	private Date board_date;
	private String board_land;
	private String board_city;
	private String board_theme;
	private int board_wish;
	private int board_cost;
	
	private int page;
	private int pageCount;
	
	private int replyCount;
	
//	최초 게시판 접근시, 기본 세팅	
	public BoardVo() {
		this.page=1;
		this.pageCount=10;   // 페이지당 게시글은 10개씩 출력
	}

	
//	페이징
	public int pageStart() {
		return (this.page-1)*pageCount;
	}
	
	public int getPage() {
		return page;
	}

	public void setPage(int page) {
		if(page<=0) {   // page 값이 음수일 때, 첫페이지 출력
			this.page=1;
		} else {
			this.page = page;
		}
	}

	public int getPageCount() {
		return pageCount;
	}

	public void setPageCount(int pageCount) {
		int cnt=this.pageCount;
		if(pageCount!=cnt) {
			this.pageCount=cnt;
		} else {
			this.pageCount = pageCount;
		}
	}
//	페이징 끝
	
// 댓글 갯수
	public int getReplyCount() {
		return replyCount;
	}

	public void setReplyCount(int replyCount) {
		this.replyCount = replyCount;
	}
// 댓글갯수 끝

	

	public int getBoard_no() {
		return board_no;
	}


	

	public void setBoard_no(int board_no) {
		this.board_no = board_no;
	}


	public int getBoard_id() {
		return board_id;
	}


	public void setBoard_id(int board_id) {
		this.board_id = board_id;
	}


	public String getBoard_sub() {
		return board_sub;
	}


	public void setBoard_sub(String board_sub) {
		this.board_sub = board_sub;
	}


	public int getBoard_count() {
		return board_count;
	}


	public void setBoard_count(int board_count) {
		this.board_count = board_count;
	}


	public String getBoard_content() {
		return board_content;
	}


	public void setBoard_content(String board_content) {
		this.board_content = board_content;
	}


	public String getClient_nick1() {
		return client_nick1;
	}


	public void setClient_nick1(String client_nick1) {
		this.client_nick1 = client_nick1;
	}


	public Date getBoard_date() {
		return board_date;
	}


	public void setBoard_date(Date board_date) {
		this.board_date = board_date;
	}


	public String getBoard_land() {
		return board_land;
	}


	public void setBoard_land(String board_land) {
		this.board_land = board_land;
	}


	public String getBoard_city() {
		return board_city;
	}


	public void setBoard_city(String board_city) {
		this.board_city = board_city;
	}


	public String getBoard_theme() {
		return board_theme;
	}


	public void setBoard_theme(String board_theme) {
		this.board_theme = board_theme;
	}


	public int getBoard_wish() {
		return board_wish;
	}


	public void setBoard_wish(int board_wish) {
		this.board_wish = board_wish;
	}


	public int getBoard_cost() {
		return board_cost;
	}


	public void setBoard_cost(int board_cost) {
		this.board_cost = board_cost;
	}


	@Override
	public String toString() {
		return "BoardVo [board_no=" + board_no + ", board_id=" + board_id + ", board_sub=" + board_sub
				+ ", board_count=" + board_count + ", board_content=" + board_content + ", client_nick1=" + client_nick1
				+ ", board_date=" + board_date + ", board_land=" + board_land + ", board_city=" + board_city
				+ ", board_theme=" + board_theme + ", board_wish=" + board_wish + ", board_cost=" + board_cost
				+ "]";
	}


	public BoardVo(int board_no, int board_id, String board_sub, int board_count, String board_content,
			String client_nick1, Date board_date, String board_land, String board_city, String board_theme,
			String board_theme2, String board_theme3, int board_wish, int board_cost) {
		super();
		this.board_no = board_no;
		this.board_id = board_id;
		this.board_sub = board_sub;
		this.board_count = board_count;
		this.board_content = board_content;
		this.client_nick1 = client_nick1;
		this.board_date = board_date;
		this.board_land = board_land;
		this.board_city = board_city;
		this.board_theme = board_theme;
		this.board_wish = board_wish;
		this.board_cost = board_cost;
	}



}
