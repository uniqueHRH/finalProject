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
<link rel="stylesheet" type="text/css" href="${root }css/boardDetail.css" />
<style type="text/css">
   
</style>
</head>
<body>
<!-- menubar start -->
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
     <h1>DETAIL</h1>
   </div>
      
<!-- 제목 -->
<form class="form-inline" method="POST">
   <div>
      <input type="text" class="form-control" id="board_sub" name="board_sub" value="${bean.free_sub }" style="cursor:default" disabled>
      <input type="hidden" id="board_no" name="board_no" value="${bean.board_no }">
   </div>
   <p></p>
   <div>
      <div class="form-group" align="left">
         <label for="exampleInputName2">닉네임</label>
         <input type="text" class="form-control" id="client_nick1" name="client_nick1" value="${bean.client_nick1 }" style="cursor:default" disabled>
      </div>
      &nbsp; &nbsp;
      <div class="form-group">
         <label for="exampleInputEmail2">조회수</label>
         <input type="text" class="form-control" id="board_count" value="${bean.free_count }" style="cursor:default" disabled>
         <input type="hidden" id="log" name="log" value="${sessionScope.check.client_nick1}">
      </div>
      &nbsp; &nbsp;
      <div class="form-group" align="left">
      	<label for="exampleInputEmail2">작성일</label>
		<input type="text" class="form-control" id="board_date" value="${bean.free_date }" style="cursor:default" disabled>
      </div>
   </div>
   <p></p>
   <div contenteditable="false" id="contentM">
		<img src="${root }resources/${bean.free_thumb }" id="board_thumb"/>
		<input type="hidden" id="hiddenI" value="${bean.free_thumb }"/>
		<input type="text" id="contentC" value="${bean.free_content }" disabled/>
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
         <tbody id="tbody">
         <c:forEach items="${list }" var="beans">
            <tr id="tr1">
               <th id="th">${beans.client_nick1 }</th>
               <th id="th">${beans.reply_date }</th>
			</tr>
			<tr id="tr2">
				<td colspan="2"><input type="text" id="reply" name="reply_${beans.reply_no }" value="${beans.reply_content }" disabled></td>
				<td>
					<button type="button" id="edit" name="edit_${beans.reply_no }" class="btn btn-default"><img src="https://github.com/uniqueHRH/final/blob/master/project/src/main/webapp/imgs/edit.png?raw=true" width="15px" height="20px"/></button>
					<button type="button" id="update" name="update_${beans.reply_no }" class="btn btn-default"><img src="https://github.com/uniqueHRH/final/blob/master/project/src/main/webapp/imgs/insert.png?raw=true" width="15px" height="20px"/></button>
					<button type="button" id="cancel" name="cancel_${beans.reply_no }" class="btn btn-default"><img src="https://github.com/uniqueHRH/final/blob/master/project/src/main/webapp/imgs/delete.png?raw=true" width="15px" height="15px"/></button>
					<button type="button" id="dele2" name="dele2_${beans.reply_no }" class="btn btn-default"><img src="https://github.com/uniqueHRH/final/blob/master/project/src/main/webapp/imgs/delete.png?raw=true" width="15px" height="15px"/></button>
				</td>
            </tr>
         <input type="hidden" id="reply_no" name="reply_no" value="${beans.reply_no}">
         </c:forEach>
         </tbody>
      </table>
      <p></p>
      <input type="text" class="form-control" id="reply_content" name="reply_content">
      <button type="button" id="insert" class="btn btn-default"><img src="https://github.com/uniqueHRH/final/blob/master/project/src/main/webapp/imgs/insert.png?raw=true" width="30px" height="27px" style="vertical-align:30px;"/></button>
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
		$('#hamb').hide();
		$('#hide').hide();
		
		$('#subm').hide();
		$('#dele').hide();
	      
		$('#tour_sub').hide();
		$('#comm_sub').hide();
		$('#serv_sub').hide();
		$('#system_sub').hide();
		
		$('#maintext1').hide();
		$('#maintext2').hide();
		$('#maintext3').hide();
		$('#maintext4').hide();
		
		$('#hambBtn').mouseenter(function() {
			$('#hamb').show();
			$(this).hide();
		});
		$('#hamb').mouseenter(function() {
			$(this).show();
			$('#hambBtn').hide();
		}).mouseleave(function() {
			$('#hamb').hide();
			$('#hambBtn').show();
		});
		
		// 이미지가 없을 때 출력되지 않도록
		var img=$('#hiddenI').val();
		
		if(!img) {
			$('#board_thumb').remove();
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
         location.href="../freeUp/${bean.board_no}";
      });
      
      // 삭제버튼
		$('#dele').on('click',function() {
			var con=confirm('삭제하시겠습니까?');
			var replyCnt=$('#reply').length;
			
			if(con) {
				if(replyCnt>0) {
					alert('댓글이 작성된 게시물은 삭제가 불가능합니다');
				} else {
					$.ajax({
		                  url:'../freeDel',
		                  type:'POST',
		                  data:{key:$('input[type=hidden]').val()},
		                  success:function() {
		                      alert('삭제되었습니다');
		                      location.href="../free";
		                  },
		                  error:function() {
		                     alert('삭제에 실패했습니다');
		                  }
		            });
				}
			}
		});
            
	// 목록버튼
	$('#goList').on('click',function() {
		location.href="../free";
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
		            url:'../freeRepIn',
		            type:'POST',
   		            cache:false,
		            data:{board_no:$('#board_no').val(), client_nick1:log, reply_content:reply},
		            success:function() {
		            	reload();
		            },
		            error:function() {
		               alert('다시 시도해주세요');
		            }
	         	});
			}
      	});
      
      // 댓글 수정버튼
		$('button[name^=cancel_').hide();
		$('button[name^=update_').hide();
		$('button[name^=edit]').on('click',function() {
     		var name=$(this).attr('name');
     		var num=name.replace('edit_','');   // 버튼의 값
     		
     		$('button[name=edit_'+num+']').on('click',function() {
				$('input[name=reply_'+num+']').attr('disabled',false);
				$('button[name=edit_'+num+']').hide();
				$('button[name=update_'+num+']').show();
				$('button[name^=cancel_'+num+']').show();
				$('button[name=cancel_'+num+']').on('click',function() {
					var con=confirm('수정을 취소하시겠습니까?');
					if(con) {
						reload();
					}
				});
				
				$('button[name=update_'+num+']').on('click',function() {
					var text=$('input[name=reply_'+num+']').val();
					var con=confirm('수정하시겠습니까?');
					
					if(con) {
						$.ajax({
				            url:'../freeRepup',
				            type:'POST',
				            data:{reply_no:num, reply_content:text},
				            success:function() {
				            	reload();
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
     		            url:'../freeRepDel',
     		            type:'POST',
     		            cache:false,
     		            data:{key:num},
     		            success:function(obj) {
     		            	alert('삭제완료!');
     		            },
     		            error:function() {
     		               alert('다시 시도해주세요');
     		            }
     		         });
     			}
     		});
     	});
      
      function reload() {
    	  location.reload();
      }
      
      function time() {
    	  setTimeout('time()',2000);
      }
   });
   
</script>
</html>
