<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"
	prefix="c" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="https://fonts.googleapis.com/css?family=Do+Hyeon&display=swap" rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Poor+Story&display=swap" rel="stylesheet">
<style>
body {
	margin: 0;
	background: #999966;
}

#wrap {
	width: 453px;
    background: #f1f1f1;
    height: 900px;
    padding: 20px 40px;
    border-radius: 10px;
    position: absolute;
    left: 50%;
    top: 50%;
    transform: translate(-50%,-50%);
}


h1 {
	font-size: 60px;
	text-align: center;
	color: #00BC3D;
	font-family: 'Black Han Sans', sans-serif;
}

h3 {
	font-size: 40px;
	text-align: center;
	color: #74b243;
	font-family: 'Do Hyeon', sans-serif;
	margin: 20px auto;
}

h4 {
	margin-top: 15px;
	margin-bottom: 10px;
	text-align: left;
}

.font-logo-small {
	font-family: 'Archivo Black', sans-serif;
	color: #00BC3D;
}

p {
	font-size: 12px;
	color: #656565;
	text-align: center;
}


/*        여러칸을 감싸주는 div*/
.box {
	overflow: hidden;
}

/*        모든 input, select의 마진 설정*/
input, select, i {
	margin-left: 10px;
	margin-top: 10px;
}

/*        id입력칸 설정*/
#mId, #mNi {
	float: left;
	width: 300px;
}

#mIdLabel {
	float: right;
	line-height: 50px;
	width: 130px;
	color: grey;
}

/*       입력칸을 감싸주는 div*/
.text-box {
	width: 450px;
	height: 50px;
	background: white;
	border: 1px solid #D9D9D9;
}

/*        입력칸*/
.text-box input, .text-box select {
	width: 430px;
	height: 30px;
	border: 0;
	display: block;
}

.pw input {
	width: 300px;
	float: left;
}

.pw div {
	margin-right: 10px;
	text-align: right;
	width: 100px;
	float: right;
}

.pw div span {
	line-height: 45px;
	font-size: 12px;
	margin-right: -5px;
}

.pw div i, .pw div span {
	float: right;
}

.material-icons {
	color: #9E9E9E;
}



.disabled, .disabled input {
	background: #F0F2F5;
	line-height: 50px;
	color: #8D8D8D;
}


.red-alert {
	color: red;
	font-size: 12px;
	text-align: left;
}

.btn-joongbok {
	margin-top: 12px;
	margin-right: 11px;
	float: right;
}


/*submit 버튼설정*/
#submit {margin-top: 30px;width: 200px;height: 60px;text-align: center;line-height: 60px;background: #74b243;
		 color: white;cursor: pointer;font-weight: bold;float: right; }

#cancel {margin-top: 30px;width: 200px;height: 60px;text-align: center;line-height: 60px;background: #8e8e8e;
		 color: black;cursor: pointer;font-weight: bold;float: left; margin-bottom: 10px; }

p {clear: both;margin-top: 10px;}

.valid, .invalid { font-size: 13px; font-weight: bold; text-align: left;}
.valid { color: green }
.invalid { color: red }
</style>
<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<style type="text/css">
.valid, .invalid { font-size: 13px; font-weight: bold; margin-top: 10px;}
.valid { color: green }
.invalid { color: red }
</style>
<script type="text/javascript">
function validate(tag){
	var value = $('[name=' + tag + ']').val();
	if( tag=='id') {
		value = validator.id_status(value);
	}else if( tag == 'nickname'){
		value = validator.nick_status(value);
	}else if( tag == 'pwd'){
		value = validator.pwd_status(value);
	}else if( tag=='pwd_ck'){
		value = validator.pwd_ck_status(
					value, $('[name=pwd]').val());
	}else if( tag=='email' ){
		value = validator.email_status(value);
	}
	if(value){
		$('#' + tag + '_status' ).text( value.desc );
		$('#' + tag + '_status' )
			.removeClass('valid').removeClass('invalid');
		$('#' + tag + '_status' )
			.addClass( value.code=='valid'? 'valid': 'invalid');
	}
	
	return value;
}

//아이디 중복확인
function usable(){
	var data = validate('id');
	if( data.code != 'valid' ){ //중복확인 불필요
		alert( data.desc );
		return;
	}
	$.ajax({
		type: 'post',
		data: { id: $('[name=id]').val() },
		url: 'id_usable',
		success: function(data){
			data = validator.id_usable(data);
			if( data ){
				$('#id_usable').val(data.code);
				$('#id_status').text(data.desc);
				$('#id_status').removeClass('valid')
								   .removeClass('invalid');
				$('#id_status').addClass(
					data.code=='usable' ? 'valid' : 'invalid');
			}
			
		},error: function(req, text){
			alert(text+": " + req.status);
		}
	});
	return data;
}

//닉네임 중복확인
function usablenick(){
	var data = validate('nickname');
	if( data.code != 'valid' ){ //중복확인 불필요
		alert( data.desc );
		return;
	}
	$.ajax({
		type: 'post',
		data: { nickname: $('[name=nickname]').val() },
		url: 'nick_usable',
		success: function(data){
			data = validator.nick_usable(data);
			if( data ){
				$('#nick_usable').val(data.code);
				$('#nick_status').text(data.desc);
				$('#nick_status').removeClass('valid')
								   .removeClass('invalid');
				$('#nick_status').addClass(
					data.code=='usable' ? 'valid' : 'invalid');
			}
			
		},error: function(req, text){
			alert(text+": " + req.status);
		}
	});
	return data;
}
</script>
<script type="text/javascript" 
	src="js/join_validator.js?v=<%=new java.util.Date().getTime()%>"></script>
</head>
<body>

<form method="post" action="join">
<input type="hidden" id="id_usable" value="n"/>
    <div id="wrap">
    	<h3>회원가입</h3>
<!--         <h1>회원가입</h1> -->
        
        <div class="content-wrap">
            <h4>아이디</h4>
            <div class="text-box box">
                <input onkeyup="$('#id_usable').val('n'); validate('id')" type="text" id="mId" name="id">
				<a id="btn-usable" onclick="usable()" class="btn-joongbok">중복확인</a><br>
            </div>
				<div class="valid" id="id_status">아이디를 입력하세요(영문소문자,숫자만)</div>	
            <p class="red-alert" id="idP"></p>
        </div>
        
        <div class="content-wrap">
            <h4>닉네임</h4>
            <div class="text-box">
                <input onkeyup="$('#nick_usable').val('n'); validate('nickname')" type="text" id="mNi" name="nickname">
                <a id="btn-usable" onclick="usablenick()" class="btn-joongbok">중복확인</a><br>
            </div>
				<div class="valid" id="nick_status">닉네임을 입력하세요(한글, 영문, 숫자만)</div>
            <p class="red-alert"></p>
        </div>
        
        <div class="content-wrap">
            <h4>비밀번호</h4>
            <div class="text-box box pw">
                <input onkeyup="validate('pwd')" type="password" id="pwd" name="pwd">
                <div>
                    <span></span>
                </div>
            </div>
                <div class="valid" id="pwd_status">비밀번호를 입력하세요(영문 대/소문자, 숫자 모두 포함)
            <p class="red-alert" id="pw1P"></p>
        </div>
        
        <div class="content-wrap">
            <h4>비밀번호 재확인</h4>
            <div class="text-box box pw">
                <input onkeyup="validate('pwd_ck')" type="password" id="pwd_ck" name="pwd_ck">
                <div>
                    <span></span>
                </div>
            </div>
            	<div class="valid" id="pwd_ck_status">비밀번호를 다시 입력하세요</div>
            <p class="red-alert" id="pw2P"></p>
        </div>
        
        <div class="content-wrap">
            <h4>이메일</h4>
            <div class="text-box box email">
                <input onkeyup="validate('email')" type="email" id="email" name="email">
                <div>
                    <span></span>
                </div>
            </div>
            	<div class="valid" id="email_status">이메일을 입력하세요</div>
            <p class="red-alert"></p>
        </div>
        
        <br>
        <div id="area">
        	<div id="submit" onclick="go_submit()"><a style="font-family: 'Poor Story', cursive;">가입하기</a></div>
        	<div id="cancel" onclick="history.back(-2);"><a style="font-family: 'Poor Story', cursive;">취소</a></div>
        </div>
     	<p>이용약관 | 개인정보처리방침 | 책임의 한계와 법적고지 | 회원정보 고객센터</p>
<!--         <div class="sign" onclick="go_submit()" id="submit">회원가입</div> -->
<!--    		<div class="cancel" onclick="location='member'">취소</div> -->
    </div>
</form>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
  
<script type="text/javascript">
function go_submit(){
	if( $('[name=id]').val().trim()=='' ){
		alert('아이디를 입력하세요');
		$('[name=id]').val('');
		$('[name=id]').focus();
		return;
	}
	
	//아이디 중복확인 안한경우 유효한지 판단
	if( $('#id_usable').val()=='n' ){
		if( !item('id') ) return;
		else{
			alert( validator.id.valid.desc );
// 			$('#btn-usable').focus(); //버튼으로 만든 경우
			return;
		}
	//중복확인 한경우 이미 사용중인 경우만	
	}else if( $('#id_usable').val()=='unusable' ){
		alert( validator.id.unusable.desc );
		$('[name=id]').focus();
		return;		
	}
	
	//닉네임 중복확인 안한경우 유효한지 판단
	if( $('#nick_usable').val()=='n' ){
		if( !item('nickname') ) return;
		else{
			alert( validator.nickname.valid.desc );
// 			$('#btn-usable').focus(); //버튼으로 만든 경우
			return;
		}
	//중복확인 한경우 이미 사용중인 경우만	
	}else if( $('#nick_usable').val()=='unusable' ){
		alert( validator.nickname.unusable.desc );
		$('[name=nickname]').focus();
		return;		
	}
	
	if( !item('pwd') ) return;
	if( !item('pwd_ck') ) return;
	if( !item('email') ) return;
	
	$('form').submit();
}

function item(tag){
	var data = validate(tag);
	if( data.code != 'valid' ){
		alert(data.desc);
		$('[name='+ tag +']').focus();
		return false;
	}else	return true;
}



</script>

</body>
</html>