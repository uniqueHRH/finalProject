package com.bit.project.controller;


import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.bit.project.common.Pagination;
import com.bit.project.common.Search;
import com.bit.project.model.entity.GuideVo;
import com.bit.project.model.entity.StaffVo;
import com.bit.project.service.GuideService;
import com.bit.project.service.StaffService;

@Controller
public class StaffController {
	
	@Autowired
	StaffService staffService;
	@Autowired
	GuideService guideService;
	@Resource
	Search search;
	//직원 내정보
	@RequestMapping(value="/main/staffinfo",method=RequestMethod.GET)
	public String Staffinfo() {
		return "/mypage/staffinfo";
	}
	
	//비밀번호 본인확인
	@RequestMapping(value="/main/mypage/lock2",method=RequestMethod.GET)
	public String Changeinfo() {
		return "/mypage/lock";
	}
	
	//비밀번호 본인확인
	@RequestMapping(value="/main/mypage/lock2",method=RequestMethod.POST)
	public ModelAndView Lock(StaffVo bean) throws Exception {
		StaffVo pwcheck = staffService.loginCheck(bean);
		ModelAndView mav=new ModelAndView();
		if(pwcheck != null) {
			mav.setViewName("/mypage/changestaffpw");
		}else {
			mav.addObject("msg", "fail");
			mav.setViewName("mypage/lock");
		}
		return mav;
	}
	
	//직원 비밀번호 변경
	@RequestMapping(value="/main/mypage/changestaffpw",method=RequestMethod.POST)
	public ModelAndView Changepw(StaffVo bean, HttpServletRequest req) throws Exception {
		staffService.changePw(bean);
		HttpSession session=req.getSession();
		ModelAndView mav=new ModelAndView();
		mav.setViewName("jsonView");
		session.invalidate();
		return mav;
	}
	
	//직원 목록
	@RequestMapping(value = "/system/staff", method = RequestMethod.GET)
 	public String staff(Model model, @RequestParam(required = false, defaultValue = "1") int page,
 			@RequestParam(required=false, defaultValue="1") int range,
 			@RequestParam(required=false, defaultValue="staff_name") String searchType,
 			@RequestParam(required=false) String keyword,
 			@ModelAttribute("search") Search search
 			) throws Exception {

 		model.addAttribute("search", search);
 		search.setSearchType(searchType);
 		search.setKeyword(keyword);
 		
 		int listCnt=0;
		try {
			listCnt = staffService.getStaffListCnt(search);
			search.pageInfo(page, range, listCnt);
		} catch (Exception e) {
			e.printStackTrace();
		}

		model.addAttribute("pagination", search);
		model.addAttribute("list",staffService.selectAll_staff(search));
		model.addAttribute("listCnt",listCnt);
 		return "/system/staff";
 	}
 	
	//사번별 정렬
 	@RequestMapping(value="/system/staffNo", method=RequestMethod.GET)
 	public String staffNo(Model model, @RequestParam(required = false, defaultValue = "1") int page,
 			@RequestParam(required=false, defaultValue="1") int range,
 			@RequestParam(required=false, defaultValue="staff_name") String searchType,
 			@RequestParam(required=false) String keyword,
 			@ModelAttribute("search") Search search
 			) throws Exception {

 		
 		model.addAttribute("search", search);
 		search.setSearchType(searchType);
 		search.setKeyword(keyword);
 		
 		int listCnt=0;
		try {
			listCnt = staffService.getStaffListCnt(search);
			search.pageInfo(page, range, listCnt);
		} catch (Exception e) {
			e.printStackTrace();
		}

		model.addAttribute("pagination", search);
		model.addAttribute("list",staffService.selectAll_staffNo(search));
		model.addAttribute("listCnt",listCnt);
 		return "/system/staff";
 	}
 	
 	//부서별 정렬
 	@RequestMapping(value="/system/staffTeam", method=RequestMethod.GET)
 	public String staffTeam(Model model, @RequestParam(required = false, defaultValue = "1") int page,
 			@RequestParam(required=false, defaultValue="1") int range,
 			@RequestParam(required=false, defaultValue="staff_name") String searchType,
 			@RequestParam(required=false) String keyword,
 			@ModelAttribute("search") Search search
 			) throws Exception {

 		model.addAttribute("search", search);
 		search.setSearchType(searchType);
 		search.setKeyword(keyword);
 		
 		int listCnt=0;
		try {
			listCnt = staffService.getStaffListCnt(search);
			search.pageInfo(page, range, listCnt);
		} catch (Exception e) {
			e.printStackTrace();
		}

		model.addAttribute("pagination", search);
		model.addAttribute("list",staffService.selectAll_staffTeam(search));
		model.addAttribute("listCnt",listCnt);
 		return "/system/staff";
 	}
 	
 	//직원등록 페이지
 	@RequestMapping(value = "/system/staffIns", method = RequestMethod.GET)
 	public String staffIns() {
 		return "/system/staffenroll";
 	}
 	//직원등록
 	@RequestMapping(value="/system/staffIns",method=RequestMethod.POST)
    public String staffIns(StaffVo bean) {
 		staffService.insertOne_staff(bean);
 		return "redirect:/system/staff";
 	}
 	
 	//직원 정보
 	@RequestMapping(value="/system/staffDe/{idx}",method=RequestMethod.GET)
 	public String staffDetail(@PathVariable("idx") int key, Model model) {
 		staffService.selectOne_staff(key, model);
 		return "/system/staffdetail";
 	}
 	
 	//직원 정보 수정페이지
 	@RequestMapping(value="/system/staffEdit/{idx}",method=RequestMethod.GET)
	public String staffEdit(@PathVariable("idx") int key, Model model) {
 		staffService.selectOne_staff(key, model);
		return "/system/staffedit";
	}
 	//직원정보 수정
 	@RequestMapping(value="/system/staffEdit/{idx}", method=RequestMethod.POST)
	public String staffEdit(@PathVariable("idx") int key, StaffVo bean){
 		 
 		staffService.updateOne_staff(bean);
 		System.out.println(bean);
 		return "redirect:../staffDe/"+bean.getStaff_no();
 	}
 	//직원 삭제
 	@RequestMapping(value="/system/staffDel", method=RequestMethod.POST)
	public String staffDel(int key) {
 		staffService.deleteOne_staff(key);
		return "redirect:/system/staff";
	}
 	
 	
 	
 	//가이드 목록
 	@RequestMapping(value = "/system/guide", method = RequestMethod.GET)
 	public String guide(Model model, @RequestParam(required = false, defaultValue = "1") int page,
 			@RequestParam(required=false, defaultValue="1") int range,
 			@RequestParam(required=false, defaultValue="guide_name") String searchType,
 			@RequestParam(required=false) String keyword,
 			@ModelAttribute("search") Search search
 			) throws Exception {

 		model.addAttribute("search", search);
 		search.setSearchType(searchType);
 		search.setKeyword(keyword);
 		
 		int listCnt=0;
		try {
			listCnt = guideService.getGuideListCnt(search);
			search.pageInfo(page, range, listCnt);
		} catch (Exception e) {
			e.printStackTrace();
		}

		model.addAttribute("pagination", search);
		model.addAttribute("list",guideService.selectAll_guide(search));
		model.addAttribute("listCnt",listCnt);
 		return "/system/guide";
 	}
 	
	//가이드 번호별 정렬
 	@RequestMapping(value="/system/guideNo", method=RequestMethod.GET)
 	public String guideNo(Model model, @RequestParam(required = false, defaultValue = "1") int page,
 			@RequestParam(required=false, defaultValue="1") int range,
 			@RequestParam(required=false, defaultValue="guide_name") String searchType,
 			@RequestParam(required=false) String keyword,
 			@ModelAttribute("search") Search search
 			) throws Exception {

 		
 		model.addAttribute("search", search);
 		search.setSearchType(searchType);
 		search.setKeyword(keyword);
 		
 		int listCnt=0;
		try {
			listCnt = guideService.getGuideListCnt(search);
			search.pageInfo(page, range, listCnt);
		} catch (Exception e) {
			e.printStackTrace();
		}

		model.addAttribute("pagination", search);
		model.addAttribute("list",guideService.selectAll_guideNo(search));
		model.addAttribute("listCnt",listCnt);
 		return "/system/guide";
 	}
 	
 	//가이드 이름별 정렬
 	@RequestMapping(value="/system/guideName", method=RequestMethod.GET)
 	public String guideName(Model model, @RequestParam(required = false, defaultValue = "1") int page,
 			@RequestParam(required=false, defaultValue="1") int range,
 			@RequestParam(required=false, defaultValue="guide_name") String searchType,
 			@RequestParam(required=false) String keyword,
 			@ModelAttribute("search") Search search
 			) throws Exception {

 		model.addAttribute("search", search);
 		search.setSearchType(searchType);
 		search.setKeyword(keyword);
 		
 		int listCnt=0;
		try {
			listCnt = guideService.getGuideListCnt(search);
			search.pageInfo(page, range, listCnt);
		} catch (Exception e) {
			e.printStackTrace();
		}

		model.addAttribute("pagination", search);
		model.addAttribute("list",guideService.selectAll_guideName(search));
		model.addAttribute("listCnt",listCnt);
 		return "/system/guide";
 	}
 	//가이드 지역별 정렬
 	@RequestMapping(value="/system/guideCity", method=RequestMethod.GET)
 	public String guideCity(Model model, @RequestParam(required = false, defaultValue = "1") int page,
 			@RequestParam(required=false, defaultValue="1") int range,
 			@RequestParam(required=false, defaultValue="guide_name") String searchType,
 			@RequestParam(required=false) String keyword,
 			@ModelAttribute("search") Search search
 			) throws Exception {
 		
 		model.addAttribute("search", search);
 		search.setSearchType(searchType);
 		search.setKeyword(keyword);
 		
 		int listCnt=0;
 		try {
 			listCnt = guideService.getGuideListCnt(search);
 			search.pageInfo(page, range, listCnt);
 		} catch (Exception e) {
 			e.printStackTrace();
 		}
 		
 		model.addAttribute("pagination", search);
 		model.addAttribute("list",guideService.selectAll_guideCity(search));
 		model.addAttribute("listCnt",listCnt);
 		return "/system/guide";
 	}
 	
 	//가이드 등록 페이지
 	 	@RequestMapping(value = "/system/guideIns", method = RequestMethod.GET)
 	 	public String guideIns() {
 	 		return "/system/guideenroll";
 	 	}
 	
 	//가이드 등록
 	 	@RequestMapping(value="/system/guideIns",method=RequestMethod.POST)
 	    public String guideIns(GuideVo bean) {
 	 		System.out.println("controller: "+bean);
 	 		guideService.insertOne_guide(bean);
 	 		return "redirect:/system/guide";
 	 	}
 	 	
 	 //가이드 정보
 	 	@RequestMapping(value="/system/guideDe/{idx}",method=RequestMethod.GET)
 	 	public String guideDetail(@PathVariable("idx") int key, Model model) {
 	 		guideService.selectOne_guide(key, model);
 	 		return "/system/guidedetail";
 	 	}
 	 //가이드 정보 수정페이지
 	 	@RequestMapping(value="/system/guideEdit/{idx}",method=RequestMethod.GET)
 		public String guideEdit(@PathVariable("idx") int key, Model model) {
 	 		guideService.selectOne_guide(key, model);
 			return "/system/guideedit";
 		}
 	 //가이드정보 수정
 	 	@RequestMapping(value="/system/guideEdit/{idx}", method=RequestMethod.POST)
 		public String guideEdit(@PathVariable("idx") int key, GuideVo bean){
 	 		 
 	 		guideService.updateOne_guide(bean);
 	 		System.out.println(bean);
 	 		return "redirect:../guideDe/"+bean.getGuide_no();
 	 	}
 	 //가이드 삭제
 	 	@RequestMapping(value="/system/guideDel", method=RequestMethod.POST)
 		public String guideDel(int key) {
 	 		guideService.deleteOne_guide(key);
 			return "redirect:/system/guide";
 		}
 	 	
}
