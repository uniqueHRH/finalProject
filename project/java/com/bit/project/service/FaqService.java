package com.bit.project.service;

import org.springframework.ui.Model;

import com.bit.project.model.entity.FaqVo;

public interface FaqService {

	void selectAll_faq(Model model);
	void selectOne_faq(int key,Model model);
	void insertOne_faq(FaqVo bean);
	void updateOne_faq(FaqVo bean);
	void deleteOne_faq(int key);
}
