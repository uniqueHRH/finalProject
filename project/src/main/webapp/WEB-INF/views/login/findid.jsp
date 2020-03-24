<%@page import="org.springframework.web.servlet.config.MvcNamespaceHandler"%>
<%@page import="org.springframework.web.servlet.ModelAndView"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page pageEncoding="utf-8" %>
<link href="https://fonts.googleapis.com/css?family=Jua&display=swap&subset=korean" rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Jua|Noto+Sans+KR&display=swap" rel="stylesheet">
<c:url value="/" var="root"></c:url>
<html>
<head>
<meta charset="utf-8">
<title>Home</title>
<link rel="stylesheet" type="text/css" href="${root }css/bootstrap.css" />
<link rel="stylesheet" type="text/css" href="${root }css/travel.css" />
<style type="text/css">
    h1 {
		font-family: 'Jua';
	}
	form {
		width:500px;      
		margin:0 auto;
		font-family: 'Jua';
		padding:0;
	}
    #resetbtn,#confirmbtn{
    	text-align: center;
    	margin-top: 10px;
    	width: 40%;
    }
    form label {
    	width:100px;
    	span:0 5px;
    }
    form input {
    	width:300px
    }
    #count {
    	border:0px;
    	width:100px;
    	background-color:white;
    }
    #code, #dice {
    	display:inline-block;
    }
   
</style>
<script type="text/javascript" src="${root }js/jquery-1.12.4.js"></script>
<script type="text/javascript" src="${root }js/bootstrap.js"></script>
</head>
<body>
                        <!-- menubar start -->
<div class="menubar">
	<nav>
		<div>
			<ul class="login">
		        <!-- 로그인시 숨김 -->
		        <c:if test="${sessionScope.check eq null && sessionScope.staffcheck eq null }">
		        <li>
		        	<a id="side" href="${root }main/login" >로그인</a> &nbsp; &nbsp; &nbsp; &nbsp;
		        	<a id="side" href="${root }main/admin" >회원가입</a>
		        </li>
		        </c:if>
		        <!-- 직원로그인시 -->
		        <c:if test="${sessionScope.staffcheck ne null }">
				<select id="side" onchange="location.href=this.value">
		            <option value="${root }main/staffinfo">내정보관리</option>
		            <option value="${root }main/logout">로그아웃</option>
		        </select>
		        </c:if>
		        <!-- 회원로그인시 -->
		        <c:if test="${sessionScope.check ne null }">
				<select id="side" onchange="location.href=this.value">
					<option id="hide">${sessionScope.check.client_nick1} 님<span class="caret"></span></option>
		            <option value="${root }main/message">쪽지함</option>
		            <option value="#">최근본상품</option>
		            <option value="${root }main/wish">찜한상품</option>
		            <option value="#">결제상품</option>
		            <option value="#">내가쓴글</option>
		            <option value="${root }main/myinfo">내정보관리</option>
		            <option value="${root }main/logout">로그아웃</option>
		          </select>
		        </c:if>
			</ul>
			<ul class="nav nav-pills nav-stacked" id="hamb">
				<li id="hamSub"><a href="#">투어</a>
			  		<ul>
			  			<li><a href="${root }tour/eastasia">중국/일본</a></li>
			       		<li><a href="${root }tour/southeastasia">동남아시아</a></li>
			       		<li><a href="${root }tour/america">아 메 리 카</a></li>
			       		<li><a href="${root }tour/europe">유 &nbsp; &nbsp; &nbsp; &nbsp;럽</a></li>
			       		<li><a href="${root }tour/pacific">남 태 평 양</a></li>
			       		<li><a href="${root }tour/africa">아 프 리 카</a></li>
			       		<li><a href="${root }tour/theme">테 마 여 행</a></li>
			  		</ul>
			  	</li>
				<li id="hamSub"><a href="#">커뮤니티</a>
					<ul>
			  			<li><a href="${root }board/review">여행후기</a></li>
			       		<li><a href="${root }board/partner">동행구하기</a></li>
			       		<li><a href="${root }board/free">자유게시판</a></li>
			  		</ul>
			  	</li>
				<li id="hamSub"><a href="#">이벤트</a></li>
				<li><a href="#">고객센터</a>
					<ul>
			  			<li><a href="${root }board/notice">공 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;지</a></li>
				        <li><a href="${root }board/qna">자주묻는질문</a></li>
			  		</ul>
			  	</li>
			  	<c:if test="${sessionScope.staffcheck ne null }">
					<li id="hamSub"><a href="#">관리자센터</a>
						<ul>
				  			<li><a href="${root }system/staff">직원 관리</a></li>
				       		<li><a href="${root }system/guide">가이드관리</a></li>
				       		<li><a href="${root }system/client">회원관리</a></li>
				       		<li><a href="${root }system/paid">결제관리</a></li>
				       		<li><a href="${root }system/report">신고관리</a></li>
				  		</ul>
				  	</li>
			  	</c:if>
			</ul>
		</div><!-- /.navbar-collapse -->
	</nav><!-- /.container-fluid -->
	<div>
		<button id="hambBtn"><img src="https://github.com/uniqueHRH/final/blob/master/project/src/main/webapp/imgs/menu.jpg?raw=true" width="100px" id="hambI"></button>
	</div>
</div>
<!-- menubar end -->
                     <!-- contents start -->
<div class="container">
  <div class="row">
   <div class="col-md-12">
      <div class="page-header" align="center">
     <h1>아이디 찾기</h1>
   </div>
   
   
   <form action="../code_check" name="cac" class="form-horizontal" method="post">
   		<div id="tableM">
	   		<div>
				<label for="client_name" class="col-sm-2 control-label" id="idd">이름</label>
				<input type="text" class="form-control" id="client_name" name="client_name" placeholder="이름을 입력하세요" style="width:280px">
			</div>
			<p></p>
	   		<div>
				<label for="client_nick" class="col-sm-2 control-label" id="emaill">이메일</label>
				<input type="text" class="form-control" id="client_email" name="client_email" placeholder="이메일을 입력하세요" style="width:280px;float:left">
				&nbsp;<button class="btn btn-default" type="button" id="codebtn">인증요청</button>
			</div>
			<p></p>
			<div>
				<label for="code" class="col-sm-2 control-label">인증번호</label>
	         	<input type="text" class="form-control" id="code" name="code" placeholder="이메일로 전송된 인증번호를 입력하세요" style="width:280px">
	         	&nbsp;<input type="text" class="input" id="count" disabled>
		     	<input type="hidden" id="dice" name="dice" value="" style="display: none;">
		     </div>
			<p></p>
	     <div id="btn">
	  		<button type="submit" id="confirmbtn" class="btn btn-default btn-lg">확인</button>
	  		<button type="button" id="resetbtn" class="btn btn-default btn-lg" onclick="location.href='/main/login'">취소</button>
	  	</div>
	</div>
  </form>   
  </div>
 </div>
</div>
      
      
                         <!-- contents end --> 
 <div class="row">
   <div class="col-md-12">
    <div class="footer">
    	<img id="footer1" src="https://github.com/uniqueHRH/travel/blob/master/src/main/webapp/imgs/footer1.jpg?raw=true" alt="">
    </div>
   </div>
 </div> 
<script type="text/javascript">
	$(document).ready(function() {
		$('#hamb').hide();
		$('#hide').hide();
		
		$('#tour_sub').hide();
		$('#comm_sub').hide();
		$('#serv_sub').hide();
		$('#system_sub').hide();
		
		$('#maintext1').hide();
		$('#maintext2').hide();
		$('#maintext3').hide();
		$('#maintext4').hide();
		
		$('#hambBtn').mouseenter(function() {
			$('#hamb').show();
			$(this).hide();
		});
		$('#hamb').mouseenter(function() {
			$(this).show();
			$('#hambBtn').hide();
		}).mouseleave(function() {
			$('#hamb').hide();
			$('#hambBtn').show();
		});
	
		
		//인증번호 요청
		$('#codebtn').on('click',function() {
			var name = $('#client_name').val();
			var email = $('#client_email').val();
			
			if(!name || !email){
				alert('이름과 이메일을 확인해주세요');
				return false;
				event.preventDefault();
			}else{
				$.ajax({
					url:'../login/findid',
					type:'POST',
					data:{client_name:name, client_email:email},
					beforeSend:function(){
						/* alert('인증번호 발송 중..'); */
						 document.style.cursor ="wait";
				    },
				    success:function(data){
				    	var check = data.FindId
				    	if(check == null){
				    		alert('가입하신 이름과 이메일을 입력해주세요');
				    	}else{
				    	$('input[name=dice]').attr('value',data.Dice);
						var num = 60 * 3; // 몇분을 설정할지의 대한 변수 선언
			    		var myVar;
			   			 function time(){
			       			 myVar = setInterval(alertFunc, 1000); 
			   			 }
			  			  time();
			 
			  			 function alertFunc() {
			        		var min = num / 60; 
			       			min = Math.floor(min);
			        		var sec = num - (60 * min);
			        		var $input = $('.input').val(min + '분' + sec + '초');
			       			if(num == 0){
			            		clearInterval(myVar);
			            		alert('요청 시간이 만료되었습니다.');
			            		// num 이 0초가 되었을대 clearInterval로 타이머 종료
			        		}
			        		num--;
			   			}
				    	}
				    },
					error:function(){
						alert('요청 실패');
					}
				});
	      		
				
			}
	    });
		
		
		//form submit 제한 , 인증확인
		$('#confirmbtn').on('click',function() {
			var name = $('#client_name').val();
			var email = $('#client_email').val();
			var code = $('#code').val();
			var dice = $('#dice').val();
			
			if(!name || !email){
				alert('이름과 이메일을 확인해주세요~');
				return false;
			}else if(!code){
				alert('인증번호를 입력해주세요');
				return false;
			}else if(code != dice){
				alert('인증번호가 일치하지않습니다');
				return false;
			}else{
				return true;
			}
		});
	});
</script>
</body>
</html>

