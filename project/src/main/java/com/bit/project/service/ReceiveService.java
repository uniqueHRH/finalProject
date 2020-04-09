package com.bit.project.service;


import java.util.List;

import org.springframework.ui.Model;

import com.bit.project.common.Search;
import com.bit.project.model.entity.ReceiveVo;


public interface ReceiveService {

	List<ReceiveVo> selectAll_receive(Search search) throws Exception;
	void selectOne_receive(int key,Model model);
//	 실시간 쪽지
	void selectOne_receiveLimitOne(String key, Model model);
	void deleteOne_receive(int key);
//	게시물 총 갯수
	public int getReceiveListCnt(Search search) throws Exception;
//	읽지 않은 쪽지 갯수
	public int select_receiveUnCnt(String client_nick2) throws Exception;
}
