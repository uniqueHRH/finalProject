package com.bit.project;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.bit.project.service.ReceiveService;

@Controller
public class HomeController {
	
	@Autowired
	ReceiveService receiveService;
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home() {
		return "home";
	}
	
	@RequestMapping(value = "/cnt", method = RequestMethod.GET)
	public String countMsg(String client_nick2, Model model) throws Exception {
		System.out.println("call controller...");
		receiveService.select_receiveUnCnt(client_nick2, model);
		System.out.println("controller="+model);
		return "home";
	}
}
