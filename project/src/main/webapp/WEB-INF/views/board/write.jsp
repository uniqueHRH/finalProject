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
	#allContain {
		width:950px;
		margin:0 auto;
		padding-left:180px;
		font-family: 'Jua';
	}
	form {
      width:950px;      
      margin:0 auto;
      font-size:18px;
	}
	#select {
		padding:0 0 0 40px;
	}
	#sub {
      	width:800px;
      	text-align:center;      
	}
	label {
      font-size:15px;
      font-weight:normal;
      padding:0 0 10 0;
      width:50px;
	}
	#textarea {
		padding-left:50px;
	}
	#board_content {
		width:750px;
		height:300px;
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
	#theme {
		width:800px;
		text-align:center;
		padding:15 0;
	}
	.board_img img {
		margin:20px 0;
	}
	#btn {
		width:800px;
		text-align:center;
	}
	#board_img {
		display:inline-block;
		width:245px;
	}
	#deleImg {
		display:inline-block;
	}
	.swal-text {
		text-align:center;
		font-size:25px;
		font-weight:bold;
	}
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
	<div id="select">
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
		<div class="form-group" id="sub">
			<p></p>
			<label for="exampleInputName2">제 &nbsp; 목</label>
			<input type="text" class="form-control" id="board_sub" name="board_sub" style="width:670px;">
			<input type="hidden" id="client_nick1" name="client_nick1" value="${sessionScope.check.client_nick1}">
		</div>
		<div id="textarea">
			&nbsp; <textarea class="form-control" id="board_content" name="board_content"></textarea>
		</div>
		
	<!-- 테마 선택 -->	
		<div id="theme">
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
			<input type="file" id="board_img" name="file" />
			<a class="btn btn-default" role="button" id="dele">삭제</a>
			<div class="board_img"><img src="" id="img"/></div>
		</div>
	
	<!-- 버튼 -->
		<div id="btn">
		  <button type="submit" class="btn btn-default" id="subm">작성완료</button> &nbsp;
		  <button type="button" class="btn btn-default" id="btn2">취 &nbsp; &nbsp;소</button>
		</div>
	</form>
</div>

<jsp:include page="/WEB-INF/remote.jsp"/>
<jsp:include page="/WEB-INF/socket.jsp"/>
<jsp:include page="/WEB-INF/footer.jsp"/>
<!-- contents end -->
<script type="text/javascript" src="${root }js/jquery-1.12.4.js"></script>
<script type="text/javascript" src="${root }js/bootstrap.js"></script>
<script type="text/javascript" src="${root }ckeditor/ckeditor.js"></script>
<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
<script type="text/javascript">
	$(document).ready(function() {
		CKEDITOR.replace('board_content');
		
////////////////////////////////////////////////////////////////////////////////////////////////////////
		// 파일업로드
		$('#board_img').change(function(){
			if(this.files && this.files[0]) {
				var reader = new FileReader;
				reader.onload = function(data) {
					$('.board_img img').attr('src', data.target.result).width(200);        
				}
				reader.readAsDataURL(this.files[0]);
			}
		});
		// 이미지 삭제
		$('#dele').on('click', function() {
			$('#board_img').val('');
			$('#img').attr('src','');

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
				swal({
					text:'테마는 최대 세 개까지\n선택이 가능합니다',
					icon:'error',
					button:'확인'
				})
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

		$('#subm').on('click', function() {
			var sub=$('#board_sub').val();
			var content=$('#board_content').val();
			
			if(sub=='') {
				swal({
					title: "제목을 입력해주세요",
					icon: "warning",
					button:"확인"
				})
				return false;
			} else if(content=='') {
				swal({
					title: "내용을 입력해주세요",
					icon: "warning",
					button:"확인"
				})
				return false;
			}
		});
		
		// 뒤로 버튼
		$('#btn2').on('click',function() {
			swal({
				title: "작성을 취소하시겠습니까?",
				icon: "warning",   //"info,success,warning,error" 중 택1
				buttons: ["아니요", "네"]   //버튼 내용 작성가능
			}).then((네) => {
				if(네) {
					location.href="../board/review";
				}
			})
		});
	});
	
</script>

</html>