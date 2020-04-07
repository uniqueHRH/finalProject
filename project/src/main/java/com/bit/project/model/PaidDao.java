package com.bit.project.model;

import java.util.List;

import com.bit.project.common.Search;
import com.bit.project.model.entity.PaidVo;
import com.bit.project.model.entity.ReceiveVo;

public interface PaidDao {
	
	List<PaidVo> selectAll_paid() throws Exception;
	PaidVo selectOne_paid(int paid_no) throws Exception;
	
	List<ReceiveVo> selectAll_paid(Search search) throws Exception;
	
	public int getPaidListCnt(Search search) throws Exception;
}
