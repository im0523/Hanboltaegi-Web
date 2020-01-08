<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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

.tb { margin: 0 auto; }

.se_he1 {margin: 0 auto;border-top: 1px solid gray;border-bottom: 1px solid gray;padding: 5px 0 5px 5px;font-size: 14px;width: 90%;height: 20px;background-color: #FCFCFB;}

.se_he2 {margin: 0 auto;border-bottom: 1px solid gray;padding: 5px 0 5px 5px;width: 90%;display: inline-block;font-size: 12px;height: 13px;line-height: 13px;}

.btn_area { margin: 10px auto; }

</style>
</head>
<body>
<form action="inquiry.my" method="post">
	<input type="hidden" name="id" value="${vo.id}"/>
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
			
		<div class="title">
			<h1 style="font-size: 22px; font-family: 'Poor Story', cursive;">문의내역</h1>
		</div>
		
<!-- 		제목, 작성자 등  -->
		<div class="se_header">
			<div class="se_he1">
				<div style="float: right;">
				<span style="margin: 0; padding-right: 10px;">${vo.writedate}</span>
				</div>
				<h1 style="font-size: 15px; line-height: 0; text-align: left; padding-left: 10px;">${vo.title}</h1>
			</div>
			
			<div class="se_he2">
				<div style="float: left; padding-left: 10px;">${vo.nickname}</div>
				<div style="float: right; padding-right: 10px;">조회수 ${vo.readcnt}</div>
			</div>
		</div>
		
<!-- 		내용 -->
		<div class="se_body">
			<article style="height: auto;">
				<div class="body_content">
					<p style="text-align: left; padding-left: 60px;">${vo.content}</p>
					<c:if test="${!empty vo.filepath }">
					<img style="width: 300px; height: 300px;"  src="${vo.filepath}">
					</c:if>
					</div>
					
					<div class="btn_area">
						<button class="btn-fill" onclick="if( confirm('정말 삭제하시겠습니까?') ){ location='delete.my?id=${vo.id}' }">삭제</button>
					</div>
					
			</article>
			
			
		</div>
		
	
	</div><!-- 섹션 -->
		
</div><!-- 컨텐츠 -->
</body>
</html>



































