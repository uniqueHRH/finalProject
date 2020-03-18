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
	.container{
		display: inline-block;
		font-family: 'Jua';
		text-align: center;
		width: 100%;
	 }
	 
	 .form-horizontal {
      	width:570px;
      	margin: 0 auto;
      	text-align: center;
    }
    .table table-hover{
    	width:570px;
      	margin: 0 auto;
      	text-align: center;
    }
    .list-group{
    	width: 90%;
    	
    }
    #adminbtn{
    	width: 90%;
    }
    #client_sex{
    	width: 400px;
    	margin: 0px auto;
    	text-align: center;
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
	          </ul>
	        </li>
	      </ul>
		<div align="center" style="disply:inline-block;">
			<a href="${root }"><img src="https://github.com/uniqueHRH/travel/blob/master/travel/src/main/webapp/imgs/logoB.png?raw=true" width=80px></a>
	      <ul class="nav navbar-nav navbar-right">
	        <!-- 로그인시 숨김 -->
	        <li><a id="side" href="${root }main/login" >로그인</a></li>
	        <li><a id="side" href="${root }main/admin" >회원가입</a></li>
	        
	        <!-- 직원로그인시 -->
	        <li class="dropdown">
	          <a id="side" href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">나의페이지<span class="caret"></span></a>
	          <ul class="dropdown-menu" id="dropdown_sub" role="menu">
	            <li><a href="${root }main/staffinfo">내정보관리</a></li>
	            <li><a href="#">로그아웃</a></li>
	          </ul>
	        </li>
	        <!-- 회원로그인시 -->
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
	            <li><a href="#">로그아웃</a></li>
	          </ul>
	        </li>
	      </ul>
		</div>
	    </div><!-- /.navbar-collapse -->
	  </div><!-- /.container-fluid -->
	</nav>
<!-- contents start -->

	<div class="container">
  <div class="row">
	<div class="col-md-12">
		<div class="page-header" align="center">
	  <h1>회원가입</h1>
	</div>
	

<form action="../main/admin" class="form-horizontal" method="post">
  <div class="form-group">
    <label for="client_name" class="col-sm-2 control-label">이름</label>
    <div class="col-sm-10">
      <input type="text" class="form-control" id="client_name" name="client_name" placeholder="이름을 입력하세요" style="width:400px">
      <div id="name_check"></div>
    </div>
  </div>
  <div class="form-group">
    <label for="client_nick" class="col-sm-2 control-label">닉네임</label>
    <div class="col-sm-10">
      <input type="text" class="form-control" id="client_nick" name="client_nick1" placeholder="닉네임을 입력하세요" style="width:400px">
      <div id="nick_check"></div>
    </div>
  </div>
  <div class="form-group">
    <label for="client_id" class="col-sm-2 control-label">아이디</label>
    <div class="col-sm-10">
      <input type="text" class="form-control" id="client_id" name="client_id" placeholder="아이디를 입력하세요" style="width:400px">
      <div id="id_check"></div>
    </div>
  </div>
  <div class="form-group">
    <label for="client_pw" class="col-sm-2 control-label">비밀번호</label>
    <div class="col-sm-10">
      <input type="password" class="form-control" id="client_pw1" placeholder="영문+숫자 조합 8자리이상" style="width:400px">
      <div id="pw_check1"></div>
    </div>
  </div>
  <div class="form-group">
    <label for="client_pw" class="col-sm-2 control-label">비밀번호확인</label>
    <div class="col-sm-10">
      <input type="password" class="form-control" id="client_pw2" name="client_pw" placeholder="비밀번호를 한번 더 입력해주세요" style="width:400px">
      <div id="pw_check2"></div>
    </div>
  </div>
  <div class="form-group">
    <label for="client_sex" class="col-sm-2 control-label">성별</label>
    <div id="client_sex"><label><input type="radio" name="client_sex" id="man" value="1">&nbsp;남&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</label>
    <label><input type="radio" name="client_sex" id="woman" value="2">&nbsp;여</label></div>
  </div>
  <div class="form-group">
    <label for="client_birth" class="col-sm-2 control-label">이메일</label>
    <div class="col-sm-10">
      <input type="email" class="form-control" id="client_email" name="client_email" placeholder="E-mail을 입력하세요" style="width:400px">
  	</div>
  </div>
  <div class="form-group">
    <label for="client_birth" class="col-sm-2 control-label">생년월일</label>
    <div class="col-sm-10">
      <input type="text" class="form-control" id="client_birth" name="client_birth" placeholder="8자리로 입력하세요 ex)19920216" style="width:400px">
      <div id="birth_check"></div>
  	</div>
  </div>
  <div class="form-group">
    <label for="client_phone" class="col-sm-2 control-label">연락처</label>
    <div class="col-sm-10">
      <input type="text" class="form-control" id="client_phone" name="client_phone" placeholder="연락처를 입력하세요 ex)01012345678" style="width:400px">
      <div id="phone_check"></div>
    </div>
  </div>
	<ul class="list-group">
	  <li class="list-group-item disabled"><label>
  <input type="checkbox" id="allclause" value="allclause">&nbsp;전체 약관 동의</label></li>
	  <li class="list-group-item"><input type="checkbox" name="clause" value="clause1">&nbsp;<span data-toggle="modal" data-target="#myModal1">회원 가입 및 운영약관 동의 (필수)></span></li>
	  <li class="list-group-item"><input type="checkbox" name="clause" value="clause2">&nbsp;<span data-toggle="modal" data-target="#myModal2">개인정보 수집 및 이용 (필수)></span></li>
	  <li class="list-group-item"><input type="checkbox" name="clause" value="clause3">&nbsp;<span data-toggle="modal" data-target="#myModal3">위치정보 이용약관 (필수)> </span></li>
	</ul>
 		
			<!-- 약관1 start -->
<div class="modal fade" id="myModal1" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title" id="myModalLabel">회원 가입 및 운영약관 동의 (필수)</h4>
      </div>
      <div class="modal-body">
       <div style="font-size: 20px;">제 1 조 (목적)</div>
이 약관은 주식회사 여행사용설명서(이하 "당사"이라 합니다)이 운영하는 웹사이트및 어플리케이션(Application)에서 제공하는 서비스(이하 "서비스"라 합니다)를 이용함에 있어 "당사"와 이용자의 권리 및 의무 및 책임사항을 규정함을 목적으로 합니다.</div>
<div style="font-size: 20px;">제 2 조 (정의)</div>
<div>1. "당사"란 서비스를 제공하는 (주)여행사용설명서를 말하며, (주)여행사용설명서 중개 및 판매하는 재화 또는 용역(이하 "재화 등"이라 합니다)을 이용자에게 제공하기 위하여 컴퓨터 등 정보통신설비를 이용하여 재화 등을 거래할 수 있도록 설정한 가상의 영업장인 사이버 몰의 의미로도 사용합니다.
<div>2. "이용자"란 "당사"에 접속하여 이 약관에 따라 "당사"가 제공하는 서비스를 받는 회원을 말합니다.</div>
<div>3. "회원"이라 함은 "당사"에 개인정보를 제공하여 회원등록을 한 자로서,"당사"의 정보를 지속적으로 제공받으며,"당사"가 제공하는 서비스를 계속적으로 이용할 수 있는 자를 말합니다.</div>
<div>4. “파트너"라고 함은 당사가 여행자에게 중개한 자로서 여행자에게 각종 여행 서비스를 제공하는 자를 말합니다.</div>
<div>5. "가이드"라고 함은 파트너 중 마이리얼트립 플랫폼을 통해 직접 여행지에서 여행자에게 투어 서비스를 제공하는 자를 말합니다.</div>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">확인</button>
      </div>
    </div>
  </div>
</div>			
			<!--약관1 end-->
	<!-- 약관2 start -->
<div class="modal fade" id="myModal2" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title" id="myModalLabel">개인정보 수집 및 이용 (필수)</h4>
      </div>
      <div class="modal-body">
 <div style="font-size: 20px;">1. 개인정보 수집 및 이용목적</div>
<div>당사는 여행상품 판매 및 중개, 고객관리 등의 업무를 처리하기 위하여 고객으로부터 최소한의 필수정보를 수집하며, 수집한 모든 개인정보는 고객의 별도 동의가 없는 이상 동의 받은 목적 외 다른 목적으로 사용하지 않습니다.
당사는 다음 목적을 위하여 고객으로부터 수집한 개인정보를 사용합니다.</div>
<div style="font-size: 20px;">2. 개인정보 수집 항목 및 보유 및 이용기간</div>
<div>당사는 고객의 개인정보를 정보통신망법, 개인정보보호법 등 관계법령에 따라 적법한 절차를 거쳐 수집하고, 수집 및 이용 목적에 필요한 최소한의 정보만을 수집하고 있습니다.</div>
<div>또한, 당사는 보유 및 이용기간이 종료된 개인정보를 전자적 파일은 복원이 불가능한 방법으로 영구 삭제하고, 종이 문서는 파쇄 또는 소각함으로써 재생 불가능한 방법으로 파기하고 있습니다.</div>

      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">확인</button>
      </div>
    </div>
  </div>
</div>			
			<!--약관2 end-->
			<!-- 약관3 start -->
<div class="modal fade" id="myModal3" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title" id="myModalLabel">위치정보 이용약관 (필수)</h4>
      </div>
      <div class="modal-body">
      <div style="font-size: 20px;"> 제1조 (목적)</div>
<div>본 약관은 회원(주식회사 마이리얼트립의 서비스 이용약관에 동의한 자를 말합니다. 이하 “회원” 또는 “개인위치정보주체”이라고 합니다.)</div>
<div>이 주식회사 마이리얼트립(이하 “당사”라고 합니다.)이 운영하는 웹사이트 및 어플리케이션(Application, 이하 웹사이트와 어플리케이션을 통칭하여 “당사 플랫폼”)에서 제공하는 위치기반서비스(이하 “서비스”라고 합니다.)를 이용함에 있어 당사와 개인위치정보주체(회원)간의 권리, 의무 및 책임사항, 기타 필요한 사항을 규정함을 목적으로 합니다.</div>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">확인</button>
      </div>
    </div>
  </div>
</div>			

<button type="submit" id="adminbtn" class="btn btn-default btn-lg btn-block" disabled="disabled">회원가입</button>
 </form>
   </div>	
  </div>
</div>
    <!-- 약관3 end --> 
 <div class="row">
	<div class="col-md-12">
    <div class="footer">
    	<img id="footer1" src="https://github.com/uniqueHRH/travel/blob/master/src/main/webapp/imgs/footer1.jpg?raw=true" alt="">
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
		//clause
		$('#allclause').click(function() {
			if($('#allclause').prop("checked")){
	        	  $("input[name=clause]").prop("checked",true);
	        }else{
	              $("input[name=clause]").prop("checked",false);
	        }
	    });
		// content
		$('#adminbtn').on('click',function() {
			alert('회원가입이 완료되었습니다');
		});
		
		//유효성검사
		$('#client_name').blur(function(){
			var name = /^[가-힣]{2,4}$/;
			var namecheck = name.test($("#client_name").val());
			
			if(namecheck){
				$('#name_check').text('');
			}else{
				$('#name_check').text('이름을 확인해주세요');
				$('#name_check').css('color', 'red');
			}
		});
		
		$('#client_nick').blur(function(){
			var nick =  /^[\w\Wㄱ-ㅎㅏ-ㅣ가-힣]{2,15}$/;
			var nickcheck = nick.test($("#client_nick").val());
			
			if(nickcheck){
				$('#nick_check').text('');
			}else{
				$('#nick_check').text('2~15글자이내만 가능합니다');
				$('#nick_check').css('color', 'red');
			}
		});
		$('#client_id').blur(function(){
			var id = /^[A-Za-z0-9]{4,20}$/;
			var idcheck = id.test($("#client_id").val());
			
			if(idcheck){
				$('#id_check').text('');
			}else{
				$('#id_check').text('4-15자이내 영문(대,소),숫자만 가능합니다');
				$('#id_check').css('color', 'red');
			}
		});
		
		
		$('#client_pw1').blur(function(){
			var pw = /^.*(?=.{8,20})(?=.*[0-9])(?=.*[a-zA-Z]).*$/;
			var pwcheck = pw.test($("#client_pw1").val());
			
			if(pwcheck){
				$('#pw_check1').text('');
			}else{
				$('#pw_check1').text('비밀번호를 확인해주세요');
				$('#pw_check1').css('color', 'red');
			}
		});
		$('#client_pw2').blur(function(){
			var pw1 = $("#client_pw1").val();
			var pw2 = $("#client_pw2").val();
			if(pw1==pw2){
				$('#pw_check2').text('');
			}else{
				$('#pw_check2').text('비밀번호가 일치하지 않습니다');
				$('#pw_check2').css('color', 'red');
			}
		});
		$('#client_birth').blur(function(){
			var birth = /^(19[0-9][0-9]|20\d{2})(0[0-9]|1[0-2])(0[1-9]|[1-2][0-9]|3[0-1])$/;
			var birthcheck = birth.test($("#client_birth").val());
			
			if(birthcheck){
				$('#birth_check').text('');
			}else{
				$('#birth_check').text('8자리로 입력하세요 ex)19920216');
				$('#birth_check').css('color', 'red');
			}
		});
		$('#client_phone').blur(function(){
			var phone = /(01[016789])([1-9]{1}[0-9]{2,3})([0-9]{4})$/;
			var phonecheck = phone.test($("#client_phone").val());
			
			if(phonecheck){
				$('#phone_check').text('');
				$('#adminbtn').removeAttr('disabled');
			}else{
				$('#adminbtn').prop('disabled','disabled');
				$('#phone_check').text('ex)01012345678');
				$('#phone_check').css('color', 'red');
			}
		});
	
	});
		
</script>
</body>
</html>