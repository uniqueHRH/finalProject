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
   .container{
      display: inline-block;
      font-family: 'Jua';
      text-align: center;
    }
    .form-horizontal {
       width:450px;
      margin: 0 auto;
    }
    #resetbtn,#confirmbtn{
    	text-align: center;
    	margin-top: 10px;
    	width: 40%;
    }
    
</style>
<script type="text/javascript" src="${root }js/jquery-1.12.4.js"></script>
<script type="text/javascript" src="${root }js/bootstrap.js"></script>
<script type="text/javascript">
	
</script>
</head>
<body>
 <jsp:include page="/WEB-INF/menubar.jsp"/>          
                     <!-- contents start -->
<div class="container">
  <div class="row">
   <div class="col-md-12">
      <div class="page-header" align="center">
     <h1>임시비밀번호 발급 안내</h1>
   </div>
   
   <form action="../main/PwUpdate" class="form-horizontal" method="post">
     <div class="form-group" id="insertid">
       <label class="col-sm-2 control-label" id="idd">임시 비밀번호 입니다. 로그인 후 비밀번호를 변경하세요.</label>
       <div class="col-sm-10">임시 비밀번호 : ${Password}</div>
       <input type="hidden" id="client_pw" name="client_pw" value="${Password}" style="display: none;">
       <input type="hidden" id="client_id" name="client_id" value="${id}" style="display: none;">
     </div>
     <p>
  		<button type="submit" id="resetbtn" class="btn btn-default btn-lg">로그인</button>
  		<button type="button" id="confirmbtn" class="btn btn-default btn-lg" onclick="location.href='${root }main/login/findpw'">취 소</button>
	</p>
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

