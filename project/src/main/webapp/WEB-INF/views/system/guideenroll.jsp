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
    #table{
   		font-family: "Jua";
   }
    .form-horizontal {
         width:570px;
         margin: 0 auto;
         text-align: center;
    }
    #staff_name1{
    	margin-top: 50px;
    }
    #staff_team{
    	 width:400px;
    	 height: 35px;
    }
    #adminbtn,#cancelbtn{
       width: 190px;
       position: relative;
       left: 20px;
       display: inline;
       margin-top: 20px;
    }
    form{
    	padding:0 0 200 0;
    }
</style>
</head>
<body>
<jsp:include page="/WEB-INF/menubar.jsp"/>

<!-- contents start -->
<div id="table">
    <div class="page-header" id="page-header" align="center">
     <h1>가이드 등록</h1>
   </div>
   

<form action="../system/guideIns" class="form-horizontal" method="post">
  
  <div class="form-group">
    <label for="guide_name" class="col-sm-2 control-label">이 름</label>
    <div class="col-sm-10">
      <input type="text" class="form-control" id="guide_name" name="guide_name" style="width:400px">
    </div>
  </div>
  <div class="form-group">
    <label for="guide_phone" class="col-sm-2 control-label">연락처</label>
    <div class="col-sm-10">
      <input type="text" class="form-control" id="guide_phone" name="guide_phone" style="width:400px">
    </div>
  </div>
  <div class="form-group">
    <label for="guide_city" class="col-sm-2 control-label">지 역</label>
    <div class="col-sm-10">
      <input type="text" class="form-control" id="guide_city" name="guide_city" style="width:400px">
    </div>
  </div>
  <div class="form-group">
     <label for="guide_email" class="col-sm-2 control-label">이메일</label>
    <div class="col-sm-10">
      <input type="text" class="form-control" id="guide_email" name="guide_email" style="width:400px">
    </div>
  </div>
       
<button type="submit" id="adminbtn" class="btn btn-default btn-lg">등록 완료</button>
<button type="button" id="cancelbtn" class="btn btn-default btn-lg" onclick="location.href='../system/guide'">취 소</button>
</form>
</div>
<jsp:include page="/WEB-INF/footer.jsp"/>
<script type="text/javascript" src="${root }js/jquery-1.12.4.js"></script>
<script type="text/javascript" src="${root }js/bootstrap.js"></script>
<script type="text/javascript">
   $(document).ready(function() {
   	
   });
      
</script>
</body>
</html>