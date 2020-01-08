<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<!-- <link rel="stylesheet" href="style.css"> -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.4.1/jquery.min.js" charset="utf-8"></script>
<link href="https://fonts.googleapis.com/css?family=Poor+Story&display=swap" rel="stylesheet">
<style type="text/css">
*{margin: 0;padding: 0;text-decoration: none;box-sizing: border-box;}

body{min-height: 100vh;background: #999966;}

.login-form{width: 360px;background: #f1f1f1;height: 580px;padding: 80px 40px;border-radius: 10px;position: absolute;left: 50%;top: 50%;transform: translate(-50%,-50%);}

.login-form h1{ text-align: center; font-size: 35px; margin-bottom: 30px; }

.txtb{border-bottom: 2px solid #adadad;position: relative;margin: 30px 0;}

.txtb input{font-size: 15px;color: #333;border: none;width: 100%;outline: none;background: none;padding: 0 5px;height: 40px;}

.txtb span::before{content: attr(data-placeholder);position: absolute;top: 50%;left: 5px;color: #adadad;transform: translateY(-50%);z-index: -1;transition: .5s;}

.txtb span::after{content: '';position: absolute;width: 0%;height: 2px;background: linear-gradient(120deg,#f0b501,#8e44ad);transition: .5s;}

.focus + span::before{top: -5px;}

.focus + span::after{width: 100%;}

.logbtn{display: block;width: 100%;height: 50px;border: none;background: #669900;background-size: 200%;color: #fff;outline: none;cursor: pointer;transition: .5s;font-size: 20px;font-weight: bold;}

.logbtn:hover{ background-position: right; }

.bottom-text{ margin-top: 60px; text-align: center; font-size: 15px; }

.back{ margin-top: 30px;text-align: center; }
</style>

<script type="text/javascript">
	$(".txtb input").on("focus",function(){
		$(this).addClass("focus");
	});

	$(".txtb input").on("blur",function(){
		if($(this).val() == "")
		$(this).removeClass("focus");
	});
	
	
	
	//로그인
	function go_login() {
// 		console.log( '?? ', document.referrer+'?${param.name}=${param.val}');
		$.ajax({
			type: 'post',
			url : 'login',
			data : {
				id : $('#id').val(),
				pwd : $('#pwd').val()
			},
			success : function(data) {
				if (data) {
					if( ${empty param.name} )
						window.location=document.referrer;
					else
						window.location=document.referrer+'?${param.name}=${param.val}';
				} else {
					alert('아이디나 비밀번호가 일치하지 않습니다!');
					$('#id').focus();
				}

			},
			error : function(req, text) {
				alert(text + ": " + req.status);
			}
		});
		
	}
	
</script>

</head>

<body>

<!-- 	<form action="login"  method="post"> -->
	<div class="login-form">
		<h1>로그인</h1>

		<div class="txtb">
			<input id="id" type="text" placeholder="아이디">
		</div>

		<div class="txtb">
			<input id="pwd" type="password" placeholder="비밀번호"  onkeypress="if( event.keyCode==13 ){ go_login() }">
		</div>

		<input type="submit" class="logbtn" value="로그인" onclick="go_login()" >

		<div class="bottom-text">
			아직 회원이 아니세요? <a onclick=" location='join.me' " style="font-weight: bold;">회원가입</a>
		</div>
		
		<div class="back">
			<a onclick="history.back();">뒤로가기</a>
		</div>
	</div>
<!-- 	</form> -->




</body>
</html>
























