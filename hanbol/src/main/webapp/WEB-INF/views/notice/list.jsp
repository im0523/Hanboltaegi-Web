<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/include/header.jsp" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="https://fonts.googleapis.com/css?family=Poor+Story&display=swap" rel="stylesheet">
<style type="text/css">

.menu1 { color: white; }

.title { height: 80px; line-height: 50px; margin-bottom: 10px; text-align: center; }

.tb {width: 90%;}

th {font-size: 13px;border-top: 1px solid black;border-bottom: 1px solid black;padding-top: 5px;padding-bottom: 5px; background-color: #FCFCFB;}

td{font-size: 15px;border-top: 1px solid black;border-bottom: 1px solid black;padding-top: 10px;padding-bottom: 10px; }

.table_area { width: 100%; height: 530px; margin: 35px auto; }

</style>
</head>
<body>
<form id="list" method="post">
<input type="hidden" name="curPage" value="1" />
<input type="hidden" name="no" />
</form>
	<div style="width: 1200px; height: 700px; margin: 0 auto; border: 1px solid #cfd1c2; background-color: #fff;">
			
			<div class="table_area">
			<table class="tb">
				<tr style="">
					<th style="width: 42px;">번호</th>
					<th>제목</th>
					<th>작성자</th>
					<th>날짜</th>
				</tr>
				
				<c:forEach items="${page.list}" var="vo">
				<tr style="height: 50px;">
					<td>${vo.num}</td>
					<td style="text-align: left; padding-left: 25px; font-weight: bold;"><a onclick="go_detail(${vo.no})">${vo.title}</a></td>
					<td style="width: 80px;">${vo.nickname}</td>
					<td style="width: 100px;">${vo.writedate}</td>
				</tr>
				</c:forEach>	
			</table>
			</div>
			
			<div style="height: 30px;">
				<c:if test="${login_info.id eq 'admin'}">
				<a class="btn-fill" style="float: right; margin-right: 90px;" onclick="location='new.no'">글쓰기</a>
				</c:if>	
			</div>
<jsp:include page="/WEB-INF/views/include/page.jsp" />
	</div>
<br>
<script type="text/javascript">
function go_detail(no){
	$('[name=no]').val(no);
	$('#list').attr( 'action', 'detail.no');
	$('#list').submit();
}
</script>
</body>
</html>