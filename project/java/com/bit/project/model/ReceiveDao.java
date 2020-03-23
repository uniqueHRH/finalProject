package com.bit.project.model;

import java.util.List;

import com.bit.project.model.entity.ReceiveVo;

public interface ReceiveDao {

	List<ReceiveVo> selectAll_receive() throws Exception;
	ReceiveVo selectOne_receive(int key) throws Exception;
	int deleteOne_receive(int key) throws Exception;
}
