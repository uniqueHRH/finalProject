package com.bit.project.controller;

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
 	
 	@RequestMapping(value="/system/staffNo", method=RequestMethod.GET)
 	public String reviewLocal(Model model, @RequestParam(required = false, defaultValue = "1") int page,
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
 	
 	@RequestMapping(value="/system/staffTeam", method=RequestMethod.GET)
 	public String reviewTheme(Model model, @RequestParam(required = false, defaultValue = "1") int page,
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
 	
 	@RequestMapping(value = "/system/staffIns", method = RequestMethod.GET)
 	public String staffIns() {
 		return "/system/enroll";
 	}
 	
 	@RequestMapping(value="/system/staffIns",method=RequestMethod.POST)
    public String staffIns(StaffVo bean) {
 		staffService.insertOne_staff(bean);
 		return "redirect:/system/staff";
 	}
 	

// 	@RequestMapping(value="/system/staffDe/{idx}",method=RequestMethod.GET)
// 	public String detailstaff(@PathVariable("idx") int key, Model model) {
// 		staffService.selectOne_review(key, model);
// 		replyService.selectAll_Board_reply(key, model);
// 		return "board/detail";
}
