<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<html>
<head>
	<title>Home</title>
<link rel="stylesheet" type="text/css" href="css/common.css?v=1570763087852">
<style type="text/css">
.main_img { width: 200px; height: 200px;}
h1 { text-align: center; margin: 80px 0px; font-size: 80px;}
tr { text-align: center;}
tr td { padding: 10px 30px;}
</style>
</head>
<body>
<h1>한볼테기</h1>
<table style="margin: 0 auto;">
	<tr>
		<td><a onclick="location='list.re'"><img src="img/all.png" class="main_img"/></a></td>
		<td><a onclick="location='list.co'"><img src="img/community.png" class="main_img"/></a></td>
		<td><a onclick="location='list.rk'"><img src="img/rank.png" class="main_img"/></a></td>
	</tr>
	<tr>
		<td><a onclick="location='list.re'">레시피</a></td>
		<td><a onclick="location='list.co'">커뮤니티</a></td>
		<td><a onclick="location='list.rk'">랭킹</a></td>
	</tr>
	<tr>
		<td><a onclick="location='list.no'"><img src="img/notice.png" class="main_img"/></a></td>
		<c:if test="${!empty login_info}">
			<td><a onclick="location='detail.my'"><img src="img/chef.png" class="main_img"/></a></td>
		</c:if>
		<c:if test="${empty login_info}">
			<td><a onclick="location='member'"><img src="img/chef.png" class="main_img"/></a></td>
		</c:if>
		<td><a onclick="location='member'"><img src="img/join.png" class="main_img"/></a></td>
	</tr>
	<tr>
		<td><a onclick="location='list.no'">공지사항</a></td>
		<c:if test="${!empty login_info}">
			<td><a onclick="location='detail.my'">마이페이지</a></td>
		</c:if>
		<c:if test="${empty login_info}">
			<td><a onclick="location='member'">마이페이지</a></td>
		</c:if>
		<td><a onclick="location='member'">로그인</a></td>

	</tr>
</table>
</body>
</html>
















