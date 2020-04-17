<%@page import="org.springframework.web.context.annotation.SessionScope"%>
<%@page import="java.nio.channels.SeekableByteChannel"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page pageEncoding="utf-8" import="com.bit.project.model.entity.*, java.util.List"%>
<link href="https://fonts.googleapis.com/css?family=Jua&display=swap&subset=korean" rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Jua|Noto+Sans+KR&display=swap" rel="stylesheet">
<c:url value="/" var="root"></c:url>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge"/>
<meta name="viewport" content="user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, width=device-width"/>

<link rel="stylesheet" type="text/css" href="${root }css/bootstrap.css" />
<style type="text/css">


#right_zzim {

position: fixed;

top: 120px;

left: 54%;

margin-left: 530px;

border:1px solid #B0B5BD;

width:265px;

height:600px;

}
#rightSide #right_zzim  div {text-align:center;}

#rightSide #right_zzim  div.recTit{line-height:1.5em;padding:5px;color:white;background-color:#505A69;}


#rightSide #right_zzim ul {
	list-style: none;
	padding-left:0px;
	min-height: 300px;
}

#rightSide #right_zzim  li{text-align:center;padding:5px;position:relative;} 







</style>
</head>
<body>

<div id="rightSide">

	<div style="overflow: scroll;width:265px; height:600px;" id="right_zzim">

		<div  class="recTit">최근본상품 <span id=recentCnt></span></div>
			<ul>
			   <!-- 본 상품이 뿌려질 부분  -->
			</ul> 

	</div>

</div> 





<script src="//developers.kakao.com/sdk/js/kakao.min.js"></script>
<script type="text/javascript" src="${root }js/jquery-1.12.4.js"></script>
<script type="text/javascript" src="${root }js/bootstrap.js"></script>
<script type="text/javascript">
$(document).ready(function() {
	 var list= '${sessionScope.Coolist2}';
	 var list2 = list.replace('[','');
	 var list3 = list2.replace(']','');
	 var list4 = list3.split(',');
	 if(list4 ==''){
	 }else{
	 	for(var i=0; i<list4.length-(2*i-1); i++){
			 $('#right_zzim ul').append('<li><a href="/project/tour/detail/'+list4[2*i+1]+'"><img src="'+list4[2*i]+'"></a></li>');
 	 	}
	 }
	
});
</script>
</body>
</html>