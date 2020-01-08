<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>한볼테기 페이지를 찾을 수 없습니다!</title>
<link rel="icon" type="img/x-icon" href="img/hanul.ico">
<style type="text/css">
#error {
	width: 600px; margin: 0 auto;
	position: absolute;
	left: 50%; top: 50%; transform: translate(-50%, -50%)
}
#error a { cursor: pointer; }
</style>
</head>
<body>
<div id="error">
	<div class="left">
		<a onclick="location='<c:url value="/"/>'" ><img src="img/chef.png" /></a>
		<div style="float: right;">
		페이지를 찾을 수 없습니다! ㅎㅎㅎ<br>
		아이콘을 눌러 다시 메인 화면으로 되돌아가주세요
		</div>
	</div><hr>
	<tiles:insertAttribute name="main" />
</div>
</body>
</html>