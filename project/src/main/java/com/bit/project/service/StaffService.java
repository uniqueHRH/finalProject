package com.bit.project.service;

import org.springframework.ui.Model;

import com.bit.project.model.entity.StaffVo;

public interface StaffService {

	void selectAll_staff(Model model);
	void selectOne_staff(int key,Model model);
	void insertOne_staff(StaffVo bean);
	void updateOne_staff(StaffVo bean);
	void deleteOne_staff(int key);
	public StaffVo loginCheck(StaffVo bean) throws Exception;
}
