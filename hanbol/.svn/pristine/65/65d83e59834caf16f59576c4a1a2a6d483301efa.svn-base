<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/include/header.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="https://fonts.googleapis.com/css?family=Poor+Story&display=swap" rel="stylesheet">
<style>

.menu1 { color: white; }

.title { height: 80px; line-height: 50px; margin-bottom: 10px; text-align: center; }

table { width: 1175px; border: 1px solid #cfd1c2; }

table th, table tr, tr td { border: 1px solid #cfd1c2;}

th { height: 35px;}

.content { width: 1200px; height: 600px; margin: 0 auto; border: 1px solid #cfd1c2; }

.btn_area { width: 1175px; height: 35px; line-height: 35px; margin: 0 auto; margin-top: 60px; }

</style>
</head>
<body>
<form enctype="multipart/form-data" method="post" action="insert.no">
<div class="content">

	<div class="title">
		<h1 style="font-size: 22px; font-family: 'Poor Story', cursive;">공지글 작성</h1>
	</div>
	
	<table>
		<tr>
			<th style="width:120px;">제목</th>
			<td><input title="제목" class="need" style="width:98%" height="98.5%" type="text" name="title" /></td>
		</tr>
		
		<tr>
			<th>작성자</th>
			<td class="left">&nbsp;${login_info.nickname}</td>
		</tr>
		
		<tr>
			<th>내용</th>
			<td style="height: 300px; padding-top: 5px;">
				<textarea title="내용" class="need" name="content" style="width:98.5%; height:98.5%; padding: 5px;"></textarea> 
			</td>
		</tr>

	</table>

	<div class="btn_area">
		<a onclick="if( checkInput() ){ $('form').submit() }" class="btn-fill">저장</a>
		<a onclick="location='list.no'" class="btn-empty">취소</a>
	</div>

</div>
</form>

<script type="text/javascript" src="js/nullCheck.js"></script>
<script type="text/javascript">

</script>
</body>
</html>





