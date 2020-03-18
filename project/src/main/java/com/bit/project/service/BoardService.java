package com.bit.project.service;

import org.springframework.ui.Model;

import com.bit.project.model.entity.BoardVo;

public interface BoardService {

	void selectAll_tour(Model model);
	void selectAll_tourCity(Model model);
	void selectAll_tourTheme(Model model);
	
	void selectAll_review(Model model);
	void selectAll_reviewCity(Model model);
	void selectAll_reviewTheme(Model model);
	
	void selectAll_partner(Model model);
	void selectAll_free(Model model);
	void selectAll_event(Model model);
	
	void selectOne_tour(int key,Model model);
	void selectOne_review(int key,Model model);
	void selectOne_partner(int key,Model model);
	void selectOne_free(int key,Model model);
	void selectOne_event(int key,Model model);
	
	void select_land(int key, Model model);
//	∆‰¿Ã¬°
	int countBoardListTotal() throws Exception; 
	
	void insertOne_tour(BoardVo bean);
	void insertOne_review(BoardVo bean);
	void insertOne_partner(BoardVo bean);
	void insertOne_free(BoardVo bean);
	void insertOne_event(BoardVo bean);
	
	void updateOne_tour(BoardVo bean);
	void updateOne_review(BoardVo bean);
	void updateOne_partner(BoardVo bean);
	void updateOne_free(BoardVo bean);
	void updateOne_event(BoardVo bean);
	
	void deleteOne_tour(int key);
	void deleteOne_review(int key);
	void deleteOne_partner(int key);
	void deleteOne_free(int key);
	void deleteOne_event(int key);
}
