package com.bit.project.controller;

import java.io.File;

import javax.annotation.Resource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;

import com.bit.project.file.UploadFileUtils;
import com.bit.project.model.entity.BoardVo;
import com.bit.project.model.entity.ReplyVo;
import com.bit.project.service.BoardService;
import com.bit.project.service.ClientService;
import com.bit.project.service.FaqService;
import com.bit.project.service.GuideService;
import com.bit.project.service.NoticeService;
import com.bit.project.service.PaidService;
import com.bit.project.service.ReceiveService;
import com.bit.project.service.ReplyService;
import com.bit.project.service.SendService;
import com.bit.project.service.StaffService;

@Controller
public class BoardController {

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
	
	@Resource(name="uploadPath")
	private String uploadPath;
	
	
	
	
	// 테스트페이지 이동
	@RequestMapping("/board/test")
	public String test() {
		return "board/test";
	}
	
	// 후기리스트 이동 (작성순 정렬)
 	@RequestMapping(value = "/board/review", method = RequestMethod.GET)
 	public String review(Model model) throws Exception {
 		boardService.selectAll_review(model);
 		return "board/review";
 	}
 	
 	// 후기리스트 이동 (지역별 정렬)
 	@RequestMapping(value="/board/reviewLocal", method=RequestMethod.GET)
 	public String reviewLocal(Model model) {
 		boardService.selectAll_reviewCity(model);
 		return "board/review";
 	}
 	
 	// 후기리스트 이동 (테마별 정렬)
 	@RequestMapping(value="/board/reviewTheme", method=RequestMethod.GET)
 	public String reviewTheme(Model model) {
 		boardService.selectAll_reviewTheme(model);
 		return "board/review";
 	}
 	
 	// 동행리스트 이동
 	@RequestMapping(value = "/board/partner", method = RequestMethod.GET)
 	public String partner(Model model) {
 		boardService.selectAll_partner(model);
 		return "board/partner";
 	}
 	
 	//자유게시판리스트로 이동
 	@RequestMapping(value = "/board/free", method = RequestMethod.GET)
 	public String free(Model model) {
 		boardService.selectAll_free(model);
 		return "board/free";
 	}
 	
 	//이벤트리스트로 이동
 	@RequestMapping(value = "/board/event", method = RequestMethod.GET)
 	public String event(Model model) {
 		boardService.selectAll_event(model);
 		return "board/event";
 	}
 	
 	// 글쓰기로 이동
 	@RequestMapping(value = "/board/write", method = RequestMethod.GET)
 	public String write() {
 		return "board/write";
 	}
 	      
 	// 글쓰기 완료, list 로 이동
 	@RequestMapping(value = "/board/write", method = RequestMethod.POST)
 	public String write(@ModelAttribute BoardVo bean, MultipartFile file) throws Exception {
 		
 		String imgUploadPath = uploadPath + File.separator + "imgUpload";
 		String ymdPath = UploadFileUtils.calcPath(imgUploadPath);
 		String fileName = null;

 		if(file!=null) {
 			fileName=UploadFileUtils.fileUpload(imgUploadPath, file.getOriginalFilename(), file.getBytes(), ymdPath); 
 		} else {
 			fileName = uploadPath + File.separator + "images" + File.separator + "none.png";
 		}

 		bean.setBoard_img(File.separator + "imgUpload" + ymdPath + File.separator + "#"+fileName);
 		bean.setBoard_thumb(File.separator + "imgUpload" + ymdPath + File.separator + "s" + File.separator + "s_" + fileName);
 		
 		
 		
 		
 		
 		boardService.insertOne_review(bean);
 		return "redirect:review";
 	}
 	
 	// 상세페이지 이동
 	@RequestMapping(value="/board/detail/{idx}",method=RequestMethod.GET)
 	public String detail(@PathVariable("idx") int key, Model model) {
 		boardService.selectOne_review(key, model);
 		replyService.selectAll_reply(key, model);
 		return "board/detail";
 	}
 	
 	// 수정페이지로 이동
 	@RequestMapping(value = "/board/update/{idx}", method = RequestMethod.GET)
 	public String update(@PathVariable("idx") int key, Model model) {
 		boardService.selectOne_review(key, model);
 		return "board/update";
 	}
 	
 	// 수정페이지 나라 조회
 	@RequestMapping(value="/board/updateLand", method=RequestMethod.POST)
 	public String updateLand(int key, Model model) {
 		boardService.select_land(key, model);
 		return "board/update";
 	}
 	
 	// 수정 후 상세페이지로 이동
 	@RequestMapping(value="/board/update/{idx}", method=RequestMethod.POST)
 	public String update(@ModelAttribute BoardVo bean) {
 		boardService.updateOne_review(bean);
 		return "redirect:../detail/"+bean.getBoard_no();
 	}

 	// 게시글삭제
 	@RequestMapping(value="/board/delete", method=RequestMethod.POST)
 	public String delete(int key) {
 		boardService.deleteOne_review(key);
 		return "redirect:review";
 	}
 	
 	// 댓글 입력
 	@RequestMapping(value="/board/reply", method=RequestMethod.POST)
 	public String reply(@ModelAttribute ReplyVo bean) {
 		replyService.insertOne_reply(bean);
 		return "board/detail";
 	}
 	
	// 댓글 입력
  	@RequestMapping(value="/board/replyEdit", method=RequestMethod.POST)
  	public String replyEdit(@ModelAttribute ReplyVo bean) {
  		replyService.updateOne_reply(bean);
  		return "board/detail";
  	}
  	
	// 댓글 삭제
  	@RequestMapping(value="/board/replyDel", method=RequestMethod.POST)
  	public String replyDel(int key) {
  		replyService.deleteOne_reply(key);
  		return "board/detail";
  	}
  	
  	// 내가 쓴 글 이동
  	@RequestMapping(value="/main/myBoard", method=RequestMethod.GET)
  	public String myBoard() {
  		return "mypage/myBoard";
  	}
}