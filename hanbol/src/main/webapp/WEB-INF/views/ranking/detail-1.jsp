<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/include/header.jsp" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<style>
.rec-list {
	border : 1px solid #ccc;
}
.rec-list:hover {
	border-color: 1px solid #5ca920;
    text-decoration: none;
    cursor: pointer;
}
</style>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<div class="my_tabs">
    <ul style="position:relative;"><!-- 
        <li class="box active"><a class="act" href="detail.rk?id=${list2.id}">레시피</a></li>
        <li class="box"><a class="bin" href="review.rk?id=${list2.id}">요리후기</a></li>
        <li class="box"><a class="bin" href="recipe_comment.rk?id=${list2.id}">댓글</a></li>
        <li class="box"><a class="bin" href="talk.rk?id=${list2.id}">토크</a></li> -->
    </ul>
</div>
<!-- <div class="cont_list" style="position: relative; top: 10px;"> -->
<!-- 	<ul style="postion:relative;"> -->
<%-- 		<c:forEach items="${list}" var="vo" > --%>
<!-- 		<li class="rec-list"> -->
<!-- 			<a href="recipe/" class="thubnail"> -->
<%-- 				<img src="${vo.imagepath}" style="width:200px; height:130px;"> --%>
<!-- 				<div class="caption"> -->
<%-- 					<h4>${vo.title}</h4> --%>
<%-- 					<p class="jq_elips">by ${vo.nickname}</p> --%>
<!-- 				</div> -->
<!-- 			</a> -->
<!-- 		</li> -->
<%-- 		</c:forEach> --%>
<!-- 	</ul> -->
<!-- </div> -->
</body>
</html>