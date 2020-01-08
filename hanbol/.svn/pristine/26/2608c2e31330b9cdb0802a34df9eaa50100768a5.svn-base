<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/include/header.jsp" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" 
	prefix="fn"%>    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" 
	prefix="c"%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
.menu4 { color: white; }
.table{
	width: 50%;
	border: 1px solid #cccccc;
	margin: 0 auto;
	border-radius: 3px;
	padding-bottom: 20px;
	border-radius: 5px;
}

.table{
	margin-top: 10px;
	overflow: hidden;
}

#ll a:first-child {
	margin-left: 30%;
	line-height: 30pt;
	float: left;
}
#ll a:nth-child(2) {
	margin-left:10%;
	line-height: 30pt;
	float: left;
}
#ll a {
	width: 950px;
	height: 40px;
	margin: 0 auto;
	float: right;
	line-height: 40px;
	font-size: 15px;
}

#comment-regist {
	text-align: center;	
	margin: 0 auto;
	width: 30%;
}
#comment-regist div { width: 50%; float: left;}
#comment-regist textarea {
	margin-top: 5px; 
}

.img_file { width: 787px; height:400px; float:left; margin-top:15px; margin-left: 120px;  }
 .scale{transform: scale(1);
  -webkit-transform: scale(1);
  -moz-transform: scale(1);
  -ms-transform: scale(1);
  -o-transform: scale(1);
  transition: all 0.3s ease-in-out;   /* 부드러운 모션을 위해 추가*/
  } 
 .scale:hover{
transform: scale(1.2);
  -webkit-transform: scale(1.2);
  -moz-transform: scale(1.2);
  -ms-transform: scale(1.2);
  -o-transform: scale(1.2);  
 } 
</style>
</head>
<script type="text/javascript">
$(function(){
	comment_list();
});

</script>
<body>
<input type="hidden" id="detail-id" data-name="no" value="${vo.no}"/>
<div class="table">

	<div>
		<img style="border-radius:50px; width: 80px; height: 80px; margin-top:20px; margin-left:20px; float: left; object-fit: cover;" src="${vo.user_pic}"/>
	</div>
	<div style="width: 100px; height: 50px; float:left; margin-top: 20px; margin-left:20px; font-size: 20px;  text-align:center;" >${vo.nickname}</div>
	
	<div style="float: right; margin-top: 20px; margin-right: 20px;">
		<img id="star" style="display:none; margin-right:-8px; margin-bottom:2px; width:30px; height:50px;"  src="img/star.png"/>
		<img class="scale" onclick="go_good()" style="width: 50px; height: 50px; cursor:pointer; " src="img/heart.png"/>
	</div>
	
	<div style="width: 100px; height: 50px; float:left; margin-top: 65px; margin-left:-102px;  text-align:center;">${vo.writedate}</div>
	<div style="width: 780px; float:left; border: 1px solid #cccccc; margin-top:10px; margin-left: 120px; padding: 3px; border-radius: 5px; text-align: left;">${fn: replace(vo.content, crlf, '<br>')}</div>
	
	<c:if test="${ !empty vo.co_filename1 }">
	<div><img class="img_file" src="${vo.co_file1}"/></div>
	</c:if>
	
	<c:if test="${ !empty vo.co_filename2 }">
	<div><img class="img_file" src="${vo.co_file2}"/></div>
	</c:if>
	
	<c:if test="${ !empty vo.co_filename3 }">
	<div><img class="img_file" src="${vo.co_file3}"/></div>
	</c:if>

</div>
<br>
<a class="btn-fill" onclick="go_list()">목록으로</a>
<!-- 로그인한 사용자가 작성한 글만 수정/삭제 가능 -->
<c:if test="${login_info.id eq vo.userid || login_info.id eq 'admin' }">
<a class="btn-fill" onclick="go_modify()">수정</a>
<a class="btn-fill" onclick="if( confirm('정말 삭제하시겠습니까?') ){ location='delete.co?no=${vo.no}' }">삭제</a>
</c:if> 
<br>
<br>
<form method="post" action="list.co">
	<input type="hidden" name="no" value="${vo.no}"/>
	<input type="hidden" name="curPage" value="${page.curPage}"/>
	<input type="hidden" name="search" value="${page.search}" />
	<input type="hidden" name="keyword" value="${page.keyword}" />
</form>
 <br>
 <div id="comment-regist">
	<div class="left">
		<strong>댓글작성</strong>
	</div>
	<div style="margin-bottom: 5px;" class="right">
		<a onclick="go_comment_regist()" class="btn-fill">등록</a>
	</div>
	<textarea id="comment" style="resize: none; width:99%; border-radius: 5px; height: 80px;"></textarea>
</div>
<div style="text-align:left; margin:0 auto; width: 500px; " 
	id="comment-list">
</div>
<div style="height:100px;"></div>

<script type="text/javascript">
function go_comment_regist(){
	if('${empty login_info}' == 'true'){
		alert('댓글을 등록하려면 로그인하세요');
		return;
	}
	
	if( $('#comment').val().trim()=='' ){
		alert('댓글을 입력하세요');
		$('#comment').val('');
		$('#comment').focus();
		return;
	}
	
	$.ajax({
		url: 'community/comment/insert',
		data: { content: $('#comment').val(), pid: ${vo.no} },
		success: function( data ){
			if( data ){
				$('#comment').val('');					
				comment_list();
			}else{
				alert('댓글 등록 실패!! 다시 작성해주세요.');
			}
			
		},error: function(req, text){
			alert(text+": "+req.status);
		}
	});
}

function comment_list(){
	$.ajax({
		url: 'community/comment/${vo.no}',
		success: function(data){
			$('#comment-list').html(data);
		},error: function(req, text){
			alert(text+": "+req.status);
		}
	});
}

function go_modify(){
	$('form').attr('action', 'modify.co');
	$('form').submit();
}

function go_list(){
	$('form').submit();
}

function go_good(){
 	if( '${empty login_info}' == 'true' ){
		alert('좋아요를 누르실려면 로그인하세요');
		return;
	}else{
	$('form').attr('action', 'good.co');
	$('form').submit();
	$('#star').css('display','inline-block');	
	} 
}



</script>
</body>
</html>




