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
	#table1 {
		font-family: 'Jua';
	}
	p {
		margin:0 auto;
		font-size:18px;
	}
    #infocomm{
    	font-size: 20px;
    }
    #table {
    	width:50%;
    	margin:0px auto;
    	text-align: center;
    }
   #table tr{
   		text-align: center;
   }
   #table tr td{
   		text-align: center;
   		font-size: 15px;
   }
   		
   #changeinfobtn{
   		width: 150px;
   }
</style>
</head>
<body>
<jsp:include page="/WEB-INF/menubar.jsp"/>

<!-- menubar end -->
                     <!-- contents start -->
 
 <div id="table1">
 	 <div class="page-header" align="center">
    	 <h1>직원 정보</h1>
  	 </div>
 <form class="form-horizontal" method="post">
	<div id="table">
		<table class="table table-hover">
		<tr>
			<td width="30%">번호/이름</td>
			<td width="40%">번호<br/></br>이름</td>
			<td width="50%">${bean.guide_no }<br/></br><input type="text" id="guide_name" name="guide_name" value="${bean.guide_name }"/></td>
			<input type="hidden" id="guide_no" name="guide_no" value="${bean.guide_no }"/>
		</tr>
		<tr>
			<td>연락처/지역</td>
			<td>연락처<br/><br/>지역</td>
			<td><input type="text" id="guide_phone" name="guide_phone" value="${bean.guide_phone }"/><br/><br/><input type="text" id="guide_city" name="guide_city" value="${bean.guide_city }"/></td>
		</tr>
		<tr>
			<td>이메일</td>
			<td>이메일</td>
			<td><input type="text" id="guide_email" name="guide_email" value="${bean.guide_email }"/></td>
		</tr>
	   </table>
	 <button type="submit" id="changeinfobtn" class="btn btn-default">수정완료</button>
	 <a href="../guideDe/${bean.guide_no}"><button type="button" id="changeinfobtn" class="btn btn-default">취 소</button></a>
	</div>
</form>
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
