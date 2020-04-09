package com.bit.project;

import javax.servlet.http.HttpSession;

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
	public String home(HttpSession session) {
		return "home";
	}
	
	// 읽지않은 쪽지
	@RequestMapping(value = "/", method = RequestMethod.POST)
	public String home(String id, Model model) throws Exception {
		System.out.println(id);
		int note=0;
		note=receiveService.select_receiveUnCnt(id);
		model.addAttribute("note",note);
		return "home";
	}
}
