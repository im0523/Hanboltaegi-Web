<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/include/header.jsp" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<style>
.menu2 { color: white; }
a{ text-decoration: none;}
h4{
	font-family: inherit;
	line-height: 140%;
	color: inherit;
	font-size: 15px;
	font-weight: bold;
	margin-top: 5px;
	margin-bottom: 5px;
	margin-left: 10px;
	text-align: left;
}
</style>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<div class="my_tabs" style="overflow: hidden; margin:0 auto; width:1550px; margin-top: -20px;">
    <ul style="position:relative; overflow:hidden;">
        <li class="box"><a class="bin" href="detail.rk?id=${vo.member_id}">레시피</a></li>
        <li class="box active"><a class="act" href="recipe_comment.rk?id=${vo.member_id}">댓글</a></li>
        <li class="box"><a class="bin" href="talk.rk?id=${vo.member_id}">토크</a></li>
    </ul>
</div><br>
<div class="cont_list" style="position: relative; top: 10px; width:1550px; margin: 0 auoto;">
	<ul style="position: absolute;width: 1550px;left: 153px;top: -60px;">
		<c:forEach items="${list}" var="vo1">
		<li class="rec-list" style="width:200px; height:350px;">
			<a class="thumbnail" href="detail.re?recipe_id=${vo1.recipe_id}">
				<div style="width:200px; height: 130px;"><img style="width:200px; height: 130px;"
					src="${vo1.imagepath}" alt="recipe"></div>
					<div style="width:198px; height:81px; padding: 6px 2px; color: #333333;">
					<h4><span style="width:154px; height: 17px; font-size: 15px;">${vo1.title}</span></h4>
					<p
					style="color:#999;
					margin-left: 8px;
					font-size: 12px;
					box-sizing: border-box;
					text-align: left;
					line-height: 1.42857143;
					list-style: none;"
					>
					
					by ${vo1.write}</p>
				</div>
				<div 
				style="
					width: 198px;
				    height: 75px;
				    margin: -16px 0px 0px;
				    padding: 12px 2px 0px;
				    color: #333333;
				    border-top: 1px solid #cccccc;
			    ">
					<p
					style="
					font-size: 12px;
					color: #999;
					margin: 0 0 10px 10px;
					box-sizing: border-box;
					line-height: 1.42;
					text-align: left;
					"
					>${vo.nickname}</p>
					<p 
					style="
						font-size: 13px;
						color: #1a77ac;
						overflow: hidden;
						text-overflow: ellipsis;
						word-wrap: break-word;
						line-height: 1.4;
						height: auto;
						width: 168px;
						padding: 0;
						margin: 0 0 10px 10px;
						text-align: left;
					"
					>${vo1.content}</p>
					<p style="
						font-size: 12px;
						color:#999;
						margin-top: 4px;
						line-height: 1.4;
						text-align: left;
						margin-left: 10px;
					">${vo1.writedate}</p>
				</div>
			</a>
		</li>
		</c:forEach>
	</ul>
</div>
<div style="height:300px; overflow:hidden; position:relative;">
</div>
</body>
</html>