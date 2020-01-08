<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/include/header.jsp" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" 
	prefix="fn"%>    
<!DOCTYPE html>
<html>
<style>
tr {width: 50%;border: 1px solid #cccccc;padding: 10px;font-weight: bold;font-size: 20px;float: left;margin-top: 20px;margin-left: 24.5%;margin-bottom: 20px;}

.table{width: 50%;border: 1px solid #cccccc;margin: 0 auto;border-radius: 5px;padding-bottom: 20px;}

.table{margin-top: 10px;overflow: hidden;text-align: left;}

#page-list{text-align:center;}

span { margin: 15px; }

.btn-fill { height: 20px; line-height: 20px; }

</style>
<head>	
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
.menu2 { color: white; }
</style>
</head>
<body>
<div class="my_tabs" style="overflow: hidden; margin:0 auto; width:1550px; margin-top: -20px;">
    <ul style="position:relative; ">
        <li class="box"><a class="bin" href="detail.rk?id=${vo.member_id}">레시피</a></li>
        <li class="box"><a class="bin" href="recipe_comment.rk?id=${vo.member_id}">댓글</a></li>
        <li class="box active"><a class="act" href="talk.rk?id=${vo.member_id}">토크</a></li>
    </ul>
</div>
<form id="list" method="post">
<input type="hidden" name="no" />
<input type="hidden" name="id" value="${vo.member_id}" />

<c:forEach items="${list}" var="vo">

<div class="table">
	<div>
		<img style="width: 80px; height: 80px; 
		margin-top:20px; margin-left:20px; float: left" src="${vo.user_pic}"/>
	</div>

	<div style="width: 100px; height: 50px; float:left; 
		margin-top: 20px; margin-left:20px; font-size: 20px;  
		text-align:center;" >${vo.nickname}
	</div>
	
	<div style="float: right; margin-top: 20px; margin-right: 40px;">
		<img style="width: 30px; height: 30px;" src="img/comment.png"/>
		<div style="float: right; margin-left: 10px; margin-top:2px;">${vo.comments}</div>
	</div>

	<div style="float: right; margin-top: 20px; margin-right: 10px;">
		<img style="width: 30px; height: 30px;" src="img/heart.png"/>
		<div style="float: right; margin-left: 10px; 
		margin-top:2px;">${vo.good}</div>
	</div>

	<div style="width: 100px; height: 50px; float:left; 
		margin-top: 65px; margin-left:-102px;  text-align:center; ">${vo.writedate}
	</div>

	<div onclick="go_detail(${vo.no})" style="width: 710px; text-overflow:ellipsis; overflow: hidden; white-space: nowrap; max-height:100px; 
		float:left; border: 1px solid #cccccc; border-radius: 5px;
		margin-top:20px; margin-left: 122px; padding: 10px; cursor: pointer;">
		${fn:replace(vo.content, crlf, '<br>')}
	</div>
	
	
	<c:if test="${!empty vo.co_filename1}">
	<div style="margin-right: 7px; " >
		<img style="width: 730px; height:430px; float:left; 
		margin-top:15px; margin-left: 122px; " 
		 src="${vo.co_file1}"/>
	</div>
	</c:if>
</div>

</c:forEach>
</form>
<script type="text/javascript">
function go_detail(no){
	$('[name=no]').val(no);
	$('[name=read]').val(true);
	$('#list').attr('action', 'detail.co');
	$('#list').submit();	
}
</script>
</body>
</html>