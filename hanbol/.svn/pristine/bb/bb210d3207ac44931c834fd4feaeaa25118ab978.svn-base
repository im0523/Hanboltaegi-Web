<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!-- <link rel="stylesheet" type="text/css" href="css/common.css?v=1570763087852"> -->
<style>
#header { width: 85%; height: 150px; margin: 10px auto; max-width: 1200px; min-width: 800px; }
#header > * { float: left; padding: 0; }
#header li { display: inline; padding-left: 70px; }
span{margin-top: 15px;}
ul { margin-bottom: 30px;}
ul li a{ font-size: 20px; }

.login_area{
	width: 250px;
    float: right;
}

.login_input, .login_button {
	margin-left: 15px;
}

</style>
<div id="header">
	<a onclick="location='<c:url value="/"/>'"><img src="img/chef.png" alt="로고"/></a>
<%--<a onclick="location='home'"><img src="img/hanul.logo.png" alt="로고"/></a> --%>
	<ul>
		<li><a class="menu" onclick="location='list.re'">레시피</a></li>
		<li><a class="menu" onclick="location='list.co'">커뮤니티</a></li>
		<li><a class="menu" onclick="location='list.rk'">랭킹</a></li>
		<li><a class="menu" onclick="location='list.no'">공지사항</a></li>
		<c:if test="${!empty login_info}">
		<li><a class="menu" onclick="location='detail.my'">마이페이지</a></li>
		</c:if>
		<c:if test="${empty login_info }">
		<li><a class="menu" onclick="location='member'">마이페이지</a></li>
		</c:if>
	</ul>
	
	<div class="login_area" style="float: right;">
		<!-- 로그인한 경우 -->
		<c:if test="${!empty login_info}">
			<p style="float: left; margin-left: 60px;">
				${login_info.id} [ ${login_info.nickname} ]
				<a style="display: block; margin-top: 5px;" onclick="go_logout()" class="btn-fill">로그아웃</a>
			</p>
		</c:if>
		
		<!-- 로그인하지 않은 경우 -->
		<c:if test="${empty login_info}">
		<div class="login_input">
			<span style="width:140px; float: left; margin: 15px 0;">
				<input id="userid"		
					type="text" placeholder="아이디" />
				<input id="userpwd" 
					onkeypress="if( event.keyCode==13 ){ go_login() }"
					type="password" placeholder="비밀번호" />
			</span>
			</div>
			<div class="login_button">
				<p style="float: left; margin-top: 0;">
					<a onclick="go_login()" class="btn-fill">로그인</a>
					<a class="btn-fill" onclick="location='member'" style="margin-left: 25px;">회원가입</a>
				</p>
			</div>
		</c:if>
		</div> <!-- 로그인 -->

<span style="float: left; margin-left: 140px;">
	<input class="input_search" type="text" name="keyword" value="${page.keyword }" style="vertical-align: top;"/>
	<img src="img/search.png" style="width: 30px; height: 30px;"/>
<!-- 		<a class="btn-fill" onclick="$('form').submit()">검색</a>			 -->
</span>
</div>
<hr>
<script>
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

function go_login(){
	$.ajax({
		url: 'login',
		data: { id: $('#userid').val(), 
				pwd: $('#userpwd').val() },
		success: function(data){
			if( data ){
				location.reload();
			}else{
				alert('아이디나 비밀번호가 일치하지 않습니다!');
				$('#userid').focus();
			}
			
		},error: function(req, text){
			alert(text+": "+req.status);
		}
	});
}
</script>