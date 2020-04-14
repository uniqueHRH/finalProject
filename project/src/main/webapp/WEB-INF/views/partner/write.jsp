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
<link rel="stylesheet" type="text/css" href="${root }css/boardWrite.css" />
<style type="text/css">
	
</style>
</head>
<body>
<jsp:include page="/WEB-INF/menubar.jsp"/>

<!-- contents start -->
<div id="allContain">
	<div class="page-header" id="page-header" align="center">
		<h1>INSERT</h1>
	</div>
      
	<!-- 나라 선택 -->
	<form class="form-inline" method="POST" enctype="multipart/form-data">
	<!-- 입력 -->
		<div class="form-group">
			<p></p>
			<label for="exampleInputName2">&nbsp; 제 &nbsp;목</label>
			<input type="text" class="form-control" id="board_sub" name="partner_sub">
			<input type="hidden" id="client_nick1" name="client_nick1" value="${sessionScope.check.client_nick1}">
		</div>
		<div><p></p>
			&nbsp; <textarea class="form-control" id="board_content" name="partner_content"></textarea>
		</div>
		<p></p>
	<!-- file upload -->
		<div class="upload">
			<label for="board_img">이미지</label> &nbsp; &nbsp; <a class="btn btn-default" role="button" id="dele">삭제</a>
			<input type="file" id="board_img" name="file" />
			<div class="board_img"><img src=""/></div>
		</div>
	
	<!-- 버튼 -->
		<div id="btn">
		  <button type="submit" class="btn btn-default" id="subm">작성완료</button> &nbsp;
		  <button type="button" class="btn btn-default" id="btn2">취 &nbsp; &nbsp;소</button>
		</div>
	</form>
</div>


<!-- contents end -->
<jsp:include page="/WEB-INF/remote.jsp"/>
<jsp:include page="/WEB-INF/socket.jsp"/>
<jsp:include page="/WEB-INF/footer.jsp"/>
</body>
<script type="text/javascript" src="${root }js/jquery-1.12.4.js"></script>
<script type="text/javascript" src="${root }js/bootstrap.js"></script>

<script type="text/javascript">
	$(document).ready(function() {
		// 파일업로드
		$('#board_img').change(function(){
			if(this.files && this.files[0]) {
				var reader = new FileReader;
				reader.onload = function(data) {
					$('.board_img img').attr('src', data.target.result).width(200);        
				}
				reader.readAsDataURL(this.files[0]);
				$('#dele').toggle();
			}
		});
		// 이미지 삭제
		$('#dele').on('click', function() {
			$('#board_img').val('');
			$('#img').attr('src','');

		});
		
		// 뒤로 버튼
		$('#btn2').on('click',function() {
			if(confirm('작성을 취소하시겠습니까?')) {
				location.href="../board/partner";
			}
		});
	});
	
</script>

</html>