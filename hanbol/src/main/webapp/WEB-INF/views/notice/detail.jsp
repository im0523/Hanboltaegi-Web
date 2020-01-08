<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/include/header.jsp" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>  
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">

.menu1 { color: white; }

.tb { margin: 0 auto; }

.se_he1 {margin: 0 auto;border-top: 1px solid gray;border-bottom: 1px solid gray;padding: 5px 0 5px 5px;font-size: 14px;width: 90%;height: 20px;background-color: #FCFCFB;}

.se_he2 {margin: 0 auto;border-bottom: 1px solid gray;padding: 5px 0 5px 5px;width: 90%;display: inline-block;font-size: 12px;height: 13px;line-height: 13px;}

.content { width: 1200px; height: auto; margin: 0 auto; border: 1px solid #cfd1c2; margin-bottom: 200px;}

.body_content { width: 1058px; height: auto; margin: 0 auto;}

.btn_area { height: 30px; line-height: 30px; margin: 20px auto; }

</style>
</head>
<script type="text/javascript">
$(function(){
	$('table tr:eq(1) th:eq(1), table tr:eq(1) td:eq(1)').css('width', '100px');
	$('table tr:eq(1) th:eq(2), table tr:eq(1) td:eq(2)').css('width', '80px');
	
});

</script>
<body>
<input type="hidden" id="detail-id" data-name="no" value="${vo.no}"/>

<div class="content">
	<div class="title">
		<h1 style="font-size: 22px; font-family: 'Poor Story', cursive;">공지사항 안내</h1>
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
		</div>
	</div>
		
<!-- 		내용 -->
	<div class="se_body">
		<article>
			<div class="body_content">
				<p style="text-align: left;">${fn: replace(vo.content, crlf, '<br>')}</p>
			</div>
		</article>
		<div class="btn_area">
			<a class="btn-fill" onclick="go_list()">목록으로</a>
			<!-- 관리자로 로그인시만 수정/삭제 가능 -->
			<c:if test="${login_info.id eq 'admin' }">
				<a class="btn-fill" onclick="go_modify()">수정</a>
				<a class="btn-fill" onclick="if( confirm('정말 삭제하시겠습니까?') ) { location='delete.no?no=${vo.no}' }">삭제</a>
			</c:if>
		</div>
	</div>
	


</div>	

<form method="post" action="list.no">
	<input type="hidden" name="no" value="${vo.no}"/>
	<input type="hidden" name="curPage" value="${page.curPage}"/>
</form>
<script type="text/javascript">
function go_modify(){
	$('form').attr('action', 'modify.no');
	$('form').submit();
}

function go_list(){
	$('form').submit();
}

</script>
</body>
</html>