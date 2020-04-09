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
	h1 {
		font-family: 'Jua';
	}
	#table {
      width:700px;      
      margin:0 auto;
      font-family: 'Jua';
      font-size:18px;
   }
	#img1,#img2,#img3,#img4,#img5{
		width: 30px;
		height:30px;
	}
	.slick-dots{ 
	 		text-align: center; 
	 }
	.slick-dots li{ 
	  display: inline-block; margin: 0 5px; 
	}
	.slick-prev.slick-arrow{
		left: 0; 
	} 
	.slick-next.slick-arrow{ 
		right: 0; 
	}
	.slick-arrow{ 
		z-index: 2; /* prev버튼은 위치 이동시 이미지 뒤로 숨겨짐 */ 
		position:absolute; /* 원하는 위치에 지정 */ 
		top: 50%; 
		width: 80px; 
		height: 20px; 
		transform: translateY(-25px);
	}


</style>

</head>
<body>
<jsp:include page="/WEB-INF/menubar.jsp"/>

<div class="container">     
 <div class="row">
	<div class="col-md-12">
		<div class="page-header" align="center">
	  <h1>찜한상품(안됨대기)</h1>
 </div>
	<!-- Carousel start -->
	
<div id="table" style="width: 80%; height: 300px;">
<div class="your-class">
  <div id="img1" style="width: 500px;"> <!-- tourstart -->
  		<a href="#"><div class="col-sm-6 col-md-3">
    <div class="thumbnail">
      <img src="${root }imgs/danang.jpg" alt="...">
      <div class="caption">
        <h3>중국(북경)</h3>
        <p>간단한 설명을 넣으면 됩니다.</p>
        <p>100,000원</p>
      </div>
    </div>
  </div>
  </a>
   </div> <!-- tour1 end -->
 
  
  <div id="img2">
  	<img src="${root }imgs/danang.jpg" alt="...">
   </div>
  
  <div id="img3">
  	<img src="${root }imgs/danang.jpg" alt="...">
   </div>
    
    <div id="img4">
    	<img src="${root }imgs/danang.jpg" alt="...">
    </div>
    <div id="img5">
    	<img src="${root }imgs/danang.jpg" alt="...">
    </div>
</div>	
</div>	
	<!-- Carousel end -->

  </div>
 </div>
</div>
<jsp:include page="/WEB-INF/remote.jsp"/>
<jsp:include page="/WEB-INF/socket.jsp"/>
<jsp:include page="/WEB-INF/footer.jsp"/>
<script type="text/javascript" src="${root }js/jquery-1.12.4.js"></script>
<script type="text/javascript" src="${root }js/bootstrap.js"></script>
<script type="text/javascript" src="//code.jquery.com/jquery-1.11.0.min.js"></script>
<script type="text/javascript" src="//code.jquery.com/jquery-migrate-1.2.1.min.js"></script>
<script type="text/javascript" src="slick/slick.min.js"></script>
<script type="text/javascript" src="//cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.min.js"></script>
<script type="text/javascript">
	$(document).ready(function() {
		$('.your-class').slick({
				  dots:false,
				  arrows:true,
				  pauseOnHover:true,
				  slidesToShow: 3,
				  slidesToScroll: 1,
				  autoplay: true,
				  autoplaySpeed: 2000,
				});
		
	});
</script>
</body>
</html>