package com.bit.project.common;

import org.springframework.stereotype.Repository;

@Repository
public class Search extends Pagination{
	
	private String searchType;
	private String keyword;
	
	
	
	public Search() {
	}
	
	
	public String getSearchType() {
		return searchType;
	}
	public void setSearchType(String searchType) {
		this.searchType = searchType;
	}
	public String getKeyword() {
		return keyword;
	}
	public void setKeyword(String keyword) {
		this.keyword = keyword;
	}


	@Override
	public String toString() {
		return "search [searchType=" + searchType + ", keyword=" + keyword + "]";
	}


	public Search(String searchType, String keyword) {
		super();
		this.searchType = searchType;
		this.keyword = keyword;
	}
	
	
}
