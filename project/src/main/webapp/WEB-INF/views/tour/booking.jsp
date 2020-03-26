<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page pageEncoding="utf-8" %>
<link href="https://fonts.googleapis.com/css?family=Jua&display=swap&subset=korean" rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Jua|Noto+Sans+KR&display=swap" rel="stylesheet">
<c:url value="/" var="root"></c:url>
<html>
<head>
<meta charset="utf-8">


<title>Login</title>
<link rel="stylesheet" type="text/css" href="${root }css/bootstrap.css" />
<link rel="stylesheet" type="text/css" href="${root }css/travel.css" />

<style type="text/css">
   .container{
      display: inline-block;
      font-family: 'Jua';
      text-align: center;
      width: 100%; 
    }
    .form-horizontal {
       width:700px;
       position: absolute;
       left: 400px;
       top: 230px;
    }
    #paid_count1{
    	width: 300px;
    }
    #countlabel{
    	margin-right: 15px;
    }
    #img{
    	width: 380px;
    	position: absolute;
    	right: 500px;
    	margin-top: 50px;
    }
    #infor1{
    	width: 330px;
    	position: absolute;
    	right: 550px;
    	top: 470px;
    
    }
    #infor2{
    	width: 280px;
    	position: absolute;
    	right: 600px;
    	top: 570px;
    
    }
    #checkcostbtn{
    	position: absolute;
    	right: 520px;
    	top: 575px;
    }
    #confirmbtn{
    	width: 200px;
    	position: absolute;
    	left: 620px;
    	top: 570px;
    }
    #bookbtn{
    	width: 300px;
    	position: absolute;
    	right: 560px;
    	top: 650px;
    }
    .page-header1{
    	position: absolute;
    	top: 720px;
    	left: 300px;
    }
    .page-header2{
    	position: absolute;
    	top: 1020px;
    	left: 300px;
    }
   #caution{
   		position: absolute;
   		top: 780px;
   		left: 300px;
   	
   }
   #clause{
   		position: absolute;
   		width: 800px;
   		top: 1100px;
    	left: 300px;
   }
   .checkbox{
   		position: absolute;
   		top: 1670px;
    	left: 730px;	
   }
   input[type="checkbox"]{
		width: 17px; 
		height: 17px; 
}
</style>
<script type="text/javascript" src="${root }js/jquery-1.12.4.js"></script>
<script type="text/javascript" src="${root }js/bootstrap.js"></script>
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
	           <c:if test="${sessionScope.staffcheck ne null }">
	            <li class="divider"></li>
	            <li id="system"><a href="#">시스템관리</a>
	            	<ul id="system_sub">
	            		<li><a href="${root }system/staff">직원 관리</a></li>
	            		<li><a href="${root }system/guide">가이드관리</a></li>
	            		<li><a href="${root }system/client">회원관리</a></li>
	            		<li><a href="${root }system/paid">결제관리</a></li>
	            		<li><a href="${root }system/report">신고관리</a></li>
	            	</ul>
	            </li>
	            </c:if>
	          </ul>
	        </li>
	      </ul>
		<div align="center" style="disply:inline-block;">
			<a href="${root }"><img src="https://github.com/uniqueHRH/travel/blob/master/travel/src/main/webapp/imgs/logoB.png?raw=true" width=80px></a>
	      <ul class="nav navbar-nav navbar-right">
	        <!-- 로그인시 숨김 -->
	        <c:if test="${sessionScope.check eq null && sessionScope.staffcheck eq null }">
	        <li><a id="side" href="${root }main/login" >로그인</a></li>
	        <li><a id="side" href="${root }main/admin" >회원가입</a></li>
	        </c:if>
	        <!-- 직원로그인시 -->
	        <c:if test="${sessionScope.staffcheck ne null }">
	        <li class="log">${sessionScope.staffcheck.staff_name}님 환영합니다</li>
	        <li class="dropdown">
	          <a id="side" href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">나의페이지<span class="caret"></span></a>
	          <ul class="dropdown-menu" id="dropdown_sub" role="menu">
	            <li><a href="${root }main/staffinfo">내정보관리</a></li>
	            <li><a href="${root }main/logout">로그아웃</a></li>
	          </ul>
	        </li>
	        </c:if>
	        <!-- 회원로그인시 -->
	        <c:if test="${sessionScope.check ne null }">
			<li class="log">${sessionScope.check.client_nick1}님 환영합니다</li>
	        <li class="dropdown">
	          <a id="side" href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">나의페이지<span class="caret"></span></a>
	          <ul class="dropdown-menu" id="dropdown_sub" role="menu">
	            <li><a href="${root }main/message">쪽지함</a></li>
	            <li class="divider"></li>
	            <li><a href="#">최근본상품</a></li>
	            <li><a href="${root }main/wish">찜한상품</a></li>
	            <li><a href="#">결제상품</a></li>
	            <li class="divider"></li>
	            <li><a href="#">내가쓴글</a></li>
	            <li class="divider"></li>
	            <li><a href="${root }main/myinfo">내정보관리</a></li>
	            <li><a href="${root }main/logout">로그아웃</a></li>
	          </ul>
	        </li>
	        </c:if>
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
				<h1>예약하기</h1>
			</div>
			
	<div id="allinfo">
		<img id="img" src="${bean.firstimg }">
			
			<table class="table" id="infor1">
				<tr>
					<td class="active" style="width: 100px; text-align: center;">상품명</td>
					
					<td>${bean.name }</td>
				</tr>
				<tr>
					<td class="active" style="text-align: center;">1인 상품가</td>
					<td>${bean.cost } 원</td>	
				<tr>	
			</table>
			 <button type="button" id="checkcostbtn" class="btn btn-default">총 금액확인</button>
			
			<table class="table" id="infor2">
				<tr>
					<td class="active" style="width: 100px; text-align: center;">총 상품가</td>
					<td> </td>	
				<tr>	
			</table>
		</div>
      <p style="font-size: 25px; margin-top: 50px; position: absolute; left: 600px; top: 130px;" >예약자 정보</p>
		<form class="form-horizontal">
			<div id="form-group">
				<div class="form-group">
					<label for="tour_date1" class="col-sm-2 control-label">여행일</label>
					<div class="col-sm-10">
						<input type="date" class="form-control" id="tour_date1" style="width:300px" >
						<div id="date_check"></div>
					</div>
				</div>
				<div class="form-group">
					<label for="paid_name1" class="col-sm-2 control-label" >여행자 이름</label>
					<div class="col-sm-10">
						<input type="text" class="form-control" id="paid_name1" placeholder="대표자 이름을 입력하세요" style="width:300px" >
						<div id="name_check"></div>
					</div>
				</div>
				<div class="form-group">
					<label for="paid_count1" class="col-sm-2 control-label" id="countlabel">여행인원</label>
					<select class="form-control" id="paid_count1">
									  <option value="">인원수를 선택해 주세요.</option>
									  <option value="1">1명</option>
									  <option value="2">2명</option>
									  <option value="3">3명</option>
									  <option value="4">4명</option>
									  <option value="5">5명</option>
									  <option value="6">6명</option>
									  <option value="7">7명</option>
									  <option value="8">8명</option>
									  <option value="9">9명</option>				  
					</select>
					<div id="count_check"></div>
				</div>
				<div class="form-group">
					<label for="paid_phone1" class="col-sm-2 control-label" >여행자 연락처</label>
					<div class="col-sm-10">
						<input type="text" class="form-control" id="paid_phone1" placeholder="대표자연락처를 입력하세요" style="width:300px" >
						<div id="phone_check"></div>
					</div>
				</div>
				<div class="form-group">
					<label for="paid_birth1" class="col-sm-2 control-label">여행자 생년월일</label>
					<div class="col-sm-10">
						<input type="text" class="form-control" id="paid_birth1" placeholder="대표자 생년월일을 입력하세요" style="width:300px" >
					<div id="birth_check"></div>
					</div>
				</div>
				<div class="form-group">
					<label for="paid_kakaoid1" class="col-sm-2 control-label">카카오톡 아이디</label>
					<div class="col-sm-10">
						<input type="text" class="form-control" id="paid_kakaoid1" placeholder="카카오톡아이디를 입력하세요(선택)" style="width:300px">
					</div>
				</div>
			</div>	
		</form> 
				<button id="confirmbtn" class="btn btn-default btn-lg btn-block">확인</button>
				
				<div class="page-header1" >
				  <h2>주의사항 </h2>
				</div>
		<img id="caution" src="https://github.com/uniqueHRH/final/blob/master/project/src/main/webapp/imgs/caution.png?raw=true">
		<div class="page-header2" >
				  <h2>약관</h2>
				</div>
		 <!-- Nav tabs -->
<div id="clause"> 
  <div>
	  <ul class="nav nav-tabs" role="tablist">
	    <li role="presentation" class="active"><a href="#healing" aria-controls="healing" role="tab" data-toggle="tab" style="width: 250px;">특별약관(필수)</a></li>
	    <li role="presentation"><a href="#snap" aria-controls="snap" role="tab" data-toggle="tab" style="width: 250px;">개인정보 수정 및 이용동의(필수)</a></li>
	    <li role="presentation"><a href="#activity" aria-controls="activity" role="tab" data-toggle="tab" style="width: 250px;">개인정보 수정 및 이용동의(필수)</a></li>
	    
	  </ul>
  </div>
  <!-- Tab panes -->
	  <div class="tab-content">
	    <div role="tabpanel" class="tab-pane active" id="healing">
	    	<img src="https://github.com/uniqueHRH/final/blob/master/project/src/main/webapp/imgs/clause1.png?raw=true">
	    </div>
	    <div role="tabpanel" class="tab-pane" id="snap">
	    	<img src="https://github.com/uniqueHRH/final/blob/master/project/src/main/webapp/imgs/clause2.png?raw=true">
	    </div>
	    <div role="tabpanel" class="tab-pane" id="activity">
	    	<img src="https://github.com/uniqueHRH/final/blob/master/project/src/main/webapp/imgs/clause3.png?raw=true">
	    </div>
	    
	  </div>
</div> 	

<div class="checkbox">
    <label style="font-size: 23px;">
      <input id="allclause" type="checkbox">위 약관에 모두 동의합니다.
    </label>
  </div>  
			<!-- jquery로 생성되는 form tag -->	
			<form id="bookform" name="bookform" method="post">	
				<input type="hidden" id="tour_no" name="tour_no" value="${bean.tour_no }">
			<button type="submit" id="bookbtn" class="btn btn-default btn-lg btn-block">예약하기</button>
			</form>	
		</div>	
	</div>
</div>
<!-- contents end -->

 <div class="row">
   <div class="col-md-12">
    <div class="footer">
    	
    </div>
   </div>
 </div> 
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
		$('#confirmbtn').click(function(){
			
			var tour_date=$('#tour_date1').val();
			var paid_name=$('#paid_name1').val();
			var paid_count=$("#paid_count1 option:selected").val();
			var paid_phone=$('#paid_phone1').val();
			var paid_birth=$('#paid_birth1').val();
			var paid_kakaoid=$('#paid_kakaoid1').val();
			var paid_total=Number(paid_count)*Number(${bean.cost });
	
			if(tour_date=="" | paid_name=="" | paid_count=="" | paid_phone=="" | paid_birth==""){
						alert('예약자정보를 입력해주세요');
				return false;
			}else{
			//hidden input 값 받아오는 함수
			$('#bookform').append('<input type="hidden" id="client_name" name="client_name" value="'+'${sessionScope.check.client_name}'+'">');
			$('#bookform').append('<input type="hidden" id="tour_date" name="tour_date" value="'+tour_date+'">');
			$('#bookform').append('<input type="hidden" id="paid_name" name="paid_name" value="'+paid_name+'">');
			$('#bookform').append('<input type="hidden" id="paid_count" name="paid_count" value="'+paid_count+'">');
			$('#bookform').append('<input type="hidden" id="paid_phone" name="paid_phone" value="'+paid_phone+'">');
			$('#bookform').append('<input type="hidden" id="paid_birth" name="paid_birth" value="'+paid_birth+'">');
			$('#bookform').append('<input type="hidden" id="paid_kakaoid" name="paid_kakaoid" value="'+paid_kakaoid+'">');
			$('#bookform').append('<input type="hidden" id="paid_total" name="paid_total" value="'+paid_total+'">');
			//hidden input end
			$(this).hide();
			$('#tour_date1').attr('readonly',true);
			$('#paid_name1').attr('readonly',true);
			$('#paid_count1').attr('readonly',true);
			$('#paid_phone1').attr('readonly',true);
			$('#paid_birth1').attr('readonly',true);
			$('#paid_kakaoid1').attr('readonly',true);
			
			}
  		});
		$('#bookbtn').click(function(){
			var tour_date=$('#tour_date1').val();
			var paid_name=$('#paid_name1').val();
			var paid_count=$("#paid_count1 option:selected").val();
			var paid_phone=$('#paid_phone1').val();
			var paid_birth=$('#paid_birth1').val();
		
			if(tour_date=="" | paid_name=="" | paid_count=="" | paid_phone=="" | paid_birth==""){
				alert('예약자정보를 입력해주세요');
				return false;
			}
			$('form[name="bookform"]').bind('submit',function(){
				if($('#allclause').prop('checked') == false){
			    	alert('필수 약관에 동의 하셔야 합니다.');
			    	return false;
				}else{
					alert('회원가입이 완료되었습니다.');
					return true;
				}
			});
			
		});
		
		
		$('#checkcostbtn').click(function(){
			
			var paid_count=$("#paid_count1 option:selected").val();
			var paid_total=Number(paid_count)*Number(${bean.cost });
			if(paid_count==""){
				alert("인원수를 선택해주세요");
				return false;
			}
			//총 금액 함수
			$('#infor2 tr:nth-child(1)>td:last').remove();
			$('#infor2 tr:nth-child(1)').append('<td style="color: red;">'+paid_total+'&nbsp원</td>');
			//총금액함수 end
		});
		//날짜 유효성검사
		$('#tour_date1').blur(function(){
			var tour_date1 = /^(19|20)\d{2}-(0[1-9]|1[012])-(0[1-9]|[12][0-9]|3[0-1])$/; 
			var datecheck = tour_date1.test($("#tour_date1").val());
			
			if(datecheck){
				$('#date_check').text('');
			}else{
				$('#date_check').text('날짜를 선택해주세요');
				$('#date_check').css('color', 'red');
			}
		});
		//이름 유효성검사
		$('#paid_name1').blur(function(){
			var name = /^[가-힣]{2,4}$/;
			var namecheck = name.test($("#paid_name1").val());
			
			if(namecheck){
				$('#name_check').text('');
			}else{
				$('#name_check').text('이름을 확인해주세요');
				$('#name_check').css('color', 'red');
			}
		});
		$('#paid_count1').blur(function(){
			if($('#paid_count1').val()==""){
				$('#count_check').text('인원수를 선택해주세요');
				$('#count_check').css('color', 'red');
				return false;
			}else{
				$('#count_check').text('');
			}
		});
		$('#paid_phone1').blur(function(){
			var phone = /(01[016789])([1-9]{1}[0-9]{2,3})([0-9]{4})$/;
			var phonecheck = phone.test($("#paid_phone1").val());
			
			if(phonecheck){
				$('#phone_check').text('');
				return true;
			}else{
				$('#phone_check').text('양식에 맞게 작성해주세요 ex)01012345678');
				$('#phone_check').css('color', 'red');
				return false;
			}
		
		});
		$('#paid_birth1').blur(function(){
			var birth = /^(19[0-9][0-9]|20\d{2})(0[0-9]|1[0-2])(0[1-9]|[1-2][0-9]|3[0-1])$/;
			var birthcheck = birth.test($("#paid_birth1").val());
			
			if(birthcheck){
				$('#birth_check').text('');
			}else{
				$('#birth_check').text('8자리로 입력하세요 ex)19920216');
				$('#birth_check').css('color', 'red');
			}
		});
		
		
	});
</script>
</body>
</html>
