<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/include/header.jsp" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="https://fonts.googleapis.com/css?family=Poor+Story&display=swap" rel="stylesheet">
<style type="text/css">

.menu5 { color: white; }

.table{border: 1px solid #cccccc;margin: 0 auto;border-radius: 3px;padding-bottom: 20px;}

.table{margin-bottom: 10px;overflow: hidden;}

#page-list{text-align:center;}

span { margin: 15px; }

</style>
</head>
<body>
<form id="list" method="post">
				<input type="hidden" name="curPage" value="1" /> 
				<input type="hidden" name="no" /> 
				<input type="hidden" name="id" />
				<input type="hidden" name="read" value="false" />
</form>

	<div id="content">
	
		<div id="aside">
			<ul id="aside_menu">
				<li class="item" onclick="location='detail.my'"><a>내 정보</a></li>
				<li class="item" onclick="location='myrecipe.my'"><a>내가 올린 레시피</a></li>
				<li class="item" onclick="location='scraprecipe.my'"><a>스크랩한 레시피</a></li>
				<li class="item" onclick="location='follow.my'"><a>내 팔로우</a></li>
				<li class="item" onclick="location='activity.my'"><a style="color: white;">내 활동내역</a></li>
				<li class="item" onclick="location='inquiry.my'"><a>1:1 문의</a></li>
			</ul>
		</div>
		
		<div id="section">
			
				<div class="title">
					<h1 style="font-size: 22px; font-family: 'Poor Story', cursive;">내 활동내역</h1>
				</div>
				
				<c:forEach items="${cpage.list}" var="vo">

					<div class="table">
						<div>
							<img
								style="width: 80px; height: 80px; margin-top: 20px; margin-left: 20px; float: left"
								src="${vo.user_pic}" />
						</div>

						<div
							style="width: 100px; height: 50px; float: left; margin-top: 20px; margin-left: 20px; font-size: 20px; text-align: center;">${vo.nickname}
						</div>

						<div style="float: right; margin-top: 20px; margin-right: 40px;">
							<img style="width: 30px; height: 30px;" src="img/comment.png" />
							<div style="float: right; margin-left: 10px; margin-top: 2px;">${vo.indent}</div>
						</div>

						<div style="float: right; margin-top: 20px; margin-right: 10px;">
							<img style="width: 30px; height: 30px;" src="img/heart.png" />
							<div style="float: right; margin-left: 10px; margin-top: 2px;">${vo.good}</div>
						</div>

						<div
							style="width: 100px; height: 50px; float: left; margin-top: 65px; margin-left: -102px; text-align: center;">${vo.writedate}
						</div>

						<div onclick="go_detail(${vo.no})" style="width: 85%; float: left; border: 1px solid #cccccc; max-height: 100px; 
						margin-top: 20px; margin-left: 120px; padding: 3px; text-align: left; text-overflow:ellipsis; overflow: hidden; white-space: nowrap; ">
							${fn:replace(vo.content, crlf, '<br>')}</div>

						<c:if test="${!empty vo.co_filename1}">
							<div style="margin-right: 23px;">
								<img
									style="width: 200px; height: 200px; float: left; margin-top: 15px; margin-left: 120px;"
									src="${vo.co_file1}" />
							</div>
						</c:if>
					</div>

				</c:forEach>
			
	<jsp:include page="/WEB-INF/views/include/page2.jsp" />
		</div>
	</div><!-- 컨텐츠 -->
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





























