package com.bit.project.model.entity;

public class Paging {

	private BoardVo boardVo;
	private int totalCount;   // 총 게시글 수
	private int startPage;   // 시작 페이지
	private int endPage;   // 페이징 갯수가 5 이므로 startPage+5 가 된다
	private boolean prev;
	private boolean next;
	private int displayPageNum = 5;   // 페이지 버튼 출력 갯수
	
	
	
	public BoardVo getBoardVo() {
		return boardVo;
	}
	public void setBoardVo(BoardVo boardVo) {
		this.boardVo = boardVo;
	}
	public int getTotalCount() {
		return totalCount;
	}
	public void setTotalCount(int totalCount) {
		this.totalCount = totalCount;
		pageData();   // 메소드를 호출하여, 페이징 작업
	}
	
	private void pageData() {
		endPage=(int)(Math.ceil(boardVo.getPage()/(double)displayPageNum)*displayPageNum);   // ceil : 올림
		startPage=(endPage-displayPageNum+1);
		if(startPage<=0) startPage=1;   // 음수는 첫페이지로 출력
		
//		페이징 마지막번호 설정 (endPage 가 아니라, 실제 게시글에 따른 페이지 번호 출력
		int endPaging=(int)(Math.ceil(totalCount/(double)boardVo.getPageCount()));
		if(endPage>endPaging) {
			endPage=endPaging;
		}
		prev=startPage==1? false:true;   // 1 페이지에서 prev 는 생략
		next=endPage*boardVo.getPageCount()<totalCount? true:false;   // 게시글수가 페이징보다 크면 next 생성
	}
	
	public int getStartPage() {
		return startPage;
	}
	public void setStartPage(int startPage) {
		this.startPage = startPage;
	}
	public int getEndPage() {
		return endPage;
	}
	public void setEndPage(int endPage) {
		this.endPage = endPage;
	}
	public boolean isPrev() {
		return prev;
	}
	public void setPrev(boolean prev) {
		this.prev = prev;
	}
	public boolean isNext() {
		return next;
	}
	public void setNext(boolean next) {
		this.next = next;
	}
	public int getDisplayPageNum() {
		return displayPageNum;
	}
	public void setDisplayPageNum(int displayPageNum) {
		this.displayPageNum = displayPageNum;
	}


}
