package com.bit.project.service;

import org.springframework.ui.Model;

import com.bit.project.model.entity.WishVo;

public interface WishService {

	void select_wish(WishVo bean, Model model);
	void insert_wish(WishVo bean);
	void delete_wish(int key);
}
