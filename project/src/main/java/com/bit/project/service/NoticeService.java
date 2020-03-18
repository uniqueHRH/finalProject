package com.bit.project.service;

import org.springframework.ui.Model;

import com.bit.project.model.entity.NoticeVo;

public interface NoticeService {

	void selectAll_notice(Model model);
	void selectOne_notice(int key,Model model);
	void insertOne_notice(NoticeVo bean);
	void updateOne_notice(NoticeVo bean);
	void deleteOne_notice(int key);
}
