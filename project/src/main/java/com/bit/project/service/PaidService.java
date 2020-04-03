package com.bit.project.service;

import org.springframework.ui.Model;

import com.bit.project.model.entity.PaidVo;

public interface PaidService {

	void selectAll_paid(Model model);
	void selectOne_paid(Model model,int paid_no);
}
