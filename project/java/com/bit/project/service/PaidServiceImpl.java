package com.bit.project.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.bit.project.model.PaidDao;
import com.bit.project.model.entity.PaidVo;

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
	public void selectOne_paid(int key, Model model) {
		try {
			model.addAttribute("bean",paidDao.selectOne_paid(key));
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	@Override
	public void insertOne_paid(PaidVo bean) {
		try {
			paidDao.insertOne_paid(bean);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	@Override
	public void updateOne_paid(PaidVo bean) {
		try {
			paidDao.updateOne_paid(bean);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	@Override
	public void deleteOne_paid(int key) {
		try {
			paidDao.deleteOne_paid(key);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}


}
