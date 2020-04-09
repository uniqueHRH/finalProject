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
	<div id="table">
		<table class="table table-hover">
		<tr>
			<td width="30%">NO/이름</td>
			<td width="40%">NO<br/></br>이름</td>
			<td width="50%">${bean.guide_no }<br/></br>${bean.guide_name }</td>
		</tr>
		<tr>
			<td>연락처/지역</td>
			<td>연락처<br/><br/>지역</td>
			<td>${bean.guide_phone }<br/><br/>${bean.guide_city }</td>
		</tr>
		<tr>
			<td>이메일</td>
			<td>이메일</td>
			<td>${bean.guide_email }</td>
		</tr>
	   </table>
	 <input type="hidden" id="guideno" value="${bean.guide_no }">
	 <a href="../guideEdit/${bean.guide_no }"><button type="button" id="editbtn" class="btn btn-default">수 정</button></a>
	 <button type="button" id="delbtn" class="btn btn-default">삭 제</button>
	 <a href="../guide"><button type="button" id="listbtn" class="btn btn-default">목 록</button></a>
	</div>
</div>
      
<!-- contents end -->
<jsp:include page="/WEB-INF/remote.jsp"/>
<jsp:include page="/WEB-INF/socket.jsp"/>
<jsp:include page="/WEB-INF/footer.jsp"/>
<script type="text/javascript" src="${root }js/jquery-1.12.4.js"></script>
<script type="text/javascript" src="${root }js/bootstrap.js"></script>
<script type="text/javascript">
   $(document).ready(function() {
		$("#delbtn").on('click',function(){
			
			if(confirm('삭제하시겠습니까?')==false){
				return false;
			}else{
				$.ajax({
                	url:'../guideDel',
               	 	type:'POST',
               	 	data:{key:$('#guideno').val()},
                	success:function() {
                    	alert('삭제되었습니다');
                    	location.href="../guide";
                },
                	error:function() {
                   	 	alert('삭제에 실패했습니다');
               		}
          		});
			}
		});
		
   });
</script>
</body>
</html>
