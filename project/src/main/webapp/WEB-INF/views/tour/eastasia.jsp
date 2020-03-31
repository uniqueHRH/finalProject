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
		font-family: 'Jua';
		text-align: center;
		width: 1200px;
		margin-left: 330px;
	}
	.thumbnail{
		width: 330px;
	}
	#mainimg{
		width: 300px;
		padding-top: 15px;
		padding-left: 10px;
		padding-right: 10px;		
	}	
	.caption div{
		width:100%;
		height:30px;		
	}
</style>

</head>
<body>
<jsp:include page="/WEB-INF/menubar.jsp"/>
<div class="container">     
 <div class="row">
	<div class="col-md-12">	
		<div class="page-header" align="center">
	  <h1>중국/일본</h1>
 </div>
	</div>

<div class="row">
	
<c:forEach items="${list }" var="bean">
  <a href="${root }tour/eastasia/${bean.tour_no}"><div class="col-sm-6 col-md-4">
    <div class="thumbnail">
      <img src="${bean.mainimg }" alt="" id="mainimg">
      <div class="caption">
        <h3>${bean.name }</h3>
        <div style="font-size: 20px;">
        	${bean.city }(${bean.country })
        </div>
        <div style="color: red; font-size: 20px;">
        ${bean.cost }원
        </div>
      </div>
    </div>
  </div> 
  </a> 
</c:forEach>
 
  </div>
 </div>
</div>
	<div id="footer">
		<jsp:include page="/WEB-INF/footer.jsp"/>
	</div>
<script type="text/javascript" src="${root }js/jquery-1.12.4.js"></script>
<script type="text/javascript" src="${root }js/bootstrap.js"></script>
<script type="text/javascript">
	
</script>
</body>
</html>