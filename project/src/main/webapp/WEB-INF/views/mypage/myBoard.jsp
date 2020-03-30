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
<link rel="stylesheet" type="text/css" href="${root }css/travel.css" />
<link rel="stylesheet" type="text/css" href="${root }css/review.css" />
<style type="text/css">
	#table>thead th:nth-child(1) {
		width:40px;
		background-color:red;
	}
	#table>thead th:nth-child(2) {
		width:315px;
		background-color:yellow;
	}
	#table>thead th:nth-child(3) {
		width:90px;
		background-color:blue;
	}
	#table>thead th:nth-child(4) {
		width:70px;
		background-color:green;
	}
	#table>tbody td:nth-child(4) {
		text-align:left;
	}
	#table>tbody td>a {
		text-decoration:none;
	}
	#table>tbody td>a:hover {
		color:black;
	}
/* 리모컨 */ 
	#remote {
		position:fixed;
		left:1350px;
		top:245px;
		width:100px;
	}
	#kakaoChat, #top {
		height:40px;
	}
	img {
		width:100px;
		padding:0px;
		margin:0px;
	}
</style>

</head>
<body>
   <!-- menubar start -->
<jsp:include page="/WEB-INF/menubar.jsp"/>
<!-- contents start -->
<div class="container">
  <div class="row">
   <div class="col-md-12">
      <div class="page-header" id="page-header" align="center">
     <h1>MyBoard</h1>
   </div>
   
	
   
<table class="table table-hover" id="table">
<!-- 정렬 드롭다운 -->
	<div class="topMenu" id="theme">
		<select id="dropdownMenu1">
		    <option value="정렬">정 &nbsp;렬</option>
		    <option value="나라별">나라별</option>
		    <option value="테마별">테마별</option>
		</select>
		<a class="btn btn-default" href="#" role="button" id="sel">조회</a>
		<div id="fff"></div>
	   <input type="hidden" id="loginCk" value="${sessionScope.check.client_nick1}"/>
	</div>

<!-- 리스트 출력 -->
   <thead>
      <tr class="active">
         <th>#</th>
         <th>제목</th>
         <th>닉네임</th>
         <th>날짜</th>
      </tr>
   </thead>
   <tbody>
		<c:forEach items="${list }" var="bean">
		<c:set var="i" value="${i+1 }"/>
		<tr>
			<td>${i }</td>
			<td><a href="detail/${bean.board_no }">[${bean.board_land }]</a></td>
			<td><a href="detail/${bean.board_no }">[${bean.board_theme }]</a></td>
			<td><a href="detail/${bean.board_no }">${bean.board_sub }</a></td>
		</tr>
		</c:forEach>
   </tbody>
</table>

<nav id="pageNum">
<!-- 페이지넘버링 -->
	<ul class="btn-group pagination">
		<c:if test="${pg.prev }">
			<li><a href='<c:url value="/board/boardList?page=${pg.startPage-1 }"/>'><i class="fa fa-chevron-left"></i></a></li>
		</c:if>
		<c:forEach begin="${pg.startPage }" end="${pg.endPage }" var="pageNum">
			<li><a href='<c:url value="/board/review?page=${pageNum }"/>'><i class="fa">${pageNum }</i></a></li>
		</c:forEach>
		<c:if test="${pg.next && pg.endPage >0 }">
			<li><a href='<c:url value="/board/boardList?page=${pg.endPage+1 }"/>'><i class="fa fa-chevron-right"></i></a></li>
	    </c:if>
	</ul>


<!-- 검색 -->
   <div class="topMenu" id="search">
		<select id="dropdownMenu2">
		    <option value="정렬">검 &nbsp;색</option>
		    <option value="나라별">나라별</option>
		    <option value="테마별">테마별</option>
		</select>
      <input type="text" class="form-control" id="client_id" name="wri" style="width:200px; display:inline-block;">
		<a class="btn btn-default" href="#" role="button" id="searchGo">G O</a>
		<div id="fff"></div>
	</div>
	
</nav>

<!-- 리모컨 -->
	<div class="btn-group-vertical fixed-top" id="remote" role="group" aria-label="...">
		<div id="kakao-talk-channel-chat-button"></div>
		<button type="button" class="btn btn-default" id="top">TOP ▲</button>
	</div>



      </div>
   </div>
</div>

<!-- contents end -->

<jsp:include page="/WEB-INF/footer.jsp"/>
<script src="//developers.kakao.com/sdk/js/kakao.min.js"></script>
<script type="text/javascript" src="${root }js/jquery-1.12.4.js"></script>
<script type="text/javascript" src="${root }js/bootstrap.js"></script>
<script type="text/javascript">
	$(document).ready(function() {
		$('#hamb').hide();
		$('#hide').hide();
		
		$('#tour_sub').hide();
		$('#comm_sub').hide();
		$('#serv_sub').hide();
		$('#system_sub').hide();
		
		$('#maintext1').hide();
		$('#maintext2').hide();
		$('#maintext3').hide();
		$('#maintext4').hide();
		
		$('#hambBtn').mouseenter(function() {
			$('#hamb').show();
			$(this).hide();
		});
		$('#hamb').mouseenter(function() {
			$(this).show();
			$('#hambBtn').hide();
		}).mouseleave(function() {
			$('#hamb').hide();
			$('#hambBtn').show();
		});
		
		/* 정렬 */
		$('#sel').on('click',function() {
			var up=$('#dropdownMenu1').val();
			if(up=='정렬') {
				$.ajax({
					url:'../board/review',
					type:'GET',
					success:function(data) {
						location.href="../board/review";
					},
					error:function() {
					}
				});   // ajax
			}   // if
			if(up=='나라별') {
				$.ajax({
					url:'../board/reviewLocal',
					type:'GET',
					success:function(data) {
						location.href="../board/reviewLocal";
					},
					error:function() {
					}
				});   // ajax
				return false;
			}   // if
			if(up=='테마별') {
				$.ajax({
					url:'../board/reviewTheme',
					type:'GET',
					success:function() {
						location.href="../board/reviewTheme";
					},
					error:function() {
					}
				});   // ajax
			}   // if
		});
		
		// 리모컨 top
		$('#top').on('click',function() {
			$('html,body').scrollTop(0);
		});
		
		//<![CDATA[
	    // 사용할 앱의 JavaScript 키를 설정해 주세요.
	    Kakao.init('acc658a670e9ed5918d11647040b5bc5');
	    // 카카오톡 채널 1:1채팅 버튼을 생성합니다.
	    Kakao.Channel.createChatButton({
	      container: '#kakao-talk-channel-chat-button',
	      channelPublicId: '_wxfwxfxb' // 카카오톡 채널 홈 URL에 명시된 id로 설정합니다.
	    });
	  //]]>
		
		$('#hide').hide();
		// 로그인 후 글쓰기 이용 가능
		var loginBool=$('#loginCk').val();

		if(!loginBool) {
			$('#wri').hide();
		}
//////////////////////////////////////////////////////////////////////////////////////////		
		
		// 검색기능
		$('#search').on('click',function() {
			var search=$('#dropdownMenu2').val();
			
			console.log(search);
			/* if(up==나라별) {
				alert('나라별');
			}
			if(up==테마별) {
				alert('테마별');
			} */
		});
		
		
   });
</script>
</body>
</html>