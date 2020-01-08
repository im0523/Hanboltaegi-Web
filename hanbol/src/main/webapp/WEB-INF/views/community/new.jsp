<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/include/header.jsp" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" 
	prefix="fn"%>    
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
	margin-left: 5%;
	
}
.imgs_wrap img {
	max-width: 200px;
	margin-left: 20px;
}


#delete-file1, #delete-file2, #delete-file3 {
	width: 50px; margin-bottom: 50px;
}

#img, #img1, #img2 {
	padding: 0 15px;
}
.title { height: 80px; line-height: 50px; text-align: center; margin-top: -20px; margin-bottom: -55px; }
</style>
</head>
<body>

<br>
<div class="title" >
	<h1 style="font-size: 22px;">자유롭게 토킹 어바웃</h1>
</div>

<br>
<form  enctype="multipart/form-data" method="post" action="insert.co">
<table class="tt">

</table>


<br>
<table class="tt" >
<tr><th style="float: right; font-size: 20px; margin-top: 90px; margin-right: 10px;">내용</th>
	<td><textarea style="width:700px; height: 200px; border-radius: 5px; margin-top: 5px; margin-right: 50px;" 
		name="content" class="need" title="내용" id="test"></textarea> </td>
</tr>
</table><br>
<div style="overflow: hidden; width:1200px; margin:0 auto; ">
<label>
        <img src="img/image_add.png" 
        style="margin-bottom:50px; width: 50px; height: 50px; cursor:pointer">
     	<input id="input_img" type="file" hidden="" name="image1" accept="jpg, jpeg, png, gif"/>
</label>
        <img style="display:none" id="delete-file1"  src="img/delete.png" />
		<img style="display:none; width: 150px; height: 150px;" id="img" />

        
<label>     
     	<img src="img/image_add.png" 
     	style="margin-bottom:50px; margin-left:10%;  width: 50px; height: 50px; cursor:pointer">
     	<input id="input_img1" type="file" hidden="" name="image2" accept="jpg, jpeg, png, gif"/>
</label>
     	<img style="display:none" id="delete-file2"  src="img/delete.png" />
		<img style="display:none; width: 150px; height: 150px;" id="img1" />
		
<label> 
     	<img src="img/image_add.png" 
     	style="margin-bottom:50px; margin-left:10%;  width: 50px; height: 50px; cursor:pointer">
     	<input id="input_img2" type="file" hidden="" name="image3" accept="jpg, jpeg, png, gif"/>
</label>
     	<img style="display:none" id="delete-file3"  src="img/delete.png" />
		<img style="display:none; width: 150px; height: 150px; border:0; " id="img2" />
</div>



<div style="margin-top: 20px;"> 
	<button type="button" onclick="submit()" class="btn-fill">저장</button>
	<a class="btn-empty" onclick="location='list.co'">취소</a>
</div>
</form>
<script type="text/javascript" src="js/nullCheck.js"></script>
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
	 $('#input_img').val('');
	
});

$('#delete-file2').click(function(){
	 $('#delete-file2').css('display','none');
	 $('#img1').css('display','none');
	 $('#input_img1').val('');
});

$('#delete-file3').click(function(){
	 $('#delete-file3').css('display','none');
	 $('#img2').css('display','none');
	 $('#input_img2').val('');
});


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