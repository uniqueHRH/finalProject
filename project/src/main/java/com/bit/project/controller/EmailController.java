package com.bit.project.controller;

import java.io.PrintWriter;
import java.util.Random;

import javax.inject.Inject;
import javax.mail.internet.MimeMessage;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.bit.project.model.entity.ClientVo;
import com.bit.project.service.ClientService;

@Controller
public class EmailController {

		@Autowired
		ClientService clientService;
	
		@Inject    //서비스를 호출하기 위해서 의존성을 주입
	    JavaMailSender mailSender;     //메일 서비스를 사용하기 위해 의존성을 주입함.
	    
	    //아이디찾기창으로 이동
	    	@RequestMapping(value = "/main/login/findid", method = RequestMethod.GET)
	    		public String findid() {
	    		return "login/findid";
	    		}
	    	
	    	
	    // mailSending 코드
	        @RequestMapping( value = "/main/login/findid" , method=RequestMethod.POST )
	        public ModelAndView mailSending(HttpServletRequest request, String client_email, String client_name, ClientVo bean,HttpServletResponse response_email) throws Exception {
	  
	        	ClientVo findid = clientService.findId(bean);
	        	
	        	if(findid != null) {
	        		
	            Random r = new Random();
	            int dice = r.nextInt(4589362) + 49311; //이메일로 받는 인증코드 부분 (난수)
	            
	            String setfrom = "wjdwlans9303@gmail.com";
	            String tomail = request.getParameter("client_email"); // 받는 사람 이메일
	            String title = "회원가입 인증 이메일 입니다."; // 제목
	            String content =
	            
	            System.getProperty("line.separator")+ //한줄씩 줄간격을 두기위해 작성
	            
	            System.getProperty("line.separator")+
	                    
	            "안녕하세요 회원님 저희 홈페이지를 찾아주셔서 감사합니다"
	            
	            +System.getProperty("line.separator")+
	            
	            System.getProperty("line.separator")+
	    
	            " 인증번호는 " +dice+ " 입니다. "
	            
	            +System.getProperty("line.separator")+
	            
	            System.getProperty("line.separator")+
	            
	            "받으신 인증번호를 홈페이지에 입력해 주시면 다음으로 넘어갑니다."; // 내용
	            
	            
	            try {
	                MimeMessage message = mailSender.createMimeMessage();
	                MimeMessageHelper messageHelper = new MimeMessageHelper(message,
	                        true, "UTF-8");
	 
	                messageHelper.setFrom(setfrom); // 보내는사람 생략하면 정상작동을 안함
	                messageHelper.setTo(tomail); // 받는사람 이메일
	                messageHelper.setSubject(title); // 메일제목은 생략이 가능하다
	                messageHelper.setText(content); // 메일 내용
	                
	                mailSender.send(message);
	            } catch (Exception e) {
	                System.out.println(e);
	            }
	            
	            	ModelAndView mv = new ModelAndView();    //ModelAndView로 보낼 페이지를 지정하고, 보낼 값을 지정한다.
	            	mv.setViewName("/login/findid");     //뷰의이름
	            	mv.addObject("name", client_name);
	            	mv.addObject("email", client_email);
	            
	            	System.out.println("mv : "+mv);
	 
	            	response_email.setContentType("text/html; charset=UTF-8");
	            	PrintWriter out_email = response_email.getWriter();
	            	out_email.println("<script>alert('이메일이 발송되었습니다. 인증번호를 입력해주세요.');</script>");
	            	out_email.flush();
	            
	            
	            	return mv;
	        	}else{
	        		 response_email.setContentType("text/html; charset=UTF-8");
	 	            PrintWriter out_email = response_email.getWriter();
	 	            out_email.println("<script>alert('이름 또는 이메일을 확인해주세요');</script>");
	 	            out_email.flush();
	 	            
	 	            ModelAndView mv = new ModelAndView();
		            mv.setViewName("/login/findid");  
		            mv.addObject("name", client_name);
	            	mv.addObject("email", client_email);
		            return mv;
	        	}
	            
	        }
	    
	    
	    //이메일로 받은 인증번호를 입력하고 전송 버튼을 누르면 맵핑되는 메소드.
	    //내가 입력한 인증번호와 메일로 입력한 인증번호가 맞는지 확인해서 맞으면 회원가입 페이지로 넘어가고,
	    //틀리면 다시 원래 페이지로 돌아오는 메소드
	    @RequestMapping(value = "/code_check${dice}", method = RequestMethod.POST)
	    public ModelAndView code_check( ClientVo bean, String code, @PathVariable("dice") String dice, HttpServletRequest req, HttpServletResponse response_equals) throws Exception {
	 
	        HttpSession session = req.getSession();
	        
	        ClientVo IdResult = clientService.findId(bean);
	        
	        System.out.println("마지막 : email_injeung : "+code);
	        
	        System.out.println("마지막 : dice : "+dice);
	        
	        //페이지이동과 자료를 동시에 하기위해 ModelAndView를 사용해서 이동할 페이지와 자료를 담음
	        
	        ModelAndView mav = new ModelAndView();
	        
	        mav.setViewName("/member/join.do");
	        
	        mav.addObject("e_mail",code);
	        
	        if (code.equals(dice)) {
	            
	            //인증번호가 일치할 경우 인증번호가 맞다는 창을 출력하고 회원가입창으로 이동함
	            
	            session.setAttribute("findid", IdResult);
	            mav.setViewName("/login/admin");
	            
	            //만약 인증번호가 같다면 이메일을 회원가입 페이지로 같이 넘겨서 이메일을
	            //한번더 입력할 필요가 없게 한다.
	            
	    
	            return mav;
	            
	            
	        }else if (code != dice) {
	            
	            mav.setViewName("/login/findid");
	            
	            response_equals.setContentType("text/html; charset=UTF-8");
	            PrintWriter out_equals = response_equals.getWriter();
	            out_equals.println("<script>alert('인증번호가 일치하지않습니다. 인증번호를 다시 입력해주세요.'); history.go(-1);</script>");
	            out_equals.flush();
	            
	    
	            return mav;
	            
	        }
	        return mav;
	
	    }
}
