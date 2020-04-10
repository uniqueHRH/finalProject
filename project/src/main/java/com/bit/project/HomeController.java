package com.bit.project;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.bit.project.service.ReceiveService;

@Controller
public class HomeController {
	
	@Autowired
	ReceiveService receiveService;
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(String client_nick2, Model model) throws Exception {
		
		return "home";
	}
	@RequestMapping(value = "/count", method = RequestMethod.POST)
	public ModelAndView count(String client_nick2) throws Exception {
			
			int data = receiveService.select_receiveUnCnt(client_nick2);
			ModelAndView mav = new ModelAndView();
			mav.addObject("Data", data);
			mav.setViewName("jsonView");
		return mav;
	}
	
}
