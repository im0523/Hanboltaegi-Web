<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/include/header.jsp" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="https://fonts.googleapis.com/css?family=Poor+Story&display=swap" rel="stylesheet">

<script type="text/javascript" 
	src="js/join_validator.js?v=<%=new java.util.Date().getTime()%>"></script>
	
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>

<style type="text/css">

.menu5 { color: white; }

#profile1 { float: left; width: 240px; height: 300px; border: 1px solid #e6dfdf; }

#profile2 { float: right; width: 665px;; height: 600px; }

#png { width: 215px; height: 190px; margin: 10px auto; }

.hr { border-color: rgba(47,46,46,0.2); margin: 25px 0; }

.item2 { float: left; clear: both; }

.item2 > label { display: block; text-align: left; margin-bottom: 20px; }

.item2 > input { width: 400px; }

#submit { clear: both; width: 200px; height: 40px; line-height: 40px; background: #74b243; color: white; 
cursor: pointer; text-align: center;  font-family: 'Poor Story', cursive; font-size: 20px; font-weight: bold; }

.valid, .invalid { font-size: 13px; font-weight: bold; }

.valid { color: green }

.invalid { color: red }

.btn_area { width: 100%; height: 55px; }


</style>

<script type="text/javascript">
function validate(tag){
	var value = $('[name=' + tag + ']').val();
	
	if( tag == 'nickname'){
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

</head>
<body>

<form enctype="multipart/form-data" method="post" action="update">
<input type="hidden" name="delete" value="0"/>
<input type="hidden" id="id_usable" value="${login_info.id}"/>
	
	<div id="content">
		<c:if test="${!empty login_info}">
		<div id="aside">
			<ul id="aside_menu">
				<li class="item" onclick="location='detail.my'"><a style="color: white;">내 정보</a></li>
				<li class="item" onclick="location='myrecipe.my'"><a>내가 올린 레시피</a></li>
				<li class="item" onclick="location='scraprecipe.my'"><a>스크랩한 레시피</a></li>
				<li class="item" onclick="location='follow.my'"><a>내 팔로우</a></li>
				<li class="item" onclick="location='activity.my'"><a>내 활동내역</a></li>
				<li class="item" onclick="location='inquiry.my'"><a>1:1 문의</a></li>
			</ul>
		</div>
		</c:if>
		
		<c:if test="${empty login_info}">
		<div id="aside">
			<ul id="aside_menu">
				<li class="item" onclick="location='member'"><a style="color: white;">내 정보</a></li>
				<li class="item" onclick="location='member'"><a>내가 올린 레시피</a></li>
				<li class="item" onclick="location='member'"><a>스크랩한 레시피</a></li>
				<li class="item" onclick="location='member'"><a>내 팔로우</a></li>
				<li class="item" onclick="location='member'"><a>내 활동내역</a></li>
				<li class="item" onclick="location='member'"><a>1:1 문의</a></li>
			</ul>
		</div>
		</c:if>
		
		<div id="section">
			<div id="profile1">
				<img id="png" src="${login_info.user_pic}">
				<div><span id="pro_nickname">${login_info.nickname}</span></div>
				<div class="file_area" style="margin-top: 10px;">
				<label>
<!-- 				이미지 추가 -->
					<img class="btn-img" src="img/image_add.png" style="width: 40px;"/>
					<input id="attach-file" type="file" name="file" hidden=""/>
				</label>
			</div>
			
			</div>
			<div id="profile2">
				<div style="font-size: 26px; text-align: left; margin-bottom: 20px;">내 계정</div>
				<div style="font-size: 15px; text-align: left;">개인 정보를 수정할 수 있습니다.</div>
				<hr class="hr">
				
				<div class="item2">
					<label>닉네임</label>
					<input value="${login_info.nickname}" type="text" name="nickname" onkeyup="$('#nick_usable').val('n'); validate('nickname')" />
					<a id="btn-usable" onclick="usablenick()" class="btn-joongbok" >중복확인</a><br>
					<div style="text-align: left; margin: 10px 0;" class="valid" id="nick_status">닉네임을 입력하세요(한글, 영문, 숫자만)</div>
				</div>
				
				<div class="item2">
					<label>비밀번호</label>
					<input onkeyup="validate('pwd')" type="password" id="pwd" name="pwd"/>
					<div style="text-align: left; margin: 10px 0;" class="valid" id="pwd_status">비밀번호를 입력하세요(영문 대/소문자, 숫자 모두 포함)</div>
				</div>
				
				<div class="item2">
					<label>비밀번호 확인</label>
					<input onkeyup="validate('pwd_ck')" type="password" id="pwd_ck" name="pwd_ck"/>
					<div style="text-align: left; margin: 10px 0;" class="valid" id="pwd_ck_status">비밀번호를 다시 입력하세요</div>
				</div>
				
				<div class="item2">
					<label>이메일</label>
					<input value="${login_info.email}" type="email" style="width: 410px; height: 22px; padding-left: 5px;" name="email"/>
					<div style="text-align: left; margin: 10px 0;" class="valid" id="email_status">이메일을 입력하세요</div>
				</div>
				
				<div id="submit" onclick="go_submit()">수정</div>
			</div><!-- profile2 -->
		</div><!-- 섹션 -->
	</div><!-- 컨텐츠 -->
</form>

<script type="text/javascript">

//이미지 추가 삭제 버튼 클릭 시
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
		$('#file-name').css('padding-left', '100px');
		$('#delete-file').css('display', 'inline-block');
	});
	
	
	
});


//사진 수정 시 바뀌게
var sel_file;

$(document).ready(function() {
    $("#attach-file").on("change", handleImgFileSelect);
}); 

function handleImgFileSelect(e) {
    var files = e.target.files;
    var filesArr = Array.prototype.slice.call(files);
   
    filesArr.forEach(function(f) {
        if(!f.type.match("image.*")) {
            alert("확장자는 이미지 확장자만 가능합니다.");
            return;
        }

        sel_file = f;

        var reader = new FileReader();
        reader.onload = function(e) {
            $("#png").attr("src", e.target.result);
            $('#img').css('display','inline-block');
        }
        reader.readAsDataURL(f);
       
    });
}

//수정 버튼 클릭 시
function go_submit(){
	if( $('[name=nickname]').val().trim()=='' ){
		alert('닉네임을 입력하세요');
		$('[name=nickname]').val('');
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