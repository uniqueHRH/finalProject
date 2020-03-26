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
	width: 500px;
	margin: 0 auto;
	font-family: 'Jua';
	padding: 0;
}

#resetbtn, #confirmbtn {
	text-align: center;
	margin-top: 10px;
	width: 40%;
}

form label {
	width: 100px;
	span: 0 5px;
}

form input {
	width: 300px
}

#count {
	border: 0px;
	width: 100px;
	background-color: white;
}

#code2, #dice2 {
	display: inline-block;
}

#loading {
	width: 100%;
	height: 100%;
	top: 0px;
	left: 0px;
	position: fixed;
	opacity: 0.7;
	z-index: 99;
	text-align: center;
	background-color: #898686;
	display: none;
}

#imgs {
	display: none;
	position: absolute;
	left: 45%;
	top: 45%;
	z-index: 100;
}
</style>
<script type="text/javascript" src="${root }js/jquery-1.12.4.js"></script>
<script type="text/javascript" src="${root }js/bootstrap.js"></script>
<script type="text/javascript">
	$(document).ready(function() {
		$('#tour_sub').hide();
		$('#comm_sub').hide();
		$('#serv_sub').hide();
		$('#system_sub').hide();
		
		$('#mainFont1').hide();
		$('#mainFont2').hide();
		$('#mainFont3').hide();
		$('#mainFont4').hide();

		$('#tour').mouseenter(function() {
			$('#tour_sub').show();
		}).mouseleave(function() {
			$('#tour_sub').hide();
		});
		$('#comm').mouseenter(function() {
			$('#comm_sub').show();
		}).mouseleave(function() {
			$('#comm_sub').hide();
		});
		$('#serv').mouseenter(function() {
			$('#serv_sub').show();
		}).mouseleave(function() {
			$('#serv_sub').hide();
		});
		$('#system').mouseenter(function() {
			$('#system_sub').show();
		}).mouseleave(function() {
			$('#system_sub').hide();
		});
		
		//인증번호 요청
		$('#codebtn').on('click',function() {
			var name = $('#client_name').val();
			var id = $('#client_id').val();
			var email = $('#client_email').val();
			
			if(!name || !id || !email){
				alert('이름,아이디,이메일을 확인해주세요');
				return false;
				event.preventDefault();
			}else{
				$.ajax({
					url:'../login/findpw',
					type:'POST',
					data:{client_name:name, client_id:id, client_email:email},
					beforeSend:function(){
						$('#loading').css('display','block');
						$('#imgs').css('display','block');
				    },
				    success:function(data){
				    	var check = data.FindPw
				    	if(check == null){
				    		$('#loading').css('display','none');
				    		$('#imgs').css('display','none');
				    		alert('가입하신 이름,아이디,이메일을 입력해주세요');
				    	}else{
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
				    	$('#loading').css('display','none');
				    	$('#imgs').css('display','none');
				    	$('input[name=dice2]').attr('value',data.Dice2);
				    	alert('인증번호를 발송했습니다.이메일을 확인해주세요');
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
			var id = $('#client_id').val();
			var email = $('#client_email').val();
			var code = $('#code2').val();
			var dice = $('#dice2').val();
			
			if(!name || !id || !email){
				alert('이름,아이디,이메일을 확인해주세요');
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
</head>
<body>
                        <!-- menubar start -->
   	<nav class="navbar navbar-primary">
	  <div class="container-fluid">
	    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
	      <ul class="nav navbar-nav">
	        <li class="dropdown">
	          <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false"><img src="https://github.com/uniqueHRH/travel/blob/master/travel/src/main/webapp/imgs/menubar.png?raw=true" width=40px, height=40px/></a>
	          <ul class="dropdown-menu" role="menu">
	            <li id="tour"><a href="#">투어</a>
	            	<ul id="tour_sub">
	            		<li><a href="${root }tour/eastasia">중국/일본</a></li>
	            		<li><a href="${root }tour/southeastasia">동남아시아</a></li>
	            		<li><a href="${root }tour/america">아 메 리 카</a></li>
	            		<li><a href="${root }tour/europe">유 &nbsp; &nbsp; &nbsp; &nbsp;럽</a></li>
	            		<li><a href="${root }tour/pacific">남 태 평 양</a></li>
	            		<li><a href="${root }tour/africa">아 프 리 카</a></li>
	            		<li><a href="${root }tour/theme">테 마 여 행</a></li>
	            	</ul>
	            </li>
	            <li class="divider"></li>
	            <li id="comm"><a href="#">커뮤니티</a>
		            <ul id="comm_sub">
	            		<li><a href="${root }board/review">여행후기</a></li>
	            		<li><a href="${root }board/partner">동행구하기</a></li>
	            		<li><a href="${root }board/free">자유게시판</a></li>
	            	</ul>
            	</li>
	            <li class="divider"></li>
	            <li><a id="event"href="${root }board/event">이벤트</a></li>
	            <li class="divider"></li>
	            <li id="serv"><a href="#">고객센터</a>
	            	<ul id="serv_sub">
	            		<li><a href="${root }board/notice">공 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;지</a></li>
	            		<li><a href="${root }board/qna">자주묻는질문</a></li>
	            	</ul>
	            </li>
	          </ul>
	        </li>
	      </ul>
		<div align="center" style="disply:inline-block;">
			<a href="${root }"><img src="https://github.com/uniqueHRH/travel/blob/master/travel/src/main/webapp/imgs/logoB.png?raw=true" width=80px></a>
	      <ul class="nav navbar-nav navbar-right">
	        <!-- 로그인시 숨김 -->
	        <li><a id="side" href="${root }main/login" >로그인</a></li>
	        <li><a id="side" href="${root }main/admin" >회원가입</a></li>
	      </ul>
		</div>
	    </div><!-- /.navbar-collapse -->
	  </div><!-- /.container-fluid -->
	</nav>
<!-- menubar end -->
                     <!-- contents start -->
<div class="container">
  <div class="row">
   <div class="col-md-12">
      <div class="page-header" align="center">
     <h1>비밀번호찾기</h1>
   </div>
   
    <div id="loading">
   	<img id="imgs" src="../../imgs/loadingbar.gif"/>
   </div>
   
   
   <form action="../code_check2" name="cac2" class="form-horizontal" method="post">
   		<div id="tableM">
	   		<div>
				<label for="client_name" class="col-sm-2 control-label" id="idd">이름</label>
				<input type="text" class="form-control" id="client_name" name="client_name" placeholder="이름을 입력하세요" style="width:280px">
			</div>
			<p></p>
			<div>
				<label for="client_id" class="col-sm-2 control-label" id="idd">아이디</label>
				<input type="text" class="form-control" id="client_id" name="client_id" placeholder="아이디를 입력하세요" style="width:280px">
			</div>
			<p></p>
	   		<div>
				<label for="client_email" class="col-sm-2 control-label" id="emaill">이메일</label>
				<input type="text" class="form-control" id="client_email" name="client_email" placeholder="이메일을 입력하세요" style="width:280px;float:left">
				&nbsp;<button class="btn btn-default" type="button" id="codebtn">인증요청</button>
			</div>
			<p></p>
			<div>
				<label for="code2" class="col-sm-2 control-label">인증번호</label>
	         	<input type="text" class="form-control" id="code2" name="code2" placeholder="이메일로 전송된 인증번호를 입력하세요" style="width:280px">
	         	&nbsp;<input type="text" class="input" id="count" disabled>
		     	<input type="hidden" id="dice2" name="dice2" value="" style="display: none;">
		     </div>
			<p></p>
	     <div id="btn">
	  		<button type="submit" id="confirmbtn" class="btn btn-default btn-lg">확인</button>
	  		<button type="button" id="resetbtn" class="btn btn-default btn-lg" onclick="location.href='../login'">취소</button>
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
</body>
</html>

