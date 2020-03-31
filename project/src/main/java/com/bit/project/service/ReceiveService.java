package com.bit.project.service;


import org.springframework.ui.Model;

import com.bit.project.common.Search;


public interface ReceiveService {

	void selectAll_receive(String key, Model model);
	void selectOne_receive(int key,Model model);
	void deleteOne_receive(int key);
//	°Ô½Ã¹° ÃÑ °¹¼ö
	public int getReceiveListCnt(Search search) throws Exception;
}
