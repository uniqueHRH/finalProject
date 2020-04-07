package com.bit.project.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.bit.project.common.Search;
import com.bit.project.model.PaidDao;
import com.bit.project.model.entity.PaidVo;
import com.bit.project.model.entity.ReceiveVo;

@Service
public class PaidServiceImpl implements PaidService {

	@Autowired
	PaidDao paidDao;
	
	@Override
	public void selectAll_paid(Model model) {
		try {
			List<PaidVo> list=paidDao.selectAll_paid();
			model.addAttribute("list",list);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	@Override
	public void selectOne_paid(Model model, int paid_no) {
		try {
			model.addAttribute("bean",paidDao.selectOne_paid(paid_no));
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	@Override
	public List<ReceiveVo> selectAll_paid(Search search) throws Exception {
		return paidDao.selectAll_paid(search);
	}

	@Override
	public int getPaidListCnt(Search search) throws Exception {
		return paidDao.getPaidListCnt(search);
	}

	@Override
	public void paid_confirm(PaidVo bean) {
		try {
			paidDao.paid_confirm(bean);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
	}

}
