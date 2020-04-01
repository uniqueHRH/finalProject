package com.bit.project.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.bit.project.model.ClientDao;
import com.bit.project.model.TourDao;
import com.bit.project.model.entity.PaidVo;
import com.bit.project.model.entity.TourVo;

@Service
public class TourServiceImpl implements TourService{

	@Autowired
	TourDao tourDao;
	
	
	@Override
	public void selectAll_eastasia(Model model) {
	
		try {
			List<TourVo> list = tourDao.selectAll_eastasia();
			model.addAttribute("list",list);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
	}

	@Override
	public void selectOne_tour(Model model, int tour_no) {
		try {
			model.addAttribute("bean",tourDao.selectOne_tour(tour_no));
		} catch (Exception e) {
			e.printStackTrace();
		}
		
	}

	@Override
	public void insertOne_tour(PaidVo bean) {
		try {
			tourDao.insertOne(bean);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
	}

	@Override
	public void selectAll_southeastasia(Model model) {
		try {
			List<TourVo> list = tourDao.selectAll_southeastasia();
			model.addAttribute("list",list);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	@Override
	public void selectAll_america(Model model) {
		List<TourVo> list;
		try {
			list = tourDao.selectAll_america();
			model.addAttribute("list",list);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
	}

}
