<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/include/header.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="https://fonts.googleapis.com/css?family=Poor+Story&display=swap" rel="stylesheet">
<style type="text/css">

.menu5 { color: white; }

.btn_area{margin: 0 auto;width: 250px;height: 40px;margin-top: 30px;}

label {float: left; font-weight: bold; font-family: 'Poor Story', cursive; width: 110px;}

.se_writer {height: 28px;line-height: 28px;margin: 5px 0;}

.file_area { width: max-content; height: 35px; line-height: 35px; }

#delete-file { width: 30px; height: 30px; padding-left: 50px; display: none; }

.se_title, .se_content, .file_area { display: flex; }

</style>
</head>
<body>
<form enctype="multipart/form-data" method="post" action="insert.my">
	<div id="content">
		<div id="aside">
			<ul id="aside_menu">
				<li class="item" onclick="location='detail.my'"><a>내 정보</a></li>
				<li class="item" onclick="location='myrecipe.my'"><a>내가 올린 레시피</a></li>
				<li class="item" onclick="location='scraprecipe.my'"><a>스크랩한 레시피</a></li>
				<li class="item" onclick="location='follow.my'"><a>내 팔로우</a></li>
				<li class="item" onclick="location='activity.my'"><a>내 활동내역</a></li>
				<li class="item" onclick="location='inquiry.my'"><a style="color: white;">1:1 문의</a></li>
			</ul>
		</div>
		
		<div id="section">

			<div class="se_title">
				<label style="line-height: 28px;">제목</label>
				<input class="need" name="title" type="text" style="width: 700px;" title="제목">			
			</div>
			
			<div class="se_writer">
				<label style="width: 112px; text-align: center;">작성자</label>
				<div style="text-align: left; font-family: 'Poor Story', cursive;">${login_info.nickname}</div>
			</div>
			
			<div class="se_content">
				<label style="clear: both;">내용</label>
				<textarea class="need" name="content" style="width: 708px; height: 300px;" title="내용"></textarea>		
			</div>
			
			<div class="file_area" style="margin-top: 10px;">
				<label>첨부파일</label>
				<label style="text-align: left; width: 60px;">
					<img class="btn-img" src="img/image_add.png" style="width: 30px; height: 30px;" />
					<input id="attach-file" type="file" name="file" style="margin-left: 23px;" hidden=""/>
				</label>
					<label id="file-name" style="padding: 0;"></label>
				<img class="btn-img" id="delete-file" src="img/delete.png" />
			</div>
			
			<div class="btn_area">
				<button type="button" onclick="if(checkInput()){$('form').submit()}" class="btn-fill">등록</button>
			    <button type="button" onclick="location='inquiry.my'" class="btn-empty">취소</button>
			</div>
		
		</div><!-- 섹션 -->
		
	</div><!-- 컨텐츠 -->
</form>
	
<script type="text/javascript" src="js/nullCheck.js"></script>
<script type="text/javascript">
$(function(){
	$('#delete-file').click(function(){
		$('#file-name').text('');
		$('#attach-file').val('');
		$('#file-name').css('padding-right', '0px');
		$('#delete-file').css('display', 'none');
	});
	-
	$('#attach-file').change(function(){
		$('#file-name').text( this.files[0].name );
		$('#delete-file').css('display', 'inline-block');
	});
	
});
</script>

</body>
</html>



















