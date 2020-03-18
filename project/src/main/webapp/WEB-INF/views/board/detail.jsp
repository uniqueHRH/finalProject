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
	.container {
		width: 100%;
		display: inline-block;
		font-family: 'Jua';
		margin:0 auto;
	}
	form {
		width:750px;
		margin:0 auto;
		align:center;
		text-align:center;
		padding:0px;
	}
	#board_theme1, #board_theme2, #board_theme3, #board_land, #board_sub, #client_nick1, #board_date, #board_count, #board_content, #replyBoard {
		background-color:white;
	}
	#board_sub {
		width:575px;
		align:left;
		text-align:left;
	}
	#board_theme1, #board_theme2, #board_theme3 {
		text-align:center;
		font-size:13px;
		font-weight:normal;
		width:90px;
		border-color:white;
	}
	#board_date {
		width:120px;
	}
	#client_nick1, #board_count {
		width:140px;
	}
	#board_content {
		width:700px;
		height:300px;
	}
	#btn {
		text-align:center;
	}
	#replyShow {
		width:700px;
		margin:0 auto;
	}
	/* 댓글 */
	#table {
		width:700px;
		margin:0 auto;
		border-color:gray;
		border:1px solid #ccc;
		padding:10px;
	}
	#replyBoard {
		width:700px;
		height:100px;
	}
	#reply {
		width:570px;
		height:30px;
		font-family:'Jua';
		border:0;
		outline:0;
		background-color:gold;
	}
	#reply_content {
		width:600px;
	}
	#edit, #update, #cancel, #dele2, #insert {
		text-align:center;
		width:30px;
		height:25px;
		text-align:center;
		border:0;
		outline:0;
	}
	tbody th:nth-child(1) {
		width:110px;
		background-color:pink;
	}
	tbody th:nth-child(2) {
		font-size:13px;
		font-weight:normal;
		color:gray;
	}
	tbody td:nth-child(1) {
		font-size:13px;
		width:640px;
		height:25px;
	}
	tbody td:nth-child(2) {
		width:67px;
		background-color:red;
	}
   
</style>

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



<!-- contents start -->
<div class="container">
  <div class="row">
   <div class="col-md-12">
      <div class="page-header" id="page-header" align="center">
     <h1>DETAIL</h1>
   </div>
      
<!-- 제목 -->
<form class="form-inline" method="POST">
   <div>
      <input type="text" class="form-control" id="board_sub" name="board_sub" value="[${bean.board_land }] ${bean.board_sub }" style="cursor:default" disabled>
      <input type="text" class="form-control" id="board_date" value="${bean.board_date }" style="cursor:default" disabled>
      <input type="hidden" id="board_no" name="board_no" value="${bean.board_no }">
   </div>
   <p></p>
   <div align="right">
      <div class="form-group">
         <input type="hidden" class="form-control" id="board_theme" value="${bean.board_theme }" style="cursor:default" disabled>
         <input type="text" class="form-control" id="board_theme1" style="cursor:default" disabled>
         <input type="text" class="form-control" id="board_theme2" style="cursor:default" disabled>
         <input type="text" class="form-control" id="board_theme3" style="cursor:default" disabled>
      &nbsp; &nbsp;
         <label for="exampleInputName2">닉네임</label>
         <input type="text" class="form-control" id="client_nick1" value="${bean.client_nick1 }" style="cursor:default" disabled>
      </div>
      <div class="form-group">
      &nbsp; &nbsp;
         <label for="exampleInputEmail2">조회수</label>
         <input type="text" class="form-control" id="board_count" value="${bean.board_count }" style="cursor:default" disabled>
         <input type="hidden" id="log" name="log" value="${sessionScope.check.client_nick1}">
      &nbsp; &nbsp;
      </div>
   </div>
   <p></p>
   <div>
      <textarea class="form-control" id="board_content" placeholder="${bean.board_content }" style="cursor:default" disabled></textarea>
   </div>
   <p></p>
   <div id="btn">
      <button type="button" class="btn btn-default" id="subm">수정하기</button>
      <button type="button" class="btn btn-default" id="dele">삭제하기</button>
      <button type="button" class="btn btn-default" id="goList">목록으로</button>
      <p></p>
      <div>
         <button type="button" class="btn btn-default btn-lg btn-block" id="replyShow">댓글보기</button>
      </div>
      <p></p>
   </div>

<!-- 댓글 출력 -->
   <div id="table">
      <table>
         <tbody>
         <c:forEach items="${list }" var="beans">
            <tr>
               <th>${beans.client_nick1 }</th>
               <th>${beans.reply_date }</th>
			</tr>
			<tr>
				<td colspan="2"><input type="text" id="reply" name="reply_${beans.reply_no }" value="${beans.reply_content }" disabled></td>
				<td>
					<button type="button" id="edit" name="edit_${beans.reply_no }" class="btn btn-default">수정</button><!-- <img src="https://github.com/uniqueHRH/project/blob/master/src/main/webapp/imgs/edit.png?raw=true" width="15px" height="20px" /> -->
					<button type="button" id="update" name="update_${beans.reply_no }" class="btn btn-default">완료</button><!-- <img src="https://github.com/uniqueHRH/project/blob/master/src/main/webapp/imgs/insert.png?raw=true" width="15px" height="20px" /> -->
					<button type="button" id="cancel" name="cancel_${beans.reply_no }" class="btn btn-default">취소</button><!-- <img src="https://github.com/uniqueHRH/project/blob/master/src/main/webapp/imgs/delete.png?raw=true" width="15px" height="15px"/> -->
					<button type="button" id="dele2" name="dele2_${beans.reply_no }" class="btn btn-default">삭제</button><!-- <img src="https://github.com/uniqueHRH/project/blob/master/src/main/webapp/imgs/delete.png?raw=true" width="15px" height="15px"/> -->
				</td>
            </tr>
         <input type="hidden" id="reply_no" name="reply_no" value="${beans.reply_no}">
         </c:forEach>
         </tbody>
      </table>
      <p></p>
      <input type="text" class="form-control" id="reply_content" name="reply_content">
      <button type="button" id="insert" class="btn btn-default"><img src="https://github.com/uniqueHRH/project/blob/master/src/main/webapp/imgs/insert.png?raw=true" width="30px" height="27px" style="vertical-align:30px;"/></button>
   </div>
      
</form>
      </div>
   </div>
</div>




<!-- contents end -->
     
   <div class="footer">
       <img id="footer1" src="https://www.gravatar.com/avatar/f6562ca8eeff16dc45e7cf16e0390009?d=identicon&s=40" alt="">
    </div>
</body>
<script type="text/javascript" src="${root }js/jquery-1.12.4.js"></script>
<script type="text/javascript" src="${root }js/bootstrap.js"></script>

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
      
      $('#subm').hide();
      $('#dele').hide();
   
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
      
      // 테마 출력
      var themeVal=$('#board_theme').val();
      var themeLength=themeVal.length;
      var themeSplit=themeVal.split(',');
      
      for(i=0; i<themeSplit.length; i++) {
         var themeFir=themeSplit[0];
         var themeSec=themeSplit[1];
         var themeThi=themeSplit[2];
         
         $('#board_theme1').val('#'+themeFir);
         $('#board_theme2').val('#'+themeSec);
         $('#board_theme3').val('#'+themeThi);
      }
      
      // 작성자만 수정/삭제 가능
      var mas=$('#client_nick1').val();
      var log=$('#log').val();
      
      if(mas==log) {
	      $('#subm').show();
	      $('#dele').show();
      }
      
      // 수정버튼
      $('#subm').on('click',function() {
         location.href="../update/${bean.board_no}";
      });
      
      // 삭제버튼
      $('#dele').on('click',function() {
         var con=confirm('삭제하시겠습니까?');
         if(con) {
            $.ajax({
                  url:'../delete',
                  type:'POST',
                  data:{key:$('input[type=hidden]').val()},
                  success:function() {
                      alert('삭제되었습니다');
                      location.href="../review";
                  },
                  error:function() {
                     alert('삭제에 실패했습니다');
                  }
            });
         }
      });
      
	// 목록버튼
	$('#goList').on('click',function() {
		location.href="../review";
	});
      
      // 댓글보기 버튼
	$('#table').hide()
	
	var show=$('#replyShow');
	var table=$('#table');
      
	show.on('click',function() {
		table.show();
		show.text('댓글닫기');
         
		show.on('click',function() {
			table.hide();
			show.text('댓글보기');
		});
	});
      
      // 입력 버튼
		var log=$('#log').val();
		
		if(!log) {
			$('#reply_content').val('로그인 후 이용이 가능합니다').attr('disabled',true);
			return false;
		} else {
			$('#reply_content').attr('disabled',false);
		}
			
		$('#insert').on('click',function() {
			var text=$('#reply_content').val();
			var no=$('#board_no').val();
			var reply=$('#reply_content').val();
			
			if(!text) {
				alert('내용을 입력해주세요');
				return false;
				event.preventDefault();
			} else {
				$.ajax({
		            url:'../reply',
		            type:'POST',
		            data:{board_no:$('#board_no').val(), client_nick1:log, reply_content:reply},
		            success:function() {
		               location.reload();
		            },
		            error:function() {
		               alert('다시 시도해주세요');
		            }
	         	});
			}
      	});
      
      // 수정버튼
		$('button[id=update]').hide();
		$('button[id=cancel]').hide();
		$('button[name^=edit]').on('click',function() {
     		var name=$(this).attr('name');
     		var num=name.replace('edit_','');   // 버튼의 값
     		
     		$('button[name=edit_'+num+']').on('click',function() {
				$('input[name=reply_'+num+']').attr('disabled',false);
				$('button[name=edit_'+num+']').hide();
				$('button[name=dele2_'+num+']').hide();
				$('button[name=update_'+num+']').show();
				$('button[name=cancel_'+num+']').show();
				$('button[name=cancel_'+num+']').on('click',function() {
					var con=confirm('수정을 취소하시겠습니까?');
					if(con) {
						location.reload();
					}
				});
				
				$('button[name=update_'+num+']').on('click',function() {
					var text=$('input[name=reply_'+num+']').val();
					var con=confirm('수정하시겠습니까?');
					
					if(con) {
						$.ajax({
				            url:'../replyEdit',
				            type:'POST',
				            data:{reply_no:num, reply_content:text},
				            success:function() {
								location.reload();
								alert('성공');
							},
							error:function() {
								alert('다시 시도해주세요');
							}
						});
					} 
				});
     		});
		});
      
      // 삭제버튼
     	$('button[name^=dele2]').on('click',function() {
     		var name=$(this).attr('name');
     		var num=name.replace('dele2_','');   // 버튼의 값
     		
     		$('button[name=dele2_'+num+']').on('click',function() {
     			var con=confirm('삭제하시겠습니까?');
     			
     			if(con) {
     				 $.ajax({
     		            url:'../replyDel',
     		            type:'POST',
     		            data:{key:num},
     		            success:function() {
     		            	alert('삭제완료!');
     		            	location.reload();
     		            },
     		            error:function() {
     		               alert('다시 시도해주세요');
     		            }
     		         });
     			}
     		});
     	});
   });
   
</script>
</html>
