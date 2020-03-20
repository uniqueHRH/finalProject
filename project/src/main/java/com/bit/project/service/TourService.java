package com.bit.project.service;

import org.springframework.ui.Model;

import com.bit.project.model.entity.TourVo;

public interface TourService {
	
	void selectAll_eastasia(Model model);
	void selectOne_eastasia(Model model,int tour_no);
	void insert(TourVo bean);
}
