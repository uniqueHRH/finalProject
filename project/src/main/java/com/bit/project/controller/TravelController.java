package com.bit.project.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.bit.project.model.entity.*;
import com.bit.project.service.*;

@Controller
public class TravelController {
	
	@Autowired
	ClientService clientService;
	@Autowired
	BoardService boardService;
	@Autowired
	FaqService faqService;
	@Autowired
	GuideService guideService;
	@Autowired
	NoticeService noticeService;
	@Autowired
	PaidService paidService;
	@Autowired
	ReceiveService receiveService;
	@Autowired
	ReplyService replyService;
	@Autowired
	SendService sendService;
	@Autowired
	StaffService staffService;
	@Autowired
	TourService tourservice;
	
	
	
// 로그인
	//회원가입창으로 이동
	@RequestMapping(value = "/main/admin", method = RequestMethod.GET)
	public String admin() {
		return "login/admin";
	}
   
	//회원가입 완료 , 로그인창으로 이동
	@RequestMapping(value = "/main/admin", method = RequestMethod.POST)
	public String admin(@ModelAttribute ClientVo bean) {
		  clientService.insertOne_client(bean);
		  return "redirect:login";
	}
	//직원로그인창으로 이동
	@RequestMapping(value = "/main/stafflogin", method = RequestMethod.GET)
	public String stafflogin() {
		return "login/stafflogin";
	}
	
	//직원 로그인
	@RequestMapping(value= "/main/stafflogin", method=RequestMethod.POST)
	public ModelAndView stafflogin(StaffVo bean, HttpServletRequest req, ModelAndView mav) throws Exception{
		
		HttpSession session = req.getSession();
		StaffVo login= staffService.loginCheck(bean);
		 
		if(login==null) {
			//로그인 실패 시
			session.setAttribute("staffcheck", null);
			mav.setViewName("redirect:/main/stafflogin");
			mav.addObject("msg", "fail");
			return mav;
		}else {
			//로그인 성공 시
			session.setAttribute("staffcheck", login);
			mav.setViewName("home");
			return mav;
		}
	}
	
	//로그인창으로 이동
	@RequestMapping(value = "/main/login", method = RequestMethod.GET)
	public String login() {
	   return "login/login";
	}
	
	//회원 로그인
	@RequestMapping(value="/main/login", method=RequestMethod.POST)
	public ModelAndView login(ClientVo bean, HttpServletRequest req, ModelAndView mav) throws Exception{
		
		HttpSession session = req.getSession();
		ClientVo login= clientService.loginCheck(bean);
		 
		if(login==null) {
			//로그인 실패 시
			session.setAttribute("check", null);
			mav.setViewName("redirect:/main/login");
			mav.addObject("msg", "fail");
			return mav;
		}else {
			//로그인 성공 시
			session.setAttribute("check", login);
			mav.setViewName("home");
			return mav;
		}
	}
    //로그아웃
	@RequestMapping(value="/main/logout",method=RequestMethod.GET)
	public String logout(HttpSession session) throws Exception{
		
		session.invalidate();
		return "redirect:/";
	}
	
	
	//비밀번호찾기창으로 이동
	@RequestMapping(value = "/main/login/findpw", method = RequestMethod.GET)
	public String findpw() {
		return "login/findpw";
	}
	
// 회원
	//내정보(직원)으로 이동
	@RequestMapping(value = "/main/staffinfo", method = RequestMethod.GET)
	public String staffinfo() {
		return "mypage/staffinfo";
	}
	
	//내정보관리로 이동
	@RequestMapping(value = "/main/myinfo")
	public String myinfo(Model model,@PathVariable("idx") int client_no) {
		return "mypage/myinfo";
	}
	
	//내정보  변경으로 이동
	@RequestMapping(value = "/main/myinfo/changeinfo", method = RequestMethod.GET)
	public String changemyinfo() {
		return "mypage/changemyinfo";
	}
	//내정보 변경에서 비밀번호 변경으로 이동
	@RequestMapping(value = "/main/myinfo/changeinfo/changepw", method = RequestMethod.GET)
	public String changepw() {
		return "mypage/changepw";
	}
	@RequestMapping(value = "/main/message", method = RequestMethod.GET)
	public String message() {
		return "mypage/message";
	}
	@RequestMapping(value = "/main/wish", method = RequestMethod.GET)
	public String wish() {
		return "mypage/wish";
	}
	
	
// 투어   
	//중국/일본으로 이동
	@RequestMapping(value = "/tour/eastasia", method = RequestMethod.GET)
	public String eastasia(Model model) {
		tourservice.selectAll_eastasia(model);
		return "tour/eastasia";
	}
	@RequestMapping(value = "/tour/eastasia/{idx}", method = RequestMethod.GET)
	public String detail(Model model, @PathVariable ("idx") int tour_no ) {
		tourservice.selectOne_eastasia(model, tour_no);
		return "tour/detaileastasia";
	}

	@RequestMapping(value = "/tour/theme", method = RequestMethod.GET)
	public String theme() {
	return "tour/themetour";
	}
	@RequestMapping(value = "/tour/southeastasia", method = RequestMethod.GET)
	public String southasia() {
	return "tour/southeastasia";
	}
	@RequestMapping(value = "/tour/eastasia/{idx}/booking", method = RequestMethod.GET)
	public String booking(Model model, @PathVariable ("idx") int tour_no) {
		tourservice.selectOne_eastasia(model, tour_no);
		return "tour/booking";
	}
	@RequestMapping(value = "/tour/eastasia/{idx}/booking", method = RequestMethod.POST)
	public String booking(@ModelAttribute TourVo bean) {
		tourservice.insert(bean);
		return "home";
	}
	
	
	/*
	 * // 게시판 // 후기리스트 이동 (작성순 정렬)
	 * 
	 * @RequestMapping(value = "/board/review", method = RequestMethod.GET) public
	 * String review(Model model) { boardService.selectAll_review(model); return
	 * "board/review"; }
	 * 
	 * // 후기리스트 이동 (지역별 정렬)
	 * 
	 * @RequestMapping(value="/board/reviewLocal", method=RequestMethod.GET) public
	 * String reviewLocal(Model model) { boardService.selectAll_reviewCity(model);
	 * return "board/review"; }
	 * 
	 * // 후기리스트 이동 (테마별 정렬)
	 * 
	 * @RequestMapping(value="/board/reviewTheme", method=RequestMethod.GET) public
	 * String reviewTheme(Model model) { boardService.selectAll_reviewTheme(model);
	 * return "board/review"; }
	 * 
	 * // 동행리스트 이동
	 * 
	 * @RequestMapping(value = "/board/partner", method = RequestMethod.GET) public
	 * String partner(Model model) { boardService.selectAll_partner(model); return
	 * "board/partner"; }
	 * 
	 * //자유게시판리스트로 이동
	 * 
	 * @RequestMapping(value = "/board/free", method = RequestMethod.GET) public
	 * String free(Model model) { boardService.selectAll_free(model); return
	 * "board/free"; }
	 * 
	 * //이벤트리스트로 이동
	 * 
	 * @RequestMapping(value = "/board/event", method = RequestMethod.GET) public
	 * String event(Model model) { boardService.selectAll_event(model); return
	 * "board/event"; }
	 * 
	 * // 글쓰기로 이동
	 * 
	 * @RequestMapping(value = "/board/write", method = RequestMethod.GET) public
	 * String write() { return "board/write"; }
	 * 
	 * // 글쓰기 완료, list 로 이동
	 * 
	 * @RequestMapping(value = "/board/write", method = RequestMethod.POST) public
	 * String write(@ModelAttribute BoardVo bean) {
	 * boardService.insertOne_review(bean); return "redirect:review"; }
	 * 
	 * // 상세페이지 이동
	 * 
	 * @RequestMapping(value="/board/detail/{idx}",method=RequestMethod.GET) public
	 * String detail(@PathVariable("idx") int key, Model model) {
	 * boardService.selectOne_review(key, model); return "board/detail"; }
	 * 
	 * // 수정페이지로 이동
	 * 
	 * @RequestMapping(value = "/board/update/{idx}", method = RequestMethod.GET)
	 * public String update(@PathVariable("idx") int key, Model model) {
	 * boardService.selectOne_review(key, model); return "board/update"; }
	 * 
	 * // 수정페이지 나라 조회
	 * 
	 * @RequestMapping(value="/board/updateLand", method=RequestMethod.POST) public
	 * String updateLand(int key, Model model) { boardService.select_land(key,
	 * model); return "board/update"; }
	 * 
	 * // 수정 후 상세페이지로 이동
	 * 
	 * @RequestMapping(value="/board/update/{idx}", method=RequestMethod.POST)
	 * public String update(@ModelAttribute BoardVo bean) {
	 * boardService.updateOne_review(bean); return
	 * "redirect:../detail/"+bean.getBoard_no(); }
	 * 
	 * // 삭제
	 * 
	 * @RequestMapping(value="/board/delete", method=RequestMethod.POST) public
	 * String delete(int key) { boardService.deleteOne_review(key); return
	 * "redirect:review"; }
	 */
 	
 	
 		
 	
// 시스템관리
 	//직원관리페이지로 이동
 	@RequestMapping(value = "/system/staff", method = RequestMethod.GET)
 	public String staff() {
 		return "system/staff";
 	}
 	
 	//가이드관리페이지로 이동
 	@RequestMapping(value = "/system/guide", method = RequestMethod.GET)
 	public String guide() {
 		return "system/guide";
 	}
 	
 	//회원관리페이지로 이동
 	 @RequestMapping(value = "/system/client", method = RequestMethod.GET)
 	 public String client() {
 		return "system/client";
 	 }
 	 
 	 //결제관리페이지로 이동
 	@RequestMapping(value = "/system/paid", method = RequestMethod.GET)
	 public String paid() {
		return "system/paid";
	 }
 	
 	
}