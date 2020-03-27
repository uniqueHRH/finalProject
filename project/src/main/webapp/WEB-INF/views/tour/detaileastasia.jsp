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
      width: 75%;
   }
   #firstimg,#secondimg,#thirdimg{
      display: inline-block;
      width: 100%;
      height: 40%;
      margin-bottom: 30px;
      margin-top: 10px;
   }
   .thumbnail{
      border: none;
   }
   #comments{
      font-size: 20px;
      text-align: left;
   }
   
   #tourtable{      
       width: 700px;
      position: absolute;
      left: 60px;
      height: 150px;
      display: inline-block;
      margin: 0px;
      font-size: 20px;
      margin-top: 10px;
   }
   #mapbtn{
   	  position: absolute;
      left: 1150px;
      top: 950px;
   }
   #bookbtn{
      width: 350px;
      position: absolute;
      left: 880px;
      top: 1010px;
   }
   #course{
      position: absolute;
      font-size: 30px;
      left: 350px;
      top: 700px;
   }
   #courseimg{
      position: absolute;
      left: 70px;
      top: 800px;
   }
   #map {
        width: 370px;
        height: 400px;
        position: relative fixed; 
        left: 870px;
   }
   #map1{
   		width: 600px;
        height: 500px;
        position: relative fixed;
        left: 400px;
   }
</style>

<script type="text/javascript" src="${root }js/jquery-1.12.4.js"></script>
<script type="text/javascript" src="${root }js/bootstrap.js"></script>
</head>
<body>
<jsp:include page="/WEB-INF/menubar.jsp"/>
<div class="container">     
 <div class="row">
   <div class="col-md-12">
   
 
      <div class="page-header" align="center">
     <h1>${bean.name }</h1>
 </div>
   <!-- contenets start -->
  <p id="comments">여행의 포인트 : ${bean.comments }</p>   
   <!-- img넣기 -->
   
   <div class="row">
  <div class="col-xs-6 col-md-4" id="thumbnail">
    <class="thumbnail">
      <img id="firstimg" src="${bean.firstimg }">
    
  </div>
  <div class="col-xs-6 col-md-4" id="thumbnail">
    <class="thumbnail">
      <img id="secondimg" src="${bean.secondimg }">
    
  </div>
  <div class="col-xs-6 col-md-4" id="thumbnail">
    <class="thumbnail">
      <img id="thirdimg" src="${bean.thirdimg }" >
    
  </div>
      <!-- img end -->
      
      
           <div style="padding-top: 100px;"><h1>여행정보</h1></div>
           
     
    <table class="table table-condensed" id="tourtable">
      <tr>
         <td class="active" style="text-align: center; width: 150px">상풍명</td>
         <td style="width: 350px;">${bean.name }</td>
         <td class="active" style="text-align: center; width: 150px">지역</td>
         <td width="200px;">${bean.city }</td>
      </tr>
      <tr>
         <td class="active" style="text-align: center;">투어일</td>
         <td>매일</td>
         <td class="active" style="text-align: center;">가이드</td>
         <td>포함(${bean.guideVo.guide_name } 가이드)</td>
      </tr>
      <tr>
         <td class="active" style="text-align: center;">차량</td>
         <td>${bean.vehicle }</td>
         <td class="active" style="text-align: center;">상품가</td>
         <td>${bean.cost }원</td>
         <td><input type="hidden" id="check" value="${sessionScope.check}"></td>
      </tr>
      </table>
      
      <div id="map"></div>
    
      <!-- Button trigger modal -->
	<button type="button" class="btn btn-primary" data-toggle="modal" data-target="#myModal" id="mapbtn">자세히보기</button>

<!-- Modal -->
<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
  <div class="modal-dialog" role="document">
         	<div id="map1"></div>
      </div>    
</div>
<!-- model end -->
   <a id="bookform" href="${root }tour/eastasia/${bean.tour_no}/booking"><button type="button" id="bookbtn" class="btn btn-default btn-lg">예약하기</button></a>
   
      
      <p id="course"> <여행일정> </p>
      <div id="courseimg">
     <img src="${bean.course }">
      </div>
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
 
 <script type="text/javascript">
   $(document).ready(function() {
      $('#bookbtn').click(function(){
            var check = $('#check').val();
            if(!check){
               $("#bookform").attr("href", "../../main/login");
            }           
         });
   });
 
   //구글맵관련 
   function initMap() {
  	 var myLatLng = myLatlng = new google.maps.LatLng(${bean.latlng});//메인구글맵좌표
  	  
	//메인구글맵 start
 	 var map = new google.maps.Map(document.getElementById('map'), {
    	zoom: 7,
    	center: myLatLng
      });
 
 	 var marker = new google.maps.Marker({
    position: myLatLng,//좌표선택해주면됨
    icon:"https://github.com/uniqueHRH/final/blob/master/project/src/main/webapp/imgs/pin.png?raw=true",
    map: map,
    title: '${bean.city}'//marker  표시
  }); 
 	//메인구글맵end
 	
 	var map1 = new google.maps.Map(document.getElementById('map1'), {
    	zoom: 10,
    	center: myLatLng
      });
 	var spot=new Array();
 	var latlng1=new Array();
 	<c:forEach items="${lists}" var="bean1">
 	spot.push("${bean1.spot}");// 배열에 spot이 담겨있음
 	latlng1.push("${bean1.latlng}");//배열에 좌표가 담겨있음.
    </c:forEach>
	    
	
 	for(var i=0; i<latlng1.length; i++){
 		var myLatLng1 ={lat:Number(latlng1[i].split(",")[0]), lng:Number(latlng1[i].split(",")[1])};//디테일구글맵좌표
	   	var marker1 = new google.maps.Marker({
		    position:myLatLng1,//좌표선택해주면됨
	    	map: map1,
	    	title: spot[i]//marker  표시
 	 });
			   	
   }
} 
    
</script>
<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBOqxnoiL8ERSpf1bmFqxC7SjKeup1twK8&callback=initMap"
    async defer></script> 
</body>
</html>