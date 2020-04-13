<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page pageEncoding="utf-8" %>
<link href="https://fonts.googleapis.com/css?family=Jua&display=swap&subset=korean" rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Jua|Noto+Sans+KR&display=swap" rel="stylesheet">
<c:url value="/" var="root"></c:url>
<html>
<head>
<meta charset="utf-8">
<title>DETAIL</title>
<link rel="stylesheet" type="text/css" href="${root }css/bootstrap.css" />
<link rel="stylesheet" type="text/css" href="${root }css/travel.css" />
<style type="text/css">
	h1 {
		font-family: 'Jua';
	}
	form {
   		width:800px;
	   	margin:0 auto;
	   	align:center;
		font-family: 'Jua';
	   	text-align:center;
	   	padding:0px;
	}
	textarea {
		resize:none;
	}
/* 나라 드롭창 div */
	#pl {
		padding:0px 620px 0px 0px;
	}
/* 나라 드롭창 */
	#board_land {
		align:left;
		display:inline-block;
		border-radius:5px;
		font-size:14px;
		height:30px;
	}
	#board_sub, #client_nick1, #board_date, #board_count, #board_content {
		background-color:white;
	}
	label {
		width:35px;
	}
	#board_sub {
		width:700px;
		align:left;
		text-align:left;
	}
	#client_nick1, #board_date, #board_count {
		width:161px;
	}
	#board_content {
		width:700px;
		height:300px;
	}
	textarea {
		background-color:pink;
		color:black;
	}
/* 테마 선택 */
	label {
		width:50px;
	}	
	#btn {
		text-align:center;
	}
/* 이미지 수정 */
	
</style>
<script type="text/javascript" src="${root }js/jquery-1.12.4.js"></script>
<script type="text/javascript" src="${root }js/bootstrap.js"></script>
</head>
<body>
<jsp:include page="/WEB-INF/menubar.jsp"/>


<!-- contents start -->
      <div class="page-header" id="page-header" align="center">
     <h1>UPDATE</h1>
   </div>
      
<!-- 제목 -->
<form class="form-inline" method="POST" enctype="multipart/form-data">
	<div id="pl">
		<select id="board_land" name="board_land" style="cursor:pointer">
			<option value="${bean.board_land }">${bean.board_land }</option>
			<option value="중국/일본">중국/일본</option>
			<option value="동남아시아">동남아시아</option>
			<option value="아메리카">아메리카</option>
			<option value="유&nbsp; &nbsp; &nbsp;럽">유&nbsp; &nbsp; &nbsp;럽</option>
			<option value="남태평양">남태평양</option>
			<option value="아프리카">아프리카</option>
		</select>
	</div>
	<p></p>
	<div>
		<input type="text" class="form-control" id="board_sub" name="board_sub" value="${bean.board_sub }">
		<input type="hidden" id="board_no" name="board_no" value="${bean.board_no }">
	</div>
	<p></p>
	<div class="form-group">
		<label for="exampleInputName2">닉네임</label>
		<input type="text" class="form-control" id="client_nick1" value="${bean.client_nick1 }" style="cursor:default" disabled>
	</div>
	<div class="form-group">
	&nbsp; &nbsp;
	<fmt:formatDate value="${bean.board_date}" pattern="yyyy-MM-dd HH:mm" var="date"/>
		<label for="exampleInputEmail2">작성일</label>
		<input type="email" class="form-control" id="board_date" value="${date }" style="cursor:default" disabled>
	</div>
	<div class="form-group">
	&nbsp; &nbsp;
		<label for="exampleInputEmail2">조회수</label>
		<input type="email" class="form-control" id="board_count" value="${bean.board_count }" style="cursor:default" disabled>
	</div>
	<p></p>
	<div>
		<textarea class="form-control" id="board_content" name="board_content">${bean.board_content }</textarea>
	</div>
	<p></p>
	<!-- 테마 선택 -->	
	<div class="custom-control custom-checkbox" align="center" id="the">
	<p></p>
		<input type="checkbox" name="theme" class="custom-control-input" value="힐링">
		<label class="custom-control-label" for="jb-checkbox">힐링</label>
		&nbsp; 
		<input type="checkbox" name="theme" class="custom-control-input" value="스냅">
		<label class="custom-control-label" for="jb-checkbox">스냅</label>
		&nbsp; 
		<input type="checkbox" name="theme" class="custom-control-input" value="액티비티">
		<label class="custom-control-label" for="jb-checkbox">액티비티</label>
		&nbsp; 
		<input type="checkbox" name="theme" class="custom-control-input" value="식도락">
		<label class="custom-control-label" for="jb-checkbox">식도락</label>
		&nbsp; 
		<input type="checkbox" name="theme" class="custom-control-input" value="영화">
		<label class="custom-control-label" for="jb-checkbox">영화</label>
		&nbsp; 
		<input type="checkbox" name="theme" class="custom-control-input" value="스포츠">
		<label class="custom-control-label" for="jb-checkbox">스포츠</label>
		
		<input type="hidden" id="board_theme" name="board_theme" value="${bean.board_theme }">
	</div>
<!-- 이미지 수정 -->
	<div class="upload">
		<label for="board_img">이미지</label><a class="btn btn-default" role="button" id="dele">삭제</a>
		<input type="file" id="board_img" name="file" />
		<div class="board_img">
			<img src="${root }resources/${bean.board_thumb }" id="uploadI"/>
			<input type="hidden" name="board_img" value="${bean.board_thumb }"/>
			<input type="hidden" name="board_thumb" value="${bean.board_img }"/>
		</div>
		
	</div>
	<p></p>	
	
	<div id="btn">
		<button type="submit" class="btn btn-default" id="subm">수정완료</button>
		<button type="reset" class="btn btn-default" id="dele">초기화</button>
		<button type="button" class="btn btn-default" id="goList">작성취소</button>
	</div>
</form>
<jsp:include page="/WEB-INF/remote.jsp"/>
<jsp:include page="/WEB-INF/socket.jsp"/>
<jsp:include page="/WEB-INF/footer.jsp"/>
</body>
<script type="text/javascript">
	$(document).ready(function() {
		$('#dele').hide();
		// 테마 불러오기
		var theme=$('#board_theme').val();
		var chkbox=$('.custom-control-input');
		
 		theme=theme.split(',');
		
		for(i=0; i<theme.length; i++) {
			
			for(j=0; j<chkbox.length; j++) {
				if(theme[i]==chkbox[j].value) {
					chkbox[j].checked=true;
				}
			}
		}
		
		// 체크박스 선택 개수 제한
		$('input[type=checkbox]').on('click',function() {
			var cnt=$('input[type=checkbox]:checked').length;
			if(cnt>3) {
				$(this).attr('checked',false);
				alert('테마는 최대 세 개까지 선택이 가능합니다');
			}
		});
		
		// 체크박스 값 넘기기
		$('#subm').on('click',function() {
			var pick=Array();
			var pick_cnt=0;
			var chkbox=$('.custom-control-input');
			
			for(i=0; i<chkbox.length; i++) {
				if(chkbox[i].checked==true) {
					pick[pick_cnt]=chkbox[i].value;
					pick_cnt++;
				}
			}
			$('#board_theme').val(pick);
			
		});
		var thu=$('input[name=board_thumb]').val();
		if(thu) {
			$('#dele').show();
		}
		// 이미지 수정
		$('#board_img').change(function(){
			if(this.files && this.files[0]) {
				var reader = new FileReader;
				reader.onload = function(data) {
					$('.board_img img').attr('src', data.target.result).width(200);        
				}
				reader.readAsDataURL(this.files[0]);
			}
		});
		
		// 취소버튼
		$('#goList').on('click',function() {
			var con=confirm('작성내용이 사라집니다\n그래도 돌아가시겠습니까?');
			if(con) {
				location.href="../reviewDe/${bean.board_no}";
			}
		});      
   });
</script>
</html>
