package com.bit.project.service;

import org.springframework.ui.Model;

import com.bit.project.model.entity.ReceiveVo;

public interface ReceiveService {

	void selectAll_receive(Model model);
	void selectOne_receive(int key,Model model);
	void deleteOne_receive(int key);
}
