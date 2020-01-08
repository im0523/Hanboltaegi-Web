<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!-- <link rel="stylesheet" type="text/css" href="css/common.css?v=1570763087852"> -->
<link href="https://fonts.googleapis.com/css?family=Poor+Story&display=swap" rel="stylesheet">

<style>
#header { width: 100%; height: 155px; margin: 0 auto; overflow: hidden; margin-bottom: 15px;}

.header1 { width: 100%; height: 105px; line-height: 105px; display: inline-block; background-color: #fff;}

.header2 { height: 50px; line-height: 50px; width: 100%; background-color: #999966;}

.searchbar { display: inline-block; height: 50px; padding-top: }

.input_search { vertical-align: top; margin-top: 13px; margin-left: 25px; }

.searchimg { width: 30px; height: 30px; vertical-align: top; margin-top: 13px; margin-left: 5px;}

.login_area { width: 45px; height: 70px; margin-top: 35px; margin-left: 40px; line-height: 70px; display: inline-block; }

#userid, #userpwd { width: 125px; }

.header2 ul li { float: left; list-style: none; width: 240px; height: 50px; }

.header2 ul li a { font-size: 25px; font-weight:bold; font-family: 'Poor Story', cursive;}

#login_icon { width: 42px; height: 42px; margin-left: 10px;}

</style>
<form id="ss" action="list.re">
<div id="header">

	<div class="header1">
		<a onclick="location='<c:url value="/"/>'"><img src="img/chef.png" alt="로고" style="width: 80px; height: 80px; margin-top: 13px"/></a>
		<div class="searchbar">
			<input class="input_search" type="text" name="keywords" value="${page.keywords}"/>
			<a onclick="go_search()"><img class="searchimg" src="img/search.png" /></a>
		</div>
		<div class="login_area" >
		
		<!-- 로그인하지 않은 경우 -->
		<c:if test="${empty login_info}">
			<div style="width: 230px; height: 43px; display: flex;">
			<img id="login_icon" src="img/ico_user.png" onclick="go_login()" style="cursor: pointer;">
<!-- 			<img id="login_icon" src="img/ico_user.png" onclick="location='member'" style="cursor: pointer;"> -->
			</div>
			<div style="width: 65px; height: 20px; line-height: 20px;">
				<a onclick="go_login()" style="font-size: 12px; font-weight: bold; font-family: 'Poor Story', cursive; ">로그인</a>
<!-- 				<a onclick="location='member'" style="font-size: 12px; font-weight: bold; font-family: 'Poor Story', cursive; ">로그인</a> -->
			</div>
		</c:if>
		
		<!-- 로그인한 경우 -->
		<c:if test="${!empty login_info}">
			<div style="width: 300px; height: 43px; display: flex;">
			<img id="login_icon" src="img/ico_user.png" onclick="go_logout()" style="cursor: pointer;">
			<a style="width: 200px; height: 43px; line-height: 43px;">${login_info.grade} [ ${login_info.nickname} ]</a>
			</div>
			<div style="width: 65px; height: 20px; line-height: 20px;">
				<a onclick="go_logout()" style="font-size: 12px; font-weight: bold; font-family: 'Poor Story', cursive; ">로그아웃</a>
			</div>
		</c:if>
		
		</div> <!-- 로그인 -->
	</div>
	
	<div class="header2">
		<ul style="margin: 0 auto; height: 50px; width: 1200px; padding: 0;">
			<li><a class="menu1" onclick="location='list.no'">공지사항</a></li>
			<li><a class="menu2" onclick="location='list.rk?id=${login_info.id}'">랭킹</a></li>
			<li><a class="menu3" onclick="location='list.re'">레시피</a></li>
			<li><a class="menu4" onclick="location='list.co'">커뮤니티</a></li>
			<c:if test="${!empty login_info}">
			<li><a class="menu5" onclick="location='detail.my'">마이페이지</a></li>
			</c:if>
			<c:if test="${empty login_info }">
			<li><a class="menu5" onclick="location='member'">마이페이지</a></li>
			</c:if>
		</ul>
	</div>

</div>

</form>

<script>
function go_login(){
	if($('#detail-id').length > 0 )
		location='member?name='+$('#detail-id').data('name') +'&val='+$('#detail-id').val();
	else
		location='member';
}

function go_search(){
	$('#ss').submit();
}



function go_logout(){
	$.ajax({
		url: 'logout',
		success: function(){
			location.reload();
		},error: function(req, text){
			alert(text+": "+req.status);
		}
	});	
}


</script>