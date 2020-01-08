<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/include/header.jsp" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
.menu3 { color: white; }
table { width: 1200px; border: 1px solid #cfd1c2; border-radius:5px; border-collapse: separate; padding: 10px 0px; }
tr td { padding-right: 3px;}
table a:hover { color: #2eab4f; }
#main { width: 1200px; height: auto; border: 1px solid #cfd1c2; margin: 0 auto; overflow: hidden;}
.recipe_view { width: 250px; height: 291px; float: left; margin: 23px; border: 1px solid #cfd1c2; border-radius:5px;}
.recipe_title { width: 250px; height: 30px; padding: 3px 0; font-weight: bold;}
.recipe_nick { width: 250px; height: 30px; border-top: 1px solid #cfd1c2;}
.recipe_img { width: 250px; height: 225px;}
</style>
</head>
<body>
<form id="list" method="post">
		<table>
			<tr id="cat1">
				<th>종류별</th>
				<td><a>메인반찬</a></td>
				<td><a>국/탕</a></td>
				<td><a>밥/죽/떡</a></td>
				<td><a>디저트</a></td>
				<td><a>양념/소스</a></td>
				<td><a>면류</a></td>
				<td><a>기타</a></td>
			</tr>
			<tr id="cat2">
				<th>상황별</th>
				<td><a>일상</a></td>
				<td><a>초스피드</a></td>
				<td><a>손님접대</a></td>
				<td><a>술안주</a></td>
				<td><a>간식</a></td>
			</tr>
			<tr id="cat3">
				<th>재료별</th>
				<td><a>육류</a></td>
				<td><a>해산물</a></td>
				<td><a>가공식품</a></td>
			</tr>
			<tr id="cat4">
				<th>제철요리</th>
				<td><a>사계절</a></td>
				<td><a>봄</a></td>
				<td><a>여름</a></td>
				<td><a>가을</a></td>
				<td><a>겨울</a></td>
			</tr>
		</table>

		<div style="width: 1000px; height: 80px; margin: 0 auto;"><span style="font-size: 25px; line-height: 80px;">총 ${page.totalList }개의 맛있는 레시피가 있습니다.</span>
<!-- 로그인 된 경우만 글쓰기 가능 -->
	<c:choose>
		<c:when test="${ !empty login_info}">
			<div style="height: 80px; line-height: 80px;float: right;"><a style="width: 150px; height: 60px;" class="btn-fill" onclick="location='new.re'">글쓰기</a></div>
		</c:when>
		<c:otherwise>
			<div style="height: 80px; line-height: 80px;float: right;"><a style="width: 150px; height: 60px;" class="btn-fill" onclick="location='member'">글쓰기</a></div>
		</c:otherwise>
	</c:choose>
</div>

<div id="main">
	<c:forEach items="${page.list }" var="vo">
		<div class="recipe_view"><a onclick="go_detail(${vo.recipe_id})"><img src="${vo.imagepath }" class="recipe_img" style=" object-fit: cover;"/>
			<div class="recipe_title">${vo.title }</div>
			<div class="recipe_nick">by ${vo.nickname }</div></a>
		</div>
	</c:forEach>
</div><br><br>
	<input type="hidden" name="recipe_id"/>
	
	<input type="hidden" name="cat_nm"/>
	<input type="hidden" name="cat_val"/>
</form>
<script type="text/javascript">
function go_detail(recipe_id){
	$('[name=recipe_id]').val(recipe_id);
	$('#list').attr('action', 'detail.re');
	$('#list').submit();
}


//event binding
$("#list table tr a").on("click", function() {
	var cat_nm = $(this).parent().parent().attr("id"); //column name
	var cat_val = $(this).text(); //column value

	$('[name=cat_nm]').val(cat_nm);
	$('[name=cat_val]').val(cat_val);
	$('#list').attr('action', 'list.re');
	$('#list').submit();
});

</script>
</body>
</html>