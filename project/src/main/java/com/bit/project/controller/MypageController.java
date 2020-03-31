package com.bit.project.controller;

import java.nio.channels.SeekableByteChannel;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.executor.ReuseExecutor;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.bit.project.common.Search;
import com.bit.project.model.entity.ClientVo;
import com.bit.project.service.ClientService;
import com.bit.project.service.ReceiveService;

@Controller
public class MypageController {

	@Autowired
	ReceiveService receiveService;
	@Autowired
	ClientService clientService;
//	쪽지함
	@RequestMapping(value="/main/message", method=RequestMethod.GET)
	public String receiveMsg(String key, Model model) throws Exception {
		receiveService.selectAll_receive(key, model);
		System.out.println("controller : "+key);
		System.out.println("controller : "+model);
		return "mypage/message";
	}
	
	// 쪽지 상세보기
	@RequestMapping(value="/main/messageDe/{idx}", method=RequestMethod.GET)
	public String receiveMsg(@PathVariable("idx") int key, Model model) {
		receiveService.selectOne_receive(key, model);
		return "mypage/receiveMsg";
	}
	
//	내가 쓴 글
  	@RequestMapping(value="/main/myBoard", method=RequestMethod.GET)
  	public String myBoard() {
  		return "mypage/myBoard";
  	}
  	
  	
  	
  	//내정보관리
  	@RequestMapping(value="/main/myinfo", method=RequestMethod.GET)
  	public String Myinfo() {
  		return "mypage/myinfo";
  	}
  	
  	//내정보수정 비밀번호 확인
  	@RequestMapping(value="/main/mypage/lock", method=RequestMethod.GET)
  	public String Changeinfo() {
  		return "mypage/lock";
  	}
  	
  	//내정보수정 비밀번호 확인
  	@RequestMapping(value="/main/mypage/lock", method=RequestMethod.POST)
  	public ModelAndView Lock(ClientVo bean) throws Exception {
  		ClientVo pwcheck = clientService.loginCheck(bean);
  		ModelAndView mav=new ModelAndView();
  		if(pwcheck != null) {
  			mav.setViewName("mypage/changemyinfo");
  		}else {
  			mav.addObject("msg", "fail");
  			mav.setViewName("mypage/lock");
  		}
  		return mav;
  	}
  	
  	//내정보수정
  	@RequestMapping(value="/main/mypage/changemyinfo", method=RequestMethod.POST)
  	public ModelAndView Changeinfo(ClientVo bean, HttpServletRequest req) throws Exception {
  		
  		clientService.changeInfo(bean);
  		HttpSession session=req.getSession();
  		ClientVo update = (ClientVo)session.getAttribute("check");
  		update.setClient_nick1(bean.getClient_nick1());
  		update.setClient_nick2(bean.getClient_nick1());
  		update.setClient_phone(bean.getClient_phone());
  		System.out.println(session.getAttribute("check"));
  		ModelAndView mav=new ModelAndView();
  		mav.setViewName("redirect:/main/myinfo");
  		return mav;
  	}
  	
  	//비밀번호 변경
  	@RequestMapping(value="/main/mypage/changepw", method=RequestMethod.GET)
  	public String Changepw() {
  		return "mypage/changepw";
  	}
  	
  	@RequestMapping(value="/main/mypage/changepw", method=RequestMethod.POST)
  	public ModelAndView Changepw(ClientVo bean, HttpServletRequest req) throws Exception {
  		ModelAndView mav=new ModelAndView();
  		clientService.changePw(bean);
  		HttpSession session=req.getSession();
  		ClientVo change = (ClientVo)session.getAttribute("check");
  		mav.addObject("changepw", change.getClient_pw());
  		mav.setViewName("jsonView");
  		session.invalidate();
  		return mav;
  	}
  	
  	
}
