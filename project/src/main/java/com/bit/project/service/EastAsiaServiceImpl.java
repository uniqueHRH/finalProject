package com.bit.project.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.bit.project.model.ClientDao;
import com.bit.project.model.EastAsiaDao;
import com.bit.project.model.entity.EastAsiaVo;

@Service
public class EastAsiaServiceImpl implements EastAsiaService{

	@Autowired
	EastAsiaDao eastasiaDao;
	
	@Override
	public void selectAll_eastasia(Model model) {
	
		try {
			List<EastAsiaVo> list = eastasiaDao.selectAll_eastasia();
			model.addAttribute("list",list);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
	}

	@Override
	public void selectOne_eastasia(Model model, int eastasia_no) {
		try {
			model.addAttribute("bean",eastasiaDao.selectOne_eastasia(eastasia_no));
		} catch (Exception e) {
			e.printStackTrace();
		}
		
	}

}
