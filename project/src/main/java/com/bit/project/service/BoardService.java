package com.bit.project.service;

import java.util.List;

import org.springframework.ui.Model;

import com.bit.project.common.Search;
import com.bit.project.model.entity.BoardVo;

public interface BoardService {

	
	List<BoardVo> selectAll_review(Search search) throws Exception;
	void selectAll_reviewCity(Model model);
	void selectAll_reviewTheme(Model model);
	
	void selectOne_review(int key,Model model);
	
	void insertOne_review(BoardVo bean);
	
	void updateOne_review(BoardVo bean);
	
	void deleteOne_review(int key);
	
	void select_land(int key, Model model);
//	°Ô½Ã¹° ÃÑ °¹¼ö
	public int getBoardListCnt(Search search) throws Exception;
}

