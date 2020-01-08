<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/include/header.jsp" %>
  
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"
	prefix="c" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
.menu4 { color: white; }

#attach-file, #delete-file {
	display: none;
}
.tt {
	width: 0;
	
}
.imgs_wrap {
	width: 1100px;
	margin-top: 30px;
	margin-left: 20%;
	
}
.imgs_wrap img {
	max-width: 200px;
	margin-left: 20px;
}

.title { height: 80px; line-height: 50px; text-align: center;  margin-bottom: -35px; }
</style>
</head>
<body>
<div class="title" >
	<h1 style="font-size: 22px;">커뮤니티 글 수정</h1>
</div>

<br>
<form enctype="multipart/form-data" method="post" action="update.co">

<table class="tt" >

<tr><th style="float: right; font-size: 20px; margin-top: 90px; margin-right: 10px;">내용</th>
	<td><textarea style="width:600px; height: 200px; border-radius: 5px; margin-top: 5px;" name="content" class="need" title="내용">${vo.content}</textarea> </td>
</tr>
</table><br>
<div style="overflow: hidden; width:50%; margin:0 auto; ">
<label>
        <img src="img/image_add.png" 
        style="margin-bottom:35px; width: 50px; height: 50px; cursor:pointer">
     	<input id="input_img" type="file" hidden="" name="image1" accept="jpg, jpeg, png, gif"/>
</label>
		<img style="display:none" style="margin-bottom:50px; width:50px; height: 50px;" 
		id="delete-file1"  src="img/delete.png" />
		<c:if test="${ !empty vo.co_filename1 }">
		<img style="width: 150px; height: 150px;" id="img" src="${vo.co_file1}" />
		</c:if>
		<c:if test="${ empty vo.co_filename1 }">
		<img style="display:none; width: 150px; height: 150px;" id="img" />
		</c:if>
		
<label>     
     	<img src="img/image_add.png" 
     	style="margin-bottom:35px; margin-left:10%;  width: 50px; height: 50px; cursor:pointer">
     	<input id="input_img1" type="file" hidden="" name="image2" accept="jpg, jpeg, png, gif"/>
</label>
		<img style="display:none" style="margin-bottom:50px; width:50px; height: 50px;" 
		id="delete-file2"  src="img/delete.png" />
		<c:if test="${ !empty vo.co_filename2 }">
		<img style="width: 150px; height: 150px;" id="img1" src="${vo.co_file2}" />
		</c:if>
		<c:if test="${ empty vo.co_filename2 }">
		<img style="display:none; width: 150px; height: 150px;" id="img1" />
		</c:if>
		
		
<label> 
     	<img src="img/image_add.png" 
     	style="margin-bottom:35px; margin-left:10%;  width: 50px; height: 50px; cursor:pointer">
     	<input id="input_img2" type="file" hidden="" name="image3" accept="jpg, jpeg, png, gif"/>
</label>
		<img style="display:none" style="margin-bottom:50px; width:50px; height: 50px;" 
		id="delete-file3"  src="img/delete.png" />
		<c:if test="${ !empty vo.co_filename3 }">
		<img style="width: 150px; height: 150px;" id="img2" src="${vo.co_file3}" />
		</c:if>
		<c:if test="${ empty vo.co_filename3 }">
		<img style="display:none; width: 150px; height: 150px;" id="img2" />
		</c:if>
		
</div>
<br>
<input type="hidden" name="delete" value="0"/>
<input type="hidden" name="no" value="${vo.no}" />
<a class="btn-fill" onclick="$('form').submit()">저장</a>
<a class="btn-empty" 
	onclick="$('form').attr('action', 'detail.co'); $('form').submit()">취소</a>
</form>

<script type="text/javascript">
$(document).ready(function() {
    $('#test').on('keyup', function() {
        if($(this).val().length > 4000) {
            alert('4000글자가 넘었습니다.');
        }
    });
});


$('#delete-file1').click(function(){
	 $('#delete-file1').css('display','none');
	 $('#img').css('display','none');
	 $('[name=delete]').val(1);
	 $('#input_img').val('');
	
});

$('#delete-file2').click(function(){
	 $('#delete-file2').css('display','none');
	 $('#img1').css('display','none');
	 $('[name=delete]').val(1);
	 $('#input_img1').val('');
});

$('#delete-file3').click(function(){
	 $('#delete-file3').css('display','none');
	 $('#img2').css('display','none');
	 $('[name=delete]').val(1);
	 $('#input_img2').val('');
});

var sel_file;

$(document).ready(function() {
    $("#input_img").on("change", handleImgFileSelect);
    $("#input_img1").on("change", handleImgFileSelect1);
    $("#input_img2").on("change", handleImgFileSelect2);
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
            $("#img").attr("src", e.target.result);
            $('#delete-file1').css('display', e ? 'inline-block':'none')
            $('#img').css('display','inline-block');
        }
        reader.readAsDataURL(f);
       
    });
}
function handleImgFileSelect1(e) {
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
            $("#img1").attr("src", e.target.result);
            $('#delete-file2').css('display', e ? 'inline-block':'none')
            $('#img1').css('display','inline-block');
        }
        reader.readAsDataURL(f);
    });
}
function handleImgFileSelect2(e) {
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
            $("#img2").attr("src", e.target.result);
            $('#delete-file3').css('display', e ? 'inline-block':'none')
            $('#img2').css('display','inline-block');
        }
        reader.readAsDataURL(f);
    });
}
</script>
</body>
</html>




