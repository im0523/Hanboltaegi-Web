<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/include/header.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="https://fonts.googleapis.com/css?family=Poor+Story&display=swap" rel="stylesheet">
<style type="text/css">

.menu5 { color: white; }

.title { height: 80px; line-height: 50px; margin-bottom: 10px; text-align: center; }

.recipe_list { width: 933px; height: auto; margin: 0 auto; overflow: hidden; }

.recipe_item1 {width: 203px; height: 268px; margin: 0; float: left; padding: 0 15px 15px 15px; }

.recipe_item2 { float: left; width: 203px; height: 250px; border: 1px solid #cfd1c2; cursor: pointer; border-radius: 5px;}

.div_title { width: 100%; height: 30px; margin: 0; border-bottom: 1px solid #cfd1c2; padding: 3px 0; line-height: 30px; font-weight: bold;}

.div_nickname { width: 100%; height: 30px; line-height: 30px; margin: 0; border-radius: 5px;}

</style>
</head>
<body>
<form id="list" method="post">
<input type="hidden" name="curPage" value="1" />
<input type="hidden" name="id" />
<input type="hidden" name="recipe_id">
</form>

	<div id="content">
		<div id="aside">
			<ul id="aside_menu">
				<li class="item" onclick="location='detail.my'"><a>내 정보</a></li>
				<li class="item" onclick="location='myrecipe.my'"><a style="color: white;">내가 올린 레시피</a></li>
				<li class="item" onclick="location='scraprecipe.my'"><a>스크랩한 레시피</a></li>
				<li class="item" onclick="location='follow.my'"><a>내 팔로우</a></li>
				<li class="item" onclick="location='activity.my'"><a>내 활동내역</a></li>
				<li class="item" onclick="location='inquiry.my'"><a>1:1 문의</a></li>
			</ul>
		</div>
		
		<div id="section">
			
			<div class="title">
				<h1 style="font-size: 22px; font-family: 'Poor Story', cursive;">내가 올린 레시피</h1>
			</div>
			
			<div class="recipe_list">
			<c:forEach items="${rpage.list}" var="vo">
				<div class="recipe_item1">
					<div class="recipe_item2" onclick="go_detail(${vo.recipe_id})">
						<img src="${vo.imagepath}" style="width: 100%; height: 180px; object-fit: cover;">
						<div class="div_title">${vo.title}</div>
						<div class="div_nickname">by ${vo.nickname}</div>	
					</div>
				</div>

			</c:forEach>
			</div>
		</div><!-- 섹션 -->
	</div><!-- 컨텐츠 -->


<script type="text/javascript">
function go_detail(recipe_id){
	$('[name=recipe_id]').val(recipe_id);
	$('#list').attr('action', 'detail.re');
	$('#list').submit();
}
</script>

</body>
</html>





























