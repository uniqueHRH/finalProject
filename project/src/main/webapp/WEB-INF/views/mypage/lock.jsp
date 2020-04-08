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
   #table {
      	font-family:"Jua";
    }
    .form-horizontal {
    	padding-top: 50px;
    	text-align: center;
        width:590px;
      	margin: 0 auto;
    }
    #client_pw{
    	margin-left: 10px;
    }
    #resetbtn,#changepwbtn{
    	position: relative;
    	left: 70px;
    	width: 150px;
    	margin-top: 20px;
    }
     form{
     	padding: 0 0 310 0;
     }
</style>
</head>
<body>
<jsp:include page="/WEB-INF/menubar.jsp"/>
                     <!-- contents start -->
<div id="table">
    <div class="page-header" align="center">
     <h1>비밀번호 확인</h1>
   	</div>
   	<c:if test="${sessionScope.check ne null and sessionScope.staffcheck eq null}">
   <form action="../mypage/lock" class="form-horizontal" method="post">
     <div class="form-group" id="insertid" align="center">
       	 <label for="client_pw" class="col-sm-2 control-label" id="cpw">현재 비밀번호</label>
         <input type="password" class="form-control" id="client_pw" name="client_pw" style="width:350px">
         <input type="hidden" class="form-control" id="client_id" name="client_id" value="${sessionScope.check.client_id}" >
     </div>
     <div align="center">
     	<button type="submit" id="changepwbtn" class="btn btn-default btn-lg">확인</button>
     	<button type="button" id="resetbtn" class="btn btn-default btn-lg" onclick="location.href='../myinfo'">취소</button>
     </div>
    </form>
    </c:if>
   <c:if test="${sessionScope.staffcheck ne null and sessionScope.check eq null}">
   <form action="../mypage/lock2" class="form-horizontal" method="post">
     <div class="form-group" id="insertid" align="center">
       	 <label for="staff_pw" class="col-sm-2 control-label" id="cpw">현재 비밀번호</label>
         <input type="password" class="form-control" id="staff_pw" name="staff_pw" style="width:350px">
         <input type="hidden" class="form-control" id="staff_no" name="staff_no" value="${sessionScope.staffcheck.staff_no}" >
     </div>
     <div align="center">
     	<button type="submit" id="changepwbtn" class="btn btn-default btn-lg">확인</button>
     	<button type="button" id="resetbtn" class="btn btn-default btn-lg" onclick="location.href='../myinfo'">취소</button>
     </div>
     </form>
      </c:if>
      <c:if test="${msg == 'fail' }">
       	<%out.println("<script>alert('비밀번호를 확인해주세요');</script>");%>
       </c:if>
</div>   

                         <!-- contents end -->
<jsp:include page="/WEB-INF/socket.jsp"/>
<jsp:include page="/WEB-INF/footer.jsp"/>
<script type="text/javascript" src="${root }js/jquery-1.12.4.js"></script>
<script type="text/javascript" src="${root }js/bootstrap.js"></script>
<script type="text/javascript">
  
</script>
</body>
</html>
