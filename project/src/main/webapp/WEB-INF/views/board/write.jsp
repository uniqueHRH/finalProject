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
	h1 {
		font-family: 'Jua';
	}
	form {
      width:700px;      
      margin:0 auto;
      font-family: 'Jua';
      font-size:18px;
	}
	label {
      font-size:15px;
      font-weight:normal;
	}
	textarea {
		resize:none;
	}
/* 나라 선택 */	
	#land {
		border-radius:5px;
		font-size:14px;
		text-align:center;
		width:85px;
		height:33px;
		padding:0px 0px 0px 5px;
	}
	#land:hover {
		background-color:#e8e8e8;
	}
	#land>option {
		font-size:13px;
		text-align:center;
		font-weight:normal;
	}

	.board_img img {
		margin:20px 0;
	}
</style>
</head>
<body>
<jsp:include page="/WEB-INF/menubar.jsp"/>
<!-- contents start -->
      <div class="page-header" id="page-header" align="center">
     <h1>INSERT</h1>
   </div>
      
<!-- 나라 선택 -->
<form class="form-inline" method="POST" enctype="multipart/form-data">
<div>
	<select id="land" name="board_land" style="cursor:pointer">
		<option>나라 선택</option>
		<option>중국/일본</option>
		<option>동남아시아</option>
		<option>아메리카</option>
		<option>유&nbsp; &nbsp; &nbsp;럽</option>
		<option>남태평양</option>
		<option>아프리카</option>
	</select>
</div>

<!-- 입력 -->
	<div class="form-group">
		<p></p>
		<label for="exampleInputName2">&nbsp; 제 목</label>
		<input type="text" class="form-control" id="board_sub" name="board_sub" style="width:613px;">
		<input type="hidden" id="client_nick1" name="client_nick1" value="${sessionScope.check.client_nick1}">
	</div>
	<div><p></p>
		&nbsp; <textarea class="form-control" id="board_content" name="board_content" style="width:650px; height:300px;"></textarea>
	</div>
	
<!-- 테마 선택 -->	
	<div class="custom-control custom-checkbox" align="center" id="theme">
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
		
		<input type="hidden" id="board_theme" name="board_theme">
	</div>
<!-- file upload -->
	<div class="upload">
		<label for="board_img">이미지</label> &nbsp; &nbsp; <a class="btn btn-default" role="button" id="dele">삭제</a>
		<input type="file" id="board_img" name="file" />
		<div class="board_img"><img src="" id="img"/></div>
	</div>

<!-- 버튼 -->
	<p></p>
	<p align="center">
	  <button type="submit" class="btn btn-default" id="subm">작성완료</button>
	  <button type="button" class="btn btn-default" id="btn2">취 &nbsp; &nbsp;소</button>
	</p>
</form>
<jsp:include page="/WEB-INF/remote.jsp"/>
<jsp:include page="/WEB-INF/socket.jsp"/>
<jsp:include page="/WEB-INF/footer.jsp"/>
<!-- contents end -->
<script type="text/javascript" src="${root }js/jquery-1.12.4.js"></script>
<script type="text/javascript" src="${root }js/bootstrap.js"></script>
<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
<script type="text/javascript">
	$(document).ready(function() {
		$('#dele').hide();
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
		$('#dele').on('click',function() {
			$('#board_img').val('');
			$('#img').remove();
		});
		// 나라선택 (드롭창)
		$('#fir').on('click',function() {
			$('#dropdownMenu1').html('중국  / 일본');
		});
		$('#sec').on('click',function() {
			$('#dropdownMenu1').html('동남아시아');
		});
		$('#thr').on('click',function() {
			$('#dropdownMenu1').html('아 메 리 카');
		});
		$('#for').on('click',function() {
			$('#dropdownMenu1').html('유 &nbsp; &nbsp; &nbsp; 럽');
		});
		$('#fiv').on('click',function() {
			$('#dropdownMenu1').html('남 태 평 양');
		});
		$('#six').on('click',function() {
			$('#dropdownMenu1').html('아 프 리 카');
		});
		
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
		
		// 이미지 삭제
		
		// 뒤로 버튼
		$('#btn2').on('click',function() {
			if(confirm('작성을 취소하시겠습니까?')) {
				location.href="../board/review";
			}
		});
	});
	
</script>

</html>