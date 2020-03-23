package com.bit.project.model;

import java.util.List;

import com.bit.project.model.entity.PaidVo;

public interface PaidDao {
	
	List<PaidVo> selectAll_paid() throws Exception;
	PaidVo selectOne_paid(int key) throws Exception;
	void insertOne_paid(PaidVo bean) throws Exception;
	int updateOne_paid(PaidVo bean) throws Exception;
	int deleteOne_paid(int key) throws Exception;
	
}
