<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/include/header.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="https://fonts.googleapis.com/css?family=Poor+Story&display=swap" rel="stylesheet">
<style type="text/css">

.menu5 { color: white; }

.title { height: 80px; line-height: 50px; margin-bottom: 10px; text-align: center; }

.tb {margin: 0 auto 10px auto;width: 90%;}

th {font-size: 12px;border-top: 1px solid black;border-bottom: 1px solid black;padding-top: 5px;padding-bottom: 5px; background-color: #FCFCFB;}

td{font-size: 12px;border-top: 1px solid black;border-bottom: 1px solid black;padding-top: 10px;padding-bottom: 10px; }

</style>
</head>
<body>
<form id="list" method="post">
<input type="hidden" name="curPage" value="1" />
<input type="hidden" name="id" />
</form>

	<div id="content">
		<div id="aside">
			<ul id="aside_menu">
				<li class="item" onclick="location='detail.my'"><a>내 정보</a></li>
				<li class="item" onclick="location='myrecipe.my'"><a>내가 올린 레시피</a></li>
				<li class="item" onclick="location='scraprecipe.my'"><a>스크랩한 레시피</a></li>
				<li class="item" onclick="location='follow.my'"><a>내 팔로우</a></li>
				<li class="item" onclick="location='activity.my'"><a>내 활동내역</a></li>
				<li class="item" onclick="location='inquiry.my'"><a style="color: white;">1:1 문의</a></li>
			</ul>
		</div>
		
		
		<div id="section">
			
			
			<div class="title" >
				<h1 style="font-size: 22px; font-family: 'Poor Story', cursive;">문의 내역</h1>
			</div>
			<table class="tb">
				
				<tr>
					<th style="width: 35px;">번호</th>
					<th>제목</th>
					<th style="width: 70px;">작성자</th>
					<th style="width: 90px;">날짜</th>
				</tr>
				
				<c:forEach items="${page.list}" var="vo">
				<tr>
					<td>${vo.no}</td>
					<td style="text-align: left; padding-left: 20px;"><a onclick="go_detail(${vo.id})">${vo.title}</a></td>
					<td>${vo.nickname}</td>
					<td>${vo.writedate}</td>
				</tr>
				</c:forEach>
				
			</table>
			
			<div style="height: 20px;">
				<a class="btn-fill" style="float: right; margin-right: 90px;" onclick="location='new.my'">글쓰기</a>
			</div>
<jsp:include page="/WEB-INF/views/include/page.jsp" />
			
		</div><!-- 섹션 -->
		
	</div><!-- 컨텐츠 -->
	
<script>
function go_detail(id){
	$('[name=id]').val(id);
	$('#list').attr('action', 'inquirydetail.my');
	$('#list').submit();
}

</script>

</body>
</html>





























