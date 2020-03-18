package com.bit.project.service;

import org.springframework.ui.Model;

import com.bit.project.model.entity.GuideVo;

public interface GuideService {

	void selectAll_guide(Model model);
	void selectOne_guide(int key,Model model);
	void insertOne_guide(GuideVo bean);
	void updateOne_guide(GuideVo bean);
	void deleteOne_guide(int key);
}
