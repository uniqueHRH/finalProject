package com.bit.project.service;

import java.util.List;

import org.springframework.ui.Model;

import com.bit.project.common.Search;
import com.bit.project.model.entity.WishVo;

public interface WishService {

	List<WishVo> selectAll_wish(Search search) throws Exception;
	
	void select_wish(WishVo bean, Model model);
	void insert_wish(WishVo bean);
	void delete_wish(int key);
}
