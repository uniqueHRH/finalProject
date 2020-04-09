package com.bit.project.model;

import java.util.List;

import com.bit.project.common.Search;
import com.bit.project.model.entity.PaidVo;
import com.bit.project.model.entity.ReceiveVo;

public interface PaidDao {
	
	PaidVo selectOne_paid(int paid_no) throws Exception;
	int paid_confirm(PaidVo bean) throws Exception;
	
	List<ReceiveVo> selectAll_paid(Search search) throws Exception;
	List<ReceiveVo> selectAll_allpaid(Search search) throws Exception;
	public int getallPaidListCnt(Search search) throws Exception;
}
