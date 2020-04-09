package com.bit.project.service;

import org.springframework.ui.Model;

import com.bit.project.model.entity.PaidVo;

public interface TourService {
	
	void selectAll_eastasia(Model model);
	void selectAll_southeastasia(Model model);
	void selectAll_america(Model model);
	void selectAll_europe(Model model);
	void selectAll_pacific(Model model);
	void selectAll_africa(Model model);
	void selectAll_themetour(Model model);
	void selectAll_themesnap(Model model);
	void selectAll_themeactivity(Model model);
	void selectAll_themefood(Model model);
	void selectAll_thememovie(Model model);
	void selectAll_themesports(Model model);
	
	void selectOne_tour(Model model,int tour_no);
	void insertOne_tour(PaidVo bean);
	
}
