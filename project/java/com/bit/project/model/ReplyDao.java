package com.bit.project.model;

import java.util.List;

import com.bit.project.model.entity.ReplyVo;

public interface ReplyDao {

	List<ReplyVo> selectAll_reply(int key) throws Exception;
	void insertOne_reply(ReplyVo bean) throws Exception;
	int updateOne_reply(ReplyVo bean) throws Exception;
	int deleteOne_reply(int key) throws Exception;
	
}
