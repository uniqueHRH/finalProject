package com.bit.project.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.bit.project.model.entity.ClientVo;
import com.bit.project.model.entity.StaffVo;
import com.bit.project.service.StaffService;

@Controller
public class StaffController {
	
	@Autowired
	StaffService staffService;
	
	
	@RequestMapping(value="/main/staffinfo",method=RequestMethod.GET)
	public String Staffinfo() {
		return "/mypage/staffinfo";
	}
	
}
