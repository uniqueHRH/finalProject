package com.bit.project.model;

import java.util.List;

import com.bit.project.model.entity.PaidVo;

public interface PaidDao {
	
	List<PaidVo> selectAll_paid() throws Exception;
	PaidVo selectOne_paid(int paid_no) throws Exception;
}
