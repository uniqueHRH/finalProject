package com.bit.project.service;

import org.springframework.ui.Model;

import com.bit.project.model.entity.PaidVo;
import com.bit.project.model.entity.TourVo;

public interface TourService {
	
	void selectAll_eastasia(Model model);
	void selectAll_southeastasia(Model model);
	void selectAll_america(Model model);
	void selectAll_europe(Model model);
	void selectAll_pacific(Model model);
	
	void selectOne_tour(Model model,int tour_no);
	void insertOne_tour(PaidVo bean);
	
}
