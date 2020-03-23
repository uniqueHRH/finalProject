package com.bit.project.service;

import org.springframework.ui.Model;

import com.bit.project.model.entity.PaidVo;

public interface PaidService {

	void selectAll_paid(Model model);
	void selectOne_paid(int key,Model model);
	void insertOne_paid(PaidVo bean);
	void updateOne_paid(PaidVo bean);
	void deleteOne_paid(int key);
}
