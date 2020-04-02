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
<link rel="stylesheet" type="text/css" href="${root }css/staff.css" />
<style type="text/css">
</style>
</head>
<body>
<jsp:include page="/WEB-INF/menubar.jsp"/>

<!-- contents start -->
      <div class="page-header" id="page-header" align="center">
     <h1>직원관리</h1>
   </div>
   
	
   
<table class="table table-hover" id="table">
<!-- 정렬 드롭다운 -->
	<div class="topMenu" id="theme">
		<select id="dropdownMenu1">
		    <option value="정렬">정 &nbsp;렬</option>
		    <option value="사번">사번</option>
		    <option value="부서">부서</option>
		</select>
		<a class="btn btn-default" href="#" role="button" id="sel">조회</a>
		<input type="text" value="<c:out value="${listCnt}"></c:out>개의 게시물이 조회되었습니다" id="listCnt" disabled/>
		<div id="fff"></div>
	   <a class="btn btn-default" href="${root }board/reviewIns" role="button" id="wri">등록</a>
	   <input type="hidden" id="loginCk" value="${sessionScope.staffcheck.staff_no}"/>
	</div>

<!-- 리스트 출력 -->
   <thead>
      <tr class="active">
         <th>사 번</th>
         <th>이 름</th>
         <th>연락처</th>
         <th>이메일</th>
         <th>소 속</th>
         <th>입사일</th>
         <th>비밀번호</th>
      </tr>
   </thead>
   <tbody>
		<c:forEach items="${list }" var="bean">
		<tr>
			<td>${bean.staff_no }</td>
			<td><a href="reviewDe/${bean.staff_no }">[${bean.staff_name }]</a></td>
			<td><a href="reviewDe/${bean.staff_no }">${bean.staff_phone }</a></td>
			<td><a href="reviewDe/${bean.staff_no }">${bean.staff_email }</a></td>
			<td><a href="reviewDe/${bean.staff_no }">${bean.staff_team}</a></td>
			<td><a href="reviewDe/${bean.staff_no }">${bean.staff_joindate }</a></td>
			<td><a href="reviewDe/${bean.staff_no }">${bean.staff_pw }</a></td>
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
		    <option value="staff_name">이 름</option>
		    <option value="staff_no">사 번</option>
		    <option value="staff_team">부 서</option>
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

<jsp:include page="/WEB-INF/footer.jsp"/>
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
					url:'../system/staff',
					type:'GET',
					success:function(data) {
						location.href="../system/staff";
					},
					error:function() {
					}
				});   // ajax
			}   // if
			if(up=='사번') {
				$.ajax({
					url:'../system/staffNo',
					type:'GET',
					success:function(data) {
						location.href="../system/staffNo";
					},
					error:function() {
					}
				});   // ajax
				return false;
			}   // if
			if(up=='부서') {
				$.ajax({
					url:'../system/staffTeam',
					type:'GET',
					success:function() {
						location.href="../system/staffTeam";
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
			var url='${root }system/staff';
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
			var url="${root }board/review";
			url=url+"?page="+page;
			url=url+"&range="+range;
			location.href=url;
		}
		//페이지 번호 클릭
		function pagination(page, range, rangeSize, searchType, keyword) {
			var url="${root }board/review";
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
			var url="${root }board/review";
			url=url+"?page="+page;
			url=url+"&range="+range;
			location.href=url;
		}
		
		
</script>
</body>
</html>