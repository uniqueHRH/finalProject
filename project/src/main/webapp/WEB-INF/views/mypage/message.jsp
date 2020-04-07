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
<style type="text/css">
	h1, input {
		font-family: 'Jua';
	}
	select, button, a {
		font-family: 'Jua';
	}
	#theme {
		width:900px;
		margin:0 auto;
	}
	#table {
		width:900px;
		margin:0 auto;
		padding:0px;
		text-align:center;
		font-size:18px;
		font-family: 'Jua';
	}
	#table>tbody td,
	#table>tbody td>a {
		font-size:15px;
	}
	#table th {
		text-align:center;
	}
	#table>tbody td {
		font-size:15px;
	}
	#table>thead th:nth-child() {
		width:50px;
	}
	#table>thead th:nth-child(2) {
		width:70px;
	}
	#table>thead th:nth-child(3) {
		width:550px;
	}
	#table>thead th:nth-child(4) {
		width:100px;
	}
	#table>thead th:nth-child(5) {
		width:120px;
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
	
	#pageNum, #search {
		width:350px;      
		margin:0 auto;
		text-align:center;
	}
	tbody td>a {
		color:black;
		text-decoration:none;
	}
	a:visited {
		color:black;
	}
	.dropdown {
		font-family: 'Jua';
		font-size: 18px;
	}
</style>
</head>
<body>
<jsp:include page="/WEB-INF/menubar.jsp"/>
<!-- contents start -->
<div class="container">
  <div class="row">
   <div class="col-md-12">
      <div class="page-header" id="page-header" align="center">
     <h1>MESSAGE</h1>
   </div>
   
   
<table class="table table-hover" id="table">
	<div class="topMenu" id="theme">
		<input type="text" value="<c:out value="${listCnt}"></c:out>개의 게시물이 조회되었습니다" id="listCnt" disabled/><br/>
		<a class="btn btn-default" href="#" role="button" id="feed">답 장</a> &nbsp; <a class="btn btn-default" href="#" role="button" id="dele">삭 제</a>
	</div>
<!-- 리스트 출력 -->
   <thead>
      <tr class="active">
         <th><input type="checkbox" id="chk"></th>
         <th>#</th>
         <th>내 용</th>
         <th>보낸이</th>
         <th>날 짜</th>
      </tr>
   </thead>
   <tbody>
		<c:forEach items="${list }" var="bean">
		<input type="hidden" id="no" value="${bean.receive_no }">
		<tr>
			<input type="hidden" class="type_${bean.receive_no }" value="${bean.receive_status }">
			<td name="line_${bean.receive_no }"><input type="checkbox" name="chk_${bean.receive_no }"></td>
			<td name="line_${bean.receive_no }">${bean.receive_no }</td>
			<td name="line_${bean.receive_no }"><a href="#" onclick="msg()">${bean.receive_content }</a></td>
			<td name="line_${bean.receive_no }"><a href="#" onclick="window.open('../messageDe/'+${bean.receive_no }, '쪽지보기', 'width=470, height=340, left=500, top=50');">${bean.client_nick1 }</a></td>
			<td name="line_${bean.receive_no }"><a href="#" onclick="window.open('../messageDe/'+${bean.receive_no }, '쪽지보기', 'width=470, height=340, left=500, top=50');">${bean.receive_date}</a></td>
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
		    <option value="receive_content">내 &nbsp;용</option>
		    <option value="client_nick1">보낸이</option>
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
<jsp:include page="/WEB-INF/socket.jsp"/>
<jsp:include page="/WEB-INF/footer.jsp"/>
<script src="//developers.kakao.com/sdk/js/kakao.min.js"></script>
<script type="text/javascript" src="${root }js/jquery-1.12.4.js"></script>
<script type="text/javascript" src="${root }js/bootstrap.js"></script>
<script type="text/javascript">
	$(document).ready(function() {
		// 읽음 & 안읽음
		$('input[class^=type_').each(function() {
			var num=$(this).attr('class');
			num=num.split('_');
			num=num[1];
			
			var status=$('input[class=type_'+num+']').val();
			if(status==0) {
				$('td[name^=line_'+num+']').css('font-weight','bold');
			} else if (status==1) {
				$('td[name^=line_'+num+']').css('font-weight','none');
			}
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

		// 삭제 체크박스
		$('#chk').on('click',function() {
			if($('#chk').prop('checked')) {
				$('input[type=checkbox]').prop('checked',true);
			} else {
				$('input[type=checkbox]').prop('checked',false);
			}
		});
		
		// 답장버튼 클릭
		$('#feed').on('click',function() {
			var feed=$('input[type=checkbox]:checked').attr('name');
			feed=feed.split('_');
			feed=feed[1];
			
			window.open('../messageDe/'+feed, '쪽지보기', 'width=470, height=340, left=500, top=50');
		});
		
		// 삭제버튼 클릭
		$('#dele').on('click',function() {
			var feed=$('input[type=checkbox]:checked').attr('name');
			feed=feed.split('_');
			feed=feed[1];
			
			var con=confirm('선택된 쪽지를 삭제하시겠습니까?');
			if(con) {
				$.ajax({
					url:'../messageDele',
					type:'POST',
					data:{key:feed},
					success:function() {
						alert('삭제되었습니다');
						reload();
					},
					error:function() {
						alert('다시 시도해 주세요');
					}
				});
			}
		});
//////////////////////////////////////////////////////////////////////////////////////////		
		// 검색
		$('#searchGo').on('click',function() {
			var url='${root }main/message/?id=${sessionScope.check.client_nick1}';
			url=url+'&searchType='+$('#searchType').val();
			url=url+'&keyword='+$('#keyword').val();
			
			location.href=url;
		});
		
		function reload() {
			location.reload();
		}
   });
//////////////////////////////////////////////////////////////////////////////////////////		
		function msg() {
			$('input[class^=type_').each(function() {
				var num=$(this).attr('class');
				num=num.split('_');
				num=num[1];
			
				window.open('../messageDe/'+num, '쪽지보기', 'width=470, height=340, left=500, top=50');
			});
		}
//////////////////////////////////////////////////////////////////////////////////////////		
		// 페이징
		//이전 버튼 이벤트
		function prev(page, range, rangeSize) {
			var page=((range-2)*rangeSize)+1;
			var range=range-1;
			var url='${root }main/message/?id=${sessionScope.check.client_nick1}';
			url=url+"&page="+page;
			url=url+"&range="+range;
			location.href=url;
		}
		//페이지 번호 클릭
		function pagination(page, range, rangeSize, searchType, keyword) {
			var url='${root }main/message/?id=${sessionScope.check.client_nick1}';
			url=url+"&page="+page;
			url=url+"&range="+range;
			url=url+"&searchType="+$('#searchType').val();
			url=url+"&keyword="+keyword;
			location.href = url;	
		}
		//다음 버튼 이벤트
		function next(page, range, rangeSize) {
			var page=parseInt((range*rangeSize))+1;
			var range=parseInt(range)+1;
			var url='${root }main/message/?id=${sessionScope.check.client_nick1}';
			url=url+"&page="+page;
			url=url+"&range="+range;
			location.href=url;
		}
		
</script>
</body>
</html>