<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/include/header.jsp" %>
  
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" 
	prefix="c"%> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" 
	prefix="fn"%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
.menu4 { color: white; }

tr {width: 50%;border: 1px solid #cccccc;padding: 10px;font-weight: bold;font-size: 20px;float: left;margin-top: 20px;margin-left: 24.5%;margin-bottom: 20px;}

.table{width: 50%;border: 1px solid #cccccc;margin: 0 auto;border-radius: 5px;padding-bottom: 20px;}

.table{margin-top: 10px;overflow: hidden;text-align: left;}

#page-list{text-align:center;}

span { margin: 15px; }

.btn-fill { height: 20px; line-height: 20px; }

</style>
</head>
<body>
<form id="list" method="post">
<input type="hidden" name="curPage" value="1"/> 
<input type="hidden" name="no" />
<input type="hidden" name="read" value="false"/>

<div style="display: flex; width: 770px; margin: 20px auto;">
		<select style="border-radius: 5px;" name="search">
			<option ${page.search eq 'all' ?'selected':''} value="all">전체</option>
			<option ${page.search eq 'content' ?'selected':''} value="content">내용</option>
			<option ${page.search eq 'writer' ?'selected':''} value="userid">작성자</option>
		</select>
	<input style="border-radius: 5px; width: 500px; margin: 0 10px; " type="text" name="keyword" value="${page.keyword}" />
	<a onclick="$('#list').submit()" class="btn-fill" style="margin-right: 28px;">글 검색</a>
	<c:if test="${login_info.id ne vo.userid }">
		<a class="btn-fill" onclick="location='new.co'">글쓰기</a>
	</c:if>	
</div>
<input type="hidden" name="no"/>

<c:forEach items="${page.list}" var="vo">

<div class="table">
	<div>
		<img style="border-radius:50px;  width: 80px; height: 80px; object-fit: cover;
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
	<div onclick="go_detail(${vo.no})" style="margin-right: 7px; " >
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
<jsp:include page="/WEB-INF/views/include/page.jsp" />
</body>
</html>