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
    #loginbar{
    	width: 600px;
    	margin: 0px auto;
    	padding-bottom: 30px;
    }
    .form-horizontal {
       width:450px;
      margin: 0 auto;
    }
   
    #loginbtn{
       margin: 0px auto;
       text-align:center;
       width: 90%;
    }
    #idd,#pww {
       display:inline block;
    }
   
 
</style>
</head>
<body>
<jsp:include page="/WEB-INF/menubar.jsp"/>
                        <!-- menubar start -->

<!-- menubar end -->
                     <!-- contents start -->
   <div class="container">
  <div class="row">
   <div class="col-md-12">
      <div class="page-header" align="center">
     <h1>로그인</h1>
   </div>
   			<!-- loginbar start-->
   <ul class="nav nav-tabs nav-justified" id="loginbar">
 	 <li role="presentation"><a href="${root }main/login">회원로그인</a></li>
  	<li role="presentation" class="active"><a href="${root }main/stafflogin">직원로그인</a></li>
	</ul>
  			 <!-- loginbar end -->
      
   	<!-- 직원로그인start -->
   <form class="form-horizontal" method="post">
     <div class="form-group" id="insertid">
       <label for="staff_no" class="col-sm-2 control-label" id="idd">사번</label>
       <div class="col-sm-10">
         <input type="text" class="form-control" id=staff_no" name="staff_no" placeholder="사번을 입력하세요" style="width:350px">
       </div>
     </div>
     <div class="form-group">
       <label for="staff_pw" class="col-sm-2 control-label" pw="pww">비밀번호</label>
       <div class="col-sm-10">
         <input type="password" class="form-control" id="staff_pw" name="staff_pw" placeholder="비밀번호를 입력하세요" style="width:350px">
       </div>
     </div>
     <c:if test="${msg == 'fail' }">
     		<%out.println("<script>alert('사번과 비밀번호를 확인해주세요');</script>");%>
     </c:if>
     <button type="submit" id="loginbtn" class="btn btn-default btn-lg btn-block">로그인</button>
     </form>
     
     
     								<!-- 직원로그인 end -->   
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
 
 <script type="text/javascript" src="${root }js/jquery-1.12.4.js"></script>
<script type="text/javascript" src="${root }js/bootstrap.js"></script>
<script type="text/javascript">
  
</script>
</body>

</html>
