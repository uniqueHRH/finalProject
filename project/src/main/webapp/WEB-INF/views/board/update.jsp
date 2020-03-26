<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
<div class="container">
  <div class="row">
   <div class="col-md-12">
   <!-- menubar start -->
<div class="menubar">
	<nav>
		<div>
			<div align="right">
				<ul class="login">
			        <!-- 로그인시 숨김 -->
			        <c:if test="${sessionScope.check eq null && sessionScope.staffcheck eq null }">
			        <li>
			        	<a id="side" href="${root }main/login" >로그인</a> &nbsp; &nbsp; &nbsp; &nbsp;
			        	<a id="side" href="${root }main/admin" >회원가입</a>
			        </li>
			        </c:if>
			        <!-- 직원로그인시 -->
			        <c:if test="${sessionScope.staffcheck ne null }">
					<select id="side" onchange="location.href=this.value">
			            <option value="${root }main/staffinfo">내정보관리</option>
			            <option value="${root }main/logout">로그아웃</option>
			        </select>
			        </c:if>
			        <!-- 회원로그인시 -->
			        <c:if test="${sessionScope.check ne null }">
					<select id="side" onchange="location.href=this.value">
						<option id="hide">${sessionScope.check.client_nick1} 님<span class="caret"></span></option>
			            <option value="${root }main/message">쪽지함</option>
			            <option value="#">최근본상품</option>
			            <option value="${root }main/wish">찜한상품</option>
			            <option value="#">결제상품</option>
			            <option value="#">내가쓴글</option>
			            <option value="${root }main/myinfo">내정보관리</option>
			            <option value="${root }main/logout">로그아웃</option>
			          </select>
			        </c:if>
				</ul>
			</div>
			
			
			<ul class="nav nav-pills nav-stacked" id="hamb">
				<li id="hamSub"><a href="#">투어</a>
			  		<ul>
			  			<li><a href="${root }tour/eastasia">중국/일본</a></li>
			       		<li><a href="${root }tour/southeastasia">동남아시아</a></li>
			       		<li><a href="${root }tour/america">아 메 리 카</a></li>
			       		<li><a href="${root }tour/europe">유 &nbsp; &nbsp; &nbsp; &nbsp;럽</a></li>
			       		<li><a href="${root }tour/pacific">남 태 평 양</a></li>
			       		<li><a href="${root }tour/africa">아 프 리 카</a></li>
			       		<li><a href="${root }tour/theme">테 마 여 행</a></li>
			  		</ul>
			  	</li>
				<li id="hamSub"><a href="#">커뮤니티</a>
					<ul>
			  			<li><a href="${root }board/review">여행후기</a></li>
			       		<li><a href="${root }board/partner">동행구하기</a></li>
			       		<li><a href="${root }board/free">자유게시판</a></li>
			  		</ul>
			  	</li>
				<li id="hamSub"><a href="${root }board/event">이벤트</a></li>
				<li><a href="#">고객센터</a>
					<ul>
			  			<li><a href="${root }board/notice">공 &nbsp; &nbsp; &nbsp; &nbsp;지</a></li>
				        <li><a href="${root }board/qna">자주묻는질문</a></li>
			  		</ul>
			  	</li>
			  	<c:if test="${sessionScope.staffcheck ne null }">
					<li id="hamSub"><a href="#">관리자센터</a>
						<ul>
				  			<li><a href="${root }system/staff">직원 관리</a></li>
				       		<li><a href="${root }system/guide">가이드관리</a></li>
				       		<li><a href="${root }system/client">회원관리</a></li>
				       		<li><a href="${root }system/paid">결제관리</a></li>
				       		<li><a href="${root }system/report">신고관리</a></li>
				  		</ul>
				  	</li>
			  	</c:if>
			</ul>
		</div><!-- /.navbar-collapse -->
	</nav><!-- /.container-fluid -->
</div>



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
		<label for="exampleInputEmail2">작성일</label>
		<input type="email" class="form-control" id="board_date" value="${bean.board_date }" style="cursor:default" disabled>
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
		<label for="board_img">이미지</label>
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
      
      </div>
   </div>
</div>

<!-- contents end -->
<div id="footerM">
     <div class="footerS">
 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 이용약관 &nbsp; 개인정보처리방침 &nbsp; 여행약관 &nbsp; 사업자정보확인<br/><br/>
(주) 여행사용설명서 | 대표자: 홍길동 | 사업자등록번호 : 123-45-67890<br/>
통신판매업신고번호 : 강남01-0013호 | 개인정보 보호책임자 : 홍길동<br/>
[06134]서울 강남구 테헤란로5길 11 유빌딩 2층, 3층<br/>
여행사용설명서 고객센터 : 1234-5678| FAX : 1234-5679<br/>
이메일 : 12345@traveler.com | 호스팅 서비스 사업자 : (주) 여행사용설명서<br/>
관광사업자 등록번호 : 제2020-000001호 | 영업보증보험 : 22억 1천만원 가입<br/><br/>
부득이한 사정에 의해 여행일정이 변경되는 경우 여행자의 사전 동의를 받습니다.<br/>
COPYRIGHT ⓒ HANATOUR SERVICE INC. ALL RIGHT RESERVED
	</div>
</div>
</body>
<script type="text/javascript">
	$(document).ready(function() {
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
