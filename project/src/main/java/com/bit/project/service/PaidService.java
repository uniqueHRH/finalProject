package com.bit.project.service;

import java.util.List;

import org.springframework.ui.Model;

import com.bit.project.common.Search;
import com.bit.project.model.entity.PaidVo;
import com.bit.project.model.entity.ReceiveVo;

public interface PaidService {

	void selectAll_paid(Model model);
	void selectOne_paid(Model model,int paid_no);
	void paid_confirm(PaidVo bean);
	
	
	List<ReceiveVo> selectAll_paid(Search search) throws Exception;
	public int getPaidListCnt(Search search) throws Exception;
}
