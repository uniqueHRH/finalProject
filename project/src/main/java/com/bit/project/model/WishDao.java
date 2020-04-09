package com.bit.project.model;

import com.bit.project.model.entity.WishVo;

public interface WishDao {

	WishVo select_wish(WishVo bean) throws Exception;
	void insert_wish(WishVo bean) throws Exception;
	int delete_wish(int key) throws Exception;
}
