<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page pageEncoding="utf-8" %>
<link href="https://fonts.googleapis.com/css?family=Jua&display=swap&subset=korean" rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Jua|Noto+Sans+KR&display=swap" rel="stylesheet">
<link rel="stylesheet" type="text/css" href="slick/slick.css"/>
<link rel="stylesheet" type="text/css" href="slick/slick-theme.css"/>
<link rel="stylesheet" type="text/css" href="//cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.css"/>


<c:url value="/" var="root"></c:url>
<html>
<head>
<meta charset="utf-8">
<title>Home</title>
<link rel="stylesheet" type="text/css" href="${root }css/bootstrap.css" />
<link rel="stylesheet" type="text/css" href="${root }css/travel.css" />

<style type="text/css">
	.container{
		font-family: 'Jua';
		text-align: center;
		width: 100%;
	}
	#chinaimg1,#chinaimg2,#chinaimg3{
		display: inline-block;
		width: 100%;
		height: 40%;
	}
	.thumbnail{
		border: none;
	}
	#china1comm{
		text-align: left;
		font-size: 20px;
	}
	#tourtable{		
	 	width: 600px;
		position: absolute;
		left: 150px;
		height: 150px;
		display: inline-block;
		margin: 0px;
	}
	
	#calendar{
	position: absolute;
		right: 150px;
	}
	
	#bookbtn{
		disp
	}
	
</style>
<script type="text/javascript" src="${root }js/jquery-1.12.4.js"></script>
<script type="text/javascript" src="${root }js/bootstrap.js"></script>
<script type="text/javascript" src="//code.jquery.com/jquery-1.11.0.min.js"></script>
<script type="text/javascript" src="//code.jquery.com/jquery-migrate-1.2.1.min.js"></script>
<script type="text/javascript" src="slick/slick.min.js"></script>
<script type="text/javascript" src="//cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.min.js"></script>

<script type="text/javascript">
	$(document).ready(function() {
		$('#tour_sub').hide();
		$('#comm_sub').hide();
		$('#serv_sub').hide();
		$('#system_sub').hide();
		
		$('#mainFont1').hide();
		$('#mainFont2').hide();
		$('#mainFont3').hide();
		$('#mainFont4').hide();
	
		$('#tour').mouseenter(function() {
			$('#tour_sub').show();
		}).mouseleave(function() {
			$('#tour_sub').hide();
		});
		$('#comm').mouseenter(function() {
			$('#comm_sub').show();
		}).mouseleave(function() {
			$('#comm_sub').hide();
		});
		$('#serv').mouseenter(function() {
			$('#serv_sub').show();
		}).mouseleave(function() {
			$('#serv_sub').hide();
		});
		$('#system').mouseenter(function() {
			$('#system_sub').show();
		}).mouseleave(function() {
			$('#system_sub').hide();
		});
		
	});
	
	 /* calandar jquery*/
	var today = new Date();//오늘 날짜//내 컴퓨터 로컬을 기준으로 today에 Date 객체를 넣어줌
    var date = new Date();//today의 Date를 세어주는 역할
    function prevCalendar() {//이전 달
    // 이전 달을 today에 값을 저장하고 달력에 today를 넣어줌
    //today.getFullYear() 현재 년도//today.getMonth() 월  //today.getDate() 일 
    //getMonth()는 현재 달을 받아 오므로 이전달을 출력하려면 -1을 해줘야함
     today = new Date(today.getFullYear(), today.getMonth() - 1, today.getDate());
     buildCalendar(); //달력 cell 만들어 출력 
    }

    function nextCalendar() {//다음 달
        // 다음 달을 today에 값을 저장하고 달력에 today 넣어줌
        //today.getFullYear() 현재 년도//today.getMonth() 월  //today.getDate() 일 
        //getMonth()는 현재 달을 받아 오므로 다음달을 출력하려면 +1을 해줘야함
         today = new Date(today.getFullYear(), today.getMonth() + 1, today.getDate());
         buildCalendar();//달력 cell 만들어 출력
    }
    function buildCalendar(){//현재 달 달력 만들기
        var doMonth = new Date(today.getFullYear(),today.getMonth(),1);
        //이번 달의 첫째 날,
        //new를 쓰는 이유 : new를 쓰면 이번달의 로컬 월을 정확하게 받아온다.     
        //new를 쓰지 않았을때 이번달을 받아오려면 +1을 해줘야한다. 
        //왜냐면 getMonth()는 0~11을 반환하기 때문
        var lastDate = new Date(today.getFullYear(),today.getMonth()+1,0);
        //이번 달의 마지막 날
        //new를 써주면 정확한 월을 가져옴, getMonth()+1을 해주면 다음달로 넘어가는데
        //day를 1부터 시작하는게 아니라 0부터 시작하기 때문에 
        //대로 된 다음달 시작일(1일)은 못가져오고 1 전인 0, 즉 전달 마지막일 을 가져오게 된다
        var tbCalendar = document.getElementById("calendar");
        //날짜를 찍을 테이블 변수 만듬, 일 까지 다 찍힘
        var tbCalendarYM = document.getElementById("tbCalendarYM");
        //테이블에 정확한 날짜 찍는 변수
        //innerHTML : js 언어를 HTML의 권장 표준 언어로 바꾼다
        //new를 찍지 않아서 month는 +1을 더해줘야 한다. 
         tbCalendarYM.innerHTML = today.getFullYear() + "년 " + (today.getMonth() + 1) + "월"; 

         /*while은 이번달이 끝나면 다음달로 넘겨주는 역할*/
        while (tbCalendar.rows.length > 2) {
        //열을 지워줌
        //기본 열 크기는 body 부분에서 2로 고정되어 있다.
              tbCalendar.deleteRow(tbCalendar.rows.length-1);
              //테이블의 tr 갯수 만큼의 열 묶음은 -1칸 해줘야지 
            //30일 이후로 담을달에 순서대로 열이 계속 이어진다.
         }
         var row = null;
         row = tbCalendar.insertRow();
         //테이블에 새로운 열 삽입//즉, 초기화
         var cnt = 0;// count, 셀의 갯수를 세어주는 역할
        // 1일이 시작되는 칸을 맞추어 줌
         for (i=0; i<doMonth.getDay(); i++) {
         /*이번달의 day만큼 돌림*/
              cell = row.insertCell();//열 한칸한칸 계속 만들어주는 역할
              cnt = cnt + 1;//열의 갯수를 계속 다음으로 위치하게 해주는 역할
         }
        /*달력 출력*/
         for (i=1; i<=lastDate.getDate(); i++) { 
         //1일부터 마지막 일까지 돌림
              cell = row.insertCell();//열 한칸한칸 계속 만들어주는 역할
              cell.innerHTML = i;//셀을 1부터 마지막 day까지 HTML 문법에 넣어줌
              cnt = cnt + 1;//열의 갯수를 계속 다음으로 위치하게 해주는 역할
          if (cnt % 7 == 1) {/*일요일 계산*/
              //1주일이 7일 이므로 일요일 구하기
              //월화수목금토일을 7로 나눴을때 나머지가 1이면 cnt가 1번째에 위치함을 의미한다
            cell.innerHTML = "<font color=red>" + i
            //1번째의 cell에만 색칠
        }    
          if (cnt%7 == 0){/* 1주일이 7일 이므로 토요일 구하기*/
              //월화수목금토일을 7로 나눴을때 나머지가 0이면 cnt가 7번째에 위치함을 의미한다
              cell.innerHTML = "<font color=blue>" + i
              //7번째의 cell에만 색칠
               row = calendar.insertRow();
               //토요일 다음에 올 셀을 추가
          }
          /*오늘의 날짜에 노란색 칠하기*/
          if (today.getFullYear() == date.getFullYear()
             && today.getMonth() == date.getMonth()
             && i == date.getDate()) {
              //달력에 있는 년,달과 내 컴퓨터의 로컬 년,달이 같고, 일이 오늘의 일과 같으면
            cell.bgColor = "#FAF58C";//셀의 배경색을 노랑으로 
           }
         }
    }
</script>
</head>
<body>
											<!-- menubar start -->
	<nav class="navbar navbar-primary">
	  <div class="container-fluid">
	    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
	      <ul class="nav navbar-nav">
	        <li class="dropdown">
	          <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false"><img src="https://github.com/uniqueHRH/travel/blob/master/travel/src/main/webapp/imgs/menubar.png?raw=true" width=40px, height=40px/></a>
	          <ul class="dropdown-menu" role="menu">
	            <li id="tour"><a href="#">투어</a>
	            	<ul id="tour_sub">
	            		<li><a href="${root }tour/eastasia">중국/일본</a></li>
	            		<li><a href="${root }tour/southeastasia">동남아시아</a></li>
	            		<li><a href="${root }tour/america">아 메 리 카</a></li>
	            		<li><a href="${root }tour/europe">유 &nbsp; &nbsp; &nbsp; &nbsp;럽</a></li>
	            		<li><a href="${root }tour/pacific">남 태 평 양</a></li>
	            		<li><a href="${root }tour/africa">아 프 리 카</a></li>
	            		<li><a href="${root }tour/theme">테 마 여 행</a></li>
	            	</ul>
	            </li>
	            <li class="divider"></li>
	            <li id="comm"><a href="#">커뮤니티</a>
		            <ul id="comm_sub">
	            		<li><a href="${root }board/review">여행후기</a></li>
	            		<li><a href="${root }board/partner">동행구하기</a></li>
	            		<li><a href="${root }board/free">자유게시판</a></li>
	            	</ul>
            	</li>
	            <li class="divider"></li>
	            <li><a id="event"href="${root }board/event">이벤트</a></li>
	            <li class="divider"></li>
	            <li id="serv"><a href="#">고객센터</a>
	            	<ul id="serv_sub">
	            		<li><a href="${root }board/notice">공 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;지</a></li>
	            		<li><a href="${root }board/qna">자주묻는질문</a></li>
	            	</ul>
	            </li>
	           <c:if test="${sessionScope.staffcheck ne null }">
	            <li class="divider"></li>
	            <li id="system"><a href="#">시스템관리</a>
	            	<ul id="system_sub">
	            		<li><a href="${root }system/staff">직원 관리</a></li>
	            		<li><a href="${root }system/guide">가이드관리</a></li>
	            		<li><a href="${root }system/client">회원관리</a></li>
	            		<li><a href="${root }system/paid">결제관리</a></li>
	            		<li><a href="${root }system/report">신고관리</a></li>
	            	</ul>
	            </li>
	            </c:if>
	          </ul>
	        </li>
	      </ul>
		<div align="center" style="disply:inline-block;">
			<a href="${root }"><img src="https://github.com/uniqueHRH/travel/blob/master/travel/src/main/webapp/imgs/logoA.png?raw=true" width=130px></a>
	      <ul class="nav navbar-nav navbar-right">
	        <!-- 로그인시 숨김 -->
	        <c:if test="${sessionScope.check eq null && sessionScope.staffcheck eq null }">
	        <li><a id="side" href="${root }main/login" >로그인</a></li>
	        <li><a id="side" href="${root }main/admin" >회원가입</a></li>
	        </c:if>
	        <!-- 직원로그인시 -->
	        <c:if test="${sessionScope.staffcheck ne null }">
	        <li class="dropdown">
	          <a id="side" href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">나의페이지<span class="caret"></span></a>
	          <ul class="dropdown-menu" id="dropdown_sub" role="menu">
	            <li><a href="${root }main/staffinfo">내정보관리</a></li>
	            <li><a href="${root }main/logout">로그아웃</a></li>
	          </ul>
	        </li>
	        </c:if>
	        <!-- 회원로그인시 -->
	        <c:if test="${sessionScope.check ne null }">
	        <li class="dropdown">
	          <a id="side" href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">${sessionScope.check.client_nick1}님<span class="caret"></span></a>
	          <ul class="dropdown-menu" id="dropdown_sub" role="menu">
	            <li><a href="${root }main/message">쪽지함</a></li>
	            <li class="divider"></li>
	            <li><a href="#">최근본상품</a></li>
	            <li><a href="${root }main/wish">찜한상품</a></li>
	            <li><a href="#">결제상품</a></li>
	            <li class="divider"></li>
	            <li><a href="#">내가쓴글</a></li>
	            <li class="divider"></li>
	            <li><a href="${root }main/myinfo">내정보관리</a></li>
	            <li><a href="${root }main/logout">로그아웃</a></li>
	          </ul>
	        </li>
	        </c:if>
	      </ul>
		</div>
	    </div><!-- /.navbar-collapse -->
	  </div><!-- /.container-fluid -->
	</nav>
<div class="container">     
 <div class="row">
	<div class="col-md-12">
		<div class="page-header" align="center">
	  <h1>중국여행1-1</h1>
 </div>
	<!-- contenets start -->
	<p id="china1comm">자유여행객들을 위한 일일투어! 중국여행 짱짱맨 코로나조심</p>
	<div class="row">
  <div class="col-xs-6 col-md-4" id="thumbnail">
    <a href="#" class="thumbnail">
      <img id="chinaimg1" src="https://github.com/uniqueHRH/travel/blob/master/src/main/webapp/imgs/danang.jpg?raw=true" alt="">
    </a>
  </div>
  <div class="col-xs-6 col-md-4" id="thumbnail">
    <a href="#" class="thumbnail">
      <img id="chinaimg1" src="https://github.com/uniqueHRH/travel/blob/master/src/main/webapp/imgs/danang.jpg?raw=true" alt="">
    </a>
  </div>
  <div class="col-xs-6 col-md-4" id="thumbnail">
    <a href="#" class="thumbnail">
      <img id="chinaimg1" src="https://github.com/uniqueHRH/travel/blob/master/src/main/webapp/imgs/danang.jpg?raw=true" alt="">
    </a>
  </div>
  			<h1>여행정보</h1>
 	<table class="table table-condensed" id="tourtable">
		<tr>
			<td class="active" style="text-align: center;">여행도시</td>
			<td style="width: 150px;">청도</td>
			<td class="active" style="text-align: center;">최소출발인원</td>
			<td>1명</td>
		</tr>
		<tr>
			<td class="active" style="text-align: center;">투어일</td>
			<td>매일</td>
			<td class="active" style="text-align: center;">가이드</td>
			<td>포함(여기에 가이드이름?)</td>
		</tr>
		<tr>
			<td class="active" style="text-align: center;">차량</td>
			<td>포함</td>
			<td class="active" style="text-align: center;">상품가</td>
			<td>100,000원</td>
		</tr>
		</table>
			
	<table id="calendar" border="0"; style="border-color:white; ">
    <tr><!-- label은 마우스로 클릭을 편하게 해줌 -->
        <td align="center"><label onclick="prevCalendar()"><
        </label></td>
        <td align="center" id="tbCalendarYM" colspan="5">
        yyyy년 m월</td>
        <td align="center"><label onclick="nextCalendar()">>
            
        </label></td>
    </tr>
    <tr>
        <td align="center" width="50px;"><font color ="red">일</td>
        <td align="center" width="50px;">월</td>
        <td align="center" width="50px;">화</td>
        <td align="center" width="50px;">수</td>
        <td align="center" width="50px;">목</td>
        <td align="center" width="50px;">금</td>
        <td align="center" width="50px;"><font color ="blue">토</td>
    </tr> 
</table>
	<!--calandar end  --> 
	<button type="button" id="bookbtn" class="btn btn-default btn-lg">예약하기</button>
	</div>
  </div>
 </div>
</div>
 <div class="row">
	<div class="col-md-12">
    <div class="footer">
    	
    </div>
   </div>
 </div> 

</body>
</html>