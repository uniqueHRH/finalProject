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
<link rel="stylesheet" type="text/css" href="${root }css/board.css" />
<style type="text/css">

</style>
</head>
<div class="container">
  <div class="row">
   <div class="col-md-12">
   <!-- menubar start -->
<div id="mainTop">
	<nav class="navbar navbar-default navbar-fixed-top" id="top1">
		<div class="container-fluid" id="top2">
			<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
				<!-- 로그인 -->
				<div id="login">
					<ul class="nav navbar-nav navbar-right">
						<c:if test="${sessionScope.check eq null && sessionScope.staffcheck eq null }">
							<li><a href="${root }main/login">로그인</a></li>
					        <li><a href="${root }main/admin">회원가입</a></li>
			        	</c:if>
						
						<!-- 직원로그인시 -->
				        <li class="dropdown">
					        <c:if test="${sessionScope.staffcheck ne null }">
					        	<a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">내정보관리<span class="caret"></span></a>
					        	<ul class="dropdown-menu" role="menu">
					        		<li><a href="${root }main/staffinfo">내정보관리</a></li>
				            		<li><a href="${root }main/logout">로그아웃</a></li>
					        	</ul>
					        </c:if>
						</li>
				        <!-- 회원로그인시 -->
				        <c:if test="${sessionScope.check ne null }">
					        <li class="dropdown"><a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">${sessionScope.check.client_nick1} 님<span class="caret"></span></a>
					        	<ul class="dropdown-menu" role="menu">
					        		<li><a href="${root }main/message">쪽지함</a></li>
					        		<li><a href="#">최근본상품</a></li>
					        		<li><a href="${root }main/wish">찜한상품</a></li>
					        		<li><a href="#">결제상품</a></li>
					        		<li><a href="#">내가쓴글</a></li>
					        		<li><a href="${root }main/myinfo">내정보관리</a></li>
					        		<li><a href="${root }main/logout">로그아웃</a></li>
					        	</ul>
							</li>
						</c:if>
					</ul>
				</div>
				<div id="top3" align="center">
					<!-- 메뉴바 -->
					<ul class="nav navbar-nav" id="menubar">
				        <li class="dropdown"><a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">투&nbsp; &nbsp; &nbsp;어</a>
							<ul class="dropdown-menu" role="menu">
					            <li><a href="${root }tour/eastasia">중국/일본</a></li>
					       		<li><a href="${root }tour/southeastasia">동남아시아</a></li>
					       		<li><a href="${root }tour/america">아 메 리 카</a></li>
					       		<li><a href="${root }tour/europe">유 &nbsp; &nbsp; &nbsp; &nbsp;럽</a></li>
					       		<li><a href="${root }tour/pacific">남 태 평 양</a></li>
					       		<li><a href="${root }tour/africa">아 프 리 카</a></li>
					       		<li><a href="${root }tour/theme">테 마 여 행</a></li>
							</ul>
				        </li>
				        <li class="dropdown"><a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">커뮤니티</a>
							<ul class="dropdown-menu" role="menu">
					            <li><a href="${root }board/review">여행후기</a></li>
					       		<li><a href="${root }board/partner">동행구하기</a></li>
					       		<li><a href="${root }board/free">자유게시판</a></li>
							</ul>
				        </li>
				        <li class="dropdown"><a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false"> 이벤트 </a></li>
				        <li class="dropdown"><a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">고객센터</a>
							<ul class="dropdown-menu" role="menu">
					            <li><a href="${root }board/notice">공 &nbsp; &nbsp; &nbsp; &nbsp;지</a></li>
							    <li><a href="${root }board/qna">자주묻는질문</a></li>
							</ul>
				        </li>
				        <c:if test="${sessionScope.staffcheck ne null }">
					        <li class="dropdown"><a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">관리자센터</a>
								<ul class="dropdown-menu" role="menu">
						            <li><a href="${root }system/staff">직원 관리</a></li>
						       		<li><a href="${root }system/guide">가이드관리</a></li>
						       		<li><a href="${root }system/client">회원관리</a></li>
						       		<li><a href="${root }system/paid">결제관리</a></li>
						       		<li><a href="${root }system/report">신고관리</a></li>
								</ul>
					        </li>
				        </c:if>
					</ul>
				</div>   <!-- 메뉴바 -->
				
			</div><!-- /.navbar-collapse -->
		</div><!-- /.container-fluid -->
	</nav>
</div>



<!-- contents start -->
      <div class="page-header" id="page-header" align="center">
     <h1>FREE</h1>
   </div>
   
	
   
<table class="table table-hover" id="table">
	<div class="topMenu" id="theme">
		<input type="text" value="<c:out value="${listCnt}"></c:out>개의 게시물이 조회되었습니다" id="listCnt" disabled/>
		<div id="fff"></div>
	   <a class="btn btn-default" href="${root }board/freeIns" role="button" id="wri">글쓰기</a>
	   <input type="hidden" id="loginCk" value="${sessionScope.check.client_nick1}"/>
	</div>

<!-- 리스트 출력 -->
   <thead>
      <tr class="active">
         <th>#</th>
         <th>제 목</th>
         <th>글쓴이</th>
         <th>날 짜</th>
         <th>조회수</th>
      </tr>
   </thead>
   <tbody>
		<c:forEach items="${list }" var="bean">
		<tr>
			<td>${bean.board_no }</td>
			<td><a href="freeDe/${bean.board_no }">${bean.free_sub }</a></td>
			<td><a href="freeDe/${bean.board_no }">${bean.client_nick1 }</a></td>
			<td><a href="freeDe/${bean.board_no }">${bean.free_date}</a></td>
			<td><a href="freeDe/${bean.board_no }">${bean.free_count }</a></td>
		</tr>
		</c:forEach>
   </tbody>
</table>

<nav id="pageNum">
<!-- 페이지넘버링 -->
	<div id="paginationBox">
		<ul class="pagination">
			<c:if test="${pagination.prev}">
				<li class="page-item"><a class="page-link" href="#" onClick="prev('${pagination.page}', '${pagination.range}', '${pagination.rangeSize}')">Prev</a></li>
			</c:if>
			<c:forEach begin="${pagination.startPage}" end="${pagination.endPage}" var="idx">
				<li class="page-item <c:out value="${pagination.page==idx?'active' : ''}"/>"><a class="page-link" href="#" onClick="pagination('${idx}', '${pagination.range}', '${pagination.rangeSize}', '${search.searchType}', '${search.keyword }' )">${idx}</a></li>
			</c:forEach>
			<c:if test="${pagination.next}">
				<li class="page-item"><a class="page-link" href="#" onClick="next('${pagination.range}', '${pagination.range}', '${pagination.rangeSize}')" >Next</a></li>
			</c:if>
		</ul>
	</div>

<!-- 검색 -->
   <div class="topMenu" id="search">
		<select id="searchType">
		    <option value="board_sub">제 &nbsp; 목</option>
		    <option value="client_nick1">닉네임</option>
		</select>
      <input type="text" class="form-control" id="keyword" name="keyword" style="width:200px; display:inline-block;">
		<a class="btn btn-default" href="#" role="button" id="searchGo">G O</a>
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
     <div class="footer">
    	<img id="footer1" src="" alt="">
	</div>

<script src="//developers.kakao.com/sdk/js/kakao.min.js"></script>
<script type="text/javascript" src="${root }js/jquery-1.12.4.js"></script>
<script type="text/javascript" src="${root }js/bootstrap.js"></script>
<script type="text/javascript">
	$(document).ready(function() {
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
		// 검색
		$('#searchGo').on('click',function() {
			var url='${root }board/review';
			url=url+'?searchType='+$('#searchType').val();
			url=url+'&keyword='+$('#keyword').val();
			
			location.href=url;
			console.log(url);
		});
		
   });
//////////////////////////////////////////////////////////////////////////////////////////		
		// 페이징
		//이전 버튼 이벤트
		function prev(page, range, rangeSize) {
			var page=((range-2)*rangeSize)+1;
			var range=range-1;
			var url="${root }board/free";
			url=url+"?page="+page;
			url=url+"&range="+range;
			location.href=url;
		}
		//페이지 번호 클릭
		function pagination(page, range, rangeSize, searchType, keyword) {
			var url="${root }board/free";
			url=url+"?page="+page;
			url=url+"&range="+range;
			url=url+"&searchType="+$('#searchType').val();
			url=url+"&keyword="+keyword;
			location.href = url;	
		}
		//다음 버튼 이벤트
		function next(page, range, rangeSize) {
			var page=parseInt((range*rangeSize))+1;
			var range=parseInt(range)+1;
			var url="${root }board/free";
			url=url+"?page="+page;
			url=url+"&range="+range;
			location.href=url;
		}
		
		
</script>
</body>
</html>