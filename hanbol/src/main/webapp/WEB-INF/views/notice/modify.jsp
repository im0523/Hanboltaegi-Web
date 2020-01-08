<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ include file="/WEB-INF/views/include/header.jsp" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core"
	prefix="c" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">

.menu1 { color: white; }

table { width: 1175px; border: 1px solid #cfd1c2; }

table th, table tr, tr td { border: 1px solid #cfd1c2;}

th { height: 35px;}

.content { width: 1200px; height: 600px; margin: 0 auto; border: 1px solid #cfd1c2; }

.btn_area { width: 1175px; height: 35px; line-height: 35px; margin: 0 auto; margin-top: 60px; }

</style>
<script type="text/javascript">

</script>
</head>
<body>
<form enctype="multipart/form-data" method="post" action="update.no">
<div class="content">
	<div class="title">
		<h1 style="font-size: 22px; font-family: 'Poor Story', cursive;">공지사항 수정</h1>
	</div>

	<table>
	
		<tr>
			<th style="width:120px;">제목</th>
			<td>
				<input style="width:98%" height="98.5%" type="text" class="need" title="제목" name="title" value="${vo.title}" />
			</td>
		</tr>
		
		<tr>
			<th>작성자</th>
			<td  class="left">&nbsp;${vo.nickname}</td>
		</tr>
		
		<tr>
			<th>내용</th>
			<td style="height: 300px; padding-top: 5px;">
				<textarea title="내용" class="need" name="content" style="width:98.5%; height:98.5%; padding: 5px;" >${vo.content}</textarea> 
			</td>
		</tr>

	</table>
	
	<div class="btn_area">
		<a class="btn-fill" onclick="$('form').submit()">저장</a>
		<a class="btn-empty" onclick="go_detail()">취소</a>
	</div>
	
<input type="hidden" name="no" value="${vo.no}"/>
</div>
</form>
<script type="text/javascript" src="js/nullCheck.js"></script>
<script type="text/javascript">
function go_detail(){
	$('form').attr('action', 'detail.no');
	$('form').submit();
}
</script>
</body>
</html>



