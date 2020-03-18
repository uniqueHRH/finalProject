package com.bit.project.service;

import org.springframework.ui.Model;

public interface EastAsiaService {
	
	void selectAll_eastasia(Model model);
	void selectOne_eastasia(Model model,int eastasia_no);
}
