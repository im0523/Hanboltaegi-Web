<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/include/header.jsp" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
.menu2 { color: white; }
</style>
</head>
<body>
<%-- <input type="hidden" id="detail-id" data-name="id" value="${list2.member_id}"/> --%>

<div class="my_tabs" style="overflow: hidden; margin:0 auto; width:1550px; margin-top: -20px;">
    <ul style="position:relative;"> 
        <li class="box active"><a class="act" href="detail.rk?id=${list2.member_id}">레시피</a></li>
        <li class="box"><a class="bin" href="recipe_comment.rk?id=${list2.member_id}">댓글</a></li>
        <li class="box"><a class="bin" href="talk.rk?id=${list2.member_id}">토크</a></li>
    </ul>
</div>
<div class="cont_list" style="position: relative; top: 10px; width:1550px; margin: 0 auoto;">
	<ul style="position: absolute;width: 1550px;left: 153px;top: -20px;">
		<c:forEach items="${list}" var="vo" >
		<li class="rec-list">
			<a href="detail.re?recipe_id=${vo.recipe_id}" class="thubnail">
				<img src="${vo.imagepath}" style="width:250px; height:225px;">
				<div class="caption">
					<h4>${vo.title}</h4>
					<p class="jq_elips">by ${vo.nickname}</p>
				</div>
			</a>
		</li>
		</c:forEach>
	</ul>
</div> 
</body>
</html>