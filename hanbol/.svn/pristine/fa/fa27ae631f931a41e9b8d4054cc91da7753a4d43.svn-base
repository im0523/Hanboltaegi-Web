<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/include/header.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="https://fonts.googleapis.com/css?family=Poor+Story&display=swap" rel="stylesheet">
<style type="text/css">
.menu3 { color: white; }
.btn-img { width: 40px; height: 35px; float: left;}
.material_detail1, .material_detail2, .material_detail3, .material_detail4, .material_detail5, .material_detail6, .material_detail7, .material_detail8, .material_detail9, .material_detail10, .material_detail11, material_detail12{ width: 450px; height: 50px; float: left;}
.material_detail1 input, .material_detail2 input, .material_detail3 input, .material_detail4 input, .material_detail5 input, .material_detail6 input, .material_detail7 input, .material_detail8 input, .material_detail9 input, .material_detail10 input, .material_detail11 input, .material_detail12 input{ width:110px; height: 30px; }
.seq_content_de { width: 110ppx; height: auto;}
#attach-file, #image1, #image2, #image3, #image4, #image5, #image6, #image7, #image8, #image9, #image10, #delete-file { display: none;}
#loadimg{ width: 250px; height: 250px; cursor:pointer; border: 1px solid #cfd1c2; margin-top: 30px;}
select { width: 100px; height: 30px;}
.pic { width:100px; height:100px; padding: 5px 0 0 5px;}
.regi_title { font-family: 'Poor Story', cursive; font-size: 22px; font-weight: bold; height: 50px; line-height: 50px; margin-bottom: 10px; }
</style>
</head>
<body>
<form method="post" action="insert.re" enctype="multipart/form-data">
<div class="container recipe_regi">
    <div class="regi_title">레시피 등록</div>
</div>
	<div class="regi_content">
    <div class="header_content">
     <div class="imagepath" style="width: 370px;">
     	<img src="img/delete.png" id="delete-file" style="width: 30px; height: 30px; float: right;"/>
     	<label>
            <img id="mainPhotoHolder" src="http://recipe1.ezmember.co.kr/img/pic_none4.gif" style="width: 250px; height: 250px; cursor:pointer">
     		<img id="loadimg" src="#" hidden=""/>
     		<input type="file" name="file_imagepath" class="need" id="attach-file" accept="jpg, jpeg, png, gif" title="대표 사진을"/>
     	</label>
      </div>
      
    	<div class="cate_line"><p class="cate1">레시피 제목</p>
    		<input type="text" name="title"value="" maxlength="20" class="form-control" placeholder="예) 갈비탕 만들기" style="width:610px;"></div>
    	<div class="cate_line"><p class="cate1">요리소개</p>
    		<textarea name="subtitle" class="form-control" maxlength="40" placeholder="이 레시피의 탄생배경을 적어주세요. 예) 남편의 생일을 맞아 소고기 미역국을 끓여봤어요. 어머니로부터 배운 미역국 레시피를 남편의 입맛에 맞게 고안했습니다." style="height:100px; width:620px; resize:none;"></textarea></div>
	
	<div class="cate_line"><p class="cate1">카테고리</p>
		<select name="cat1" id="category_1"  text="종류별">
			<option value="" >종류별</option>
			<option value="메인반찬">메인반찬</option>
			<option value="국/탕">국/탕</option>
			<option value="밥/죽/떡">밥/죽/떡</option>
			<option value="디저트">디저트</option>
			<option value="양념/소스">양념/소스</option>
			<option value="면류">면류</option>
			<option value="기타">기타</option>
		</select>
		<select name="cat2" id="category_2"  text="상황별">
			<option value="" >상황별</option>
			<option value="일상">일상</option>
			<option value="초스피드">초스피드</option>
			<option value="손님접대">손님접대</option>
			<option value="술안주">술안주</option>
			<option value="간식">간식</option>
		</select>
        <select name="cat3" id="category_3"  text="재료별">
			<option value="" >재료별</option>
			<option value="육류">육류</option>
			<option value="해산물">해산물</option>
			<option value="가공식품">가공식품</option>
		</select>
        <select name="cat4" id="category_4"  text="제철요리">
			<option value="" >제철요리</option>
			<option value="봄">봄</option>
			<option value=여름>여름</option>
			<option value="가을">가을</option>
			<option value="겨울">겨울</option>
			<option value="사계절">사계절</option>
		</select>
		</div>

 	<div class="cate_line"><p class="cate1">요리정보</p>
        <select name="portion" id="cok_portion"  text="인원">
			<option value="" >인원</option>
			<option value="1인분">1인분</option>
			<option value="2인분">2인분</option>
			<option value="3인분">3인분</option>
			<option value="4인분">4인분</option>
			<option value="5인분">5인분</option>
			<option value="6인분">6인분이상</option>
		</select>
        <select name="time" id="cok_time"  text="요리시간">
			<option value="" >시간</option>
			<option value="5분이내">5분</option>
			<option value="10분이내">10분이내</option>
			<option value="15분이내">15분이내</option>
			<option value="20분이내">20분이내</option>
			<option value="30분이내">30분이내</option>
			<option value="60분이내">60분이내</option>
			<option value="90분이내">90분이내</option>
			<option value="120분이내">120분이내</option>
			<option value="120분이상">120분이상</option>
		</select>
        <select name="degree" id="cok_degree"  text="난이도">
			<option value="" >난이도</option>
			<option value="아무나">아무나</option>
			<option value="초급">초급</option>
			<option value="중급">중급</option>
			<option value="고급">고급</option>
			<option value="신의경지">신의경지</option>
		</select>
	</div>
</div>

    <div class="material_content">
    <p>추가버튼을 이용해 재료를 추가해주세요:)</p><br>
    	<div class="cate_line" id="why">
    		<div class="material_detail">
	    		<input type="text" name="material_name0"value="" class="form-control" placeholder="예) 새우"/>
	    		<input type="text" name="material_unit0"value="" class="form-control" placeholder="예) 10마리"/>
    		</div>
    		<div class="material_detail">
	    		<input type="text" name="material_name1"value="" class="form-control" placeholder="예) 새우"/>
	    		<input type="text" name="material_unit1"value="" class="form-control" placeholder="예) 10마리"/>
    		</div>
	           	<a type="button"  id="btn-mat"><img onclick="addMaterial()" src="img/add.png" class="btn-mat-add" style="float:right;"/></a>
   		</div>
    </div>
    
    <div class="seq_content">
    	<p>요리순서</p><br>
    	<div class="seq_content_de">
    		<div class="recipe-detail">
    		<div class="rec_text">
    			<textarea name="text1" class="form-control step_cont" placeholder="예) 소고기는 기름기를 떼어내고 적당한 크기로 썰어주세요." style="height:100px; width:620px; resize:none;"></textarea>
    		</div>
    			 <div id="seq_img">
		     	<label>
		            <img class="pic" id="rec_de_pic1" src="img/image_add.png" style="cursor:pointer">
		     		<input class="acc-img" type="file" name="image" id="image1" accept="jpg, jpeg, png, gif"/>
		     		<img style="display:none; width:120px; height: 105px; cursor: pointer;" id="img1" />
		     	</label>
   				</div>
  			</div>
    		<div class="recipe-detail">
    		<div class="rec_text">
    			<textarea name="text2" class="form-control step_cont" placeholder="예) 준비된 양념으로 먼저 고기를 조물조물 재워둡니다." style="height:100px; width:620px; resize:none;"></textarea>
    		</div>
		         <div id="seq_img">
		     	<label>
		            <img class="pic" id="rec_de_pic2" src="img/image_add.png" style="cursor:pointer">
		     		<input class="acc-img" type="file" name="image" id="image2" accept="jpg, jpeg, png, gif"/>
		     		<img style="display:none; width:120px; height: 105px; cursor: pointer;" id="img2" />
		     	</label>
   				</div>
  			</div>
    		<div class="recipe-detail">
    		<div class="rec_text">
    			<textarea name="text3" class="form-control step_cont" placeholder="예) 그 사이 양파와 버섯, 대파도 썰어서 준비하세요." style="height:100px; width:620px; resize:none;"></textarea>
    		</div>
		         <div id="seq_img">
		     	<label>
		            <img class="pic" id="rec_de_pic3" src="img/image_add.png" style="cursor:pointer">
		     		<input class="acc-img" type="file" name="image" id="image3" accept="jpg, jpeg, png, gif"/>
		     		<img style="display:none; width:120px; height: 105px; cursor: pointer;" id="img3" />
		     	</label>
   				</div>
  			</div>
  			
  			</div>
	    		<a type="button" onclick="addSequence()" id="btn-mat"><img src="img/add.png" class="btn-mat-add"/></a>
    	</div>

	</div>
	  	<div class="regi_btn">
	   		<button type="button" onclick="if( checkInput() ){ $('form').submit() }" class="btn-fill">등록</button>
		    <button type="button" onclick="history.back();" class="btn-empty">취소</button>
	    </div>
</form>
<script type="text/javascript" src="js/nullCheck.js"></script>
<script>
var x = 2;
var curMatCnt = 2;
//재료 추가 버튼
function addMaterial(){
	if( curMatCnt >= 12) return;	//10번 클릭시부터는 append 안되고 return 시키기
	$("#why").append('<div class="material_detail' +x+ '">'
	    	+	'<input type="text" name="material_name' +x+ '" value="" class="form-control" style="margin-left: 160px;" placeholder="예) 새우"/>'
	    	+	'<input type="text" name="material_unit'+x+'" value="" class="form-control" placeholder="예) 10마리"/>'
	    	+	'<img src="img/delete.png" name="delete'+x+'" class="btn-img" onclick="deleteMat(this)" />'
    		+'</div>');
    		x++;
    		curMatCnt++;
    		
}

var i = 4;
function addSequence(){
	$(".seq_content_de").append('<div class="recipe-detail">'
    		+ '<div class="rec_text">'
				+ '<textarea name="text'+i+'" class="form-control step_cont" placeholder="예) 텍스트를 입력하세요." style="height:100px; width:620px; resize:none;"></textarea>'
			+ '</div>'
	        + '<div id="seq_img">'
	     		+ '<label>'
	            	+ '<img class="pic" id="rec_de_pic'+i+'" src="img/image_add.png" style="cursor:pointer">'
	     			+ '<input class="acc-img" type="file" name="image" id="image'+i+'" hidden="" accept="jpg, jpeg, png, gif"/>'
	     			+ '<img style="display:none; width:120px; height: 105px; cursor:pointer;" id="img'+i+'" />'
	     		+ '</label>'
			+ '</div>'
			+ '</div>');
			i++;
}

function deleteMat(o) {
	$(o).parent().remove();
}

$(function(){
	$('#attach-file').change(function(){
		$('#delete-file').css('display', 'inline-block');
		$('#mainPhotoHolder').css('display', 'none');
		$('#loadimg').css('display', 'inline-block');
	});
	
	$('#delete-file').click(function(){
		$('#file-name').text('');	//보여지는 부분 초기화
		$('#attach-file').val('');	//값을 초기화
		$('#file-name').css('padding-right', '30px');
		$('#delete-file').css('display', 'none'); 
		$('#mainPhotoHolder').css('display', 'inline-block'); 
		$('#loadimg').css('display', 'none');
	});
});


$(document).on("change", ".acc-img", handleImgFileSelect);

function readURL(value, tag){
	if(value.files && value.files[0]){
		var reader = new FileReader();
		reader.onload = function (e){
			$(tag).attr('src', e.target.result);
		}
		reader.readAsDataURL(value.files[0]);
	}
}

function handleImgFileSelect(e) {
	
	var id = $(this).attr('id');
	var seq = $('.acc-img').index(this)+1
    var files = e.target.files;
    var filesArr = Array.prototype.slice.call(files);
	
// 	console.log( ' 요리', this)
	
	if( !filesArr[0].type.match("image.*")  ){
         alert("확장자는 이미지 확장자만 가능합니다.");
         return;
	}
	readURL(this, '#rec_de_pic'+ seq);
	$('#rec_de_pic'+ seq).removeClass('pic');
	$('#rec_de_pic'+ seq).addClass('rec_pic');
	
}

$("#attach-file").change(function(){
	readURL(this, '#loadimg');
});
</script>

</body>
</html>