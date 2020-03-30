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
    	text-align: center;
       width:750px;
      margin: 0 auto;
    }
    #idd,#pww {
       display:inline block;  
    }
   
    #resetbtn,#changepwbtn{
    	text-align: center;
    	margin-top: 10px;
    	width: 30%;
    }
</style>
</head>
<body>
<jsp:include page="/WEB-INF/menubar.jsp"/>
                     <!-- contents start -->
   <div class="container">
  <div class="row">
   <div class="col-md-12">
      <div class="page-header" align="center">
     <h1>비밀번호변경</h1>
   </div>
   <form action="../mypage/changepw" class="form-horizontal" method="post">
     <div class="form-group" id="insertid">
       <label for="client_pw" class="col-sm-2 control-label" id="idd">현재비밀번호</label>
       <div class="col-sm-10">
         <input type="password" class="form-control" id="client_pw" name="client_pw"style="width:350px">
       </div>
     </div>
     
     <div class="form-group">
       <label for="client_newpw1" class="col-sm-2 control-label" id="pww">새비밀번호</label>
       <div class="col-sm-10">
          <input type="password" class="form-control" id="client_newpw1" name="client_pw" placeholder="영문+숫자 조합 8자리이상" style="width:350px">
       </div>
     </div>
     
     <div class="form-group">
       <label for="client_newpw2" class="col-sm-2 control-label" id="pww">새비밀번호(확인)</label>
       <div class="col-sm-10">
          <input type="password" class="form-control" id="client_newpw2" placeholder="비밀번호를 한번 더 입력해주세요" style="width:350px">
       </div>
     </div>
     <div>
     	<button type="submit" id="changepwbtn" class="btn btn-default btn-lg btn-block">변경완료</button>
     	<button type="button" id="resetbtn" class="btn btn-default btn-lg" onclick="location.href='../login'">취소</button>
     </div>
     </form>
     
     </div>   
     
  </div>
</div>
      
                         <!-- contents end --> 
<jsp:include page="/WEB-INF/footer.jsp"/>
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
      
   });
</script>
</body>
</html>
