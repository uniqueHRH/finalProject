package com.bit.project.model;

import java.util.List;

import com.bit.project.common.Search;
import com.bit.project.model.entity.ReceiveVo;

public interface ReceiveDao {

	List<ReceiveVo> selectAll_receive(Search search) throws Exception;
	ReceiveVo selectOne_receive(int key) throws Exception;
//	실시간 받은 쪽지
	ReceiveVo selectOne_receiveLimitOne(String key) throws Exception;
	int updateOne_receive(int key) throws Exception;
	int deleteOne_receive(int key) throws Exception;
//	게시물 총 갯수
	public int getReceiveListCnt(Search search) throws Exception;
}
