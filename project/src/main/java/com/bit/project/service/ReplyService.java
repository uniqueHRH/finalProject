package com.bit.project.service;

import org.springframework.ui.Model;

import com.bit.project.model.entity.ReplyVo;

public interface ReplyService {

	void selectAll_reply(int key, Model model);
	void insertOne_reply(ReplyVo bean);
	void updateOne_reply(ReplyVo bean);
	void deleteOne_reply(int key);
}
