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
.btn-img { width: 40px; height: 35px; float: left;}
.imagepath { height: 320px;}
.material_detail0, .material_detail2, .material_detail4, .material_detail6, .material_detail8, .material_detail10, .material_detail12 { margin-left: 160px;}
.material_detail0, .material_detail1, .material_detail2, .material_detail3, .material_detail4, .material_detail5, .material_detail6, .material_detail7, .material_detail8, .material_detail9, .material_detail10, .material_detail11, material_detail12{ width: 450px; height: 50px; float: left;}
.material_content input { width:110px; height: 30px; }
.seq_content_de { width: 110ppx; height: auto;}
select { width: 100px; height: 30px;}
/* .pic { width:120px; height:105px; border-radius: 10px; } */
.pic { width:100px; height:100px; padding: 5px 0 0 5px; }
#delete-file { display: none;}
#loadimg{ width: 250px; height: 250px; cursor:pointer; border: 1px solid #cfd1c2; margin-top: 30px;}
</style>
</head>
<body>
<form id="update" method="post" action="update.re" enctype="multipart/form-data">
<div class="container recipe_regi">
    <div class="regi_title">레시피 수정</div>
</div>
	<div class="regi_content">
    <div class="header_content">
     <div class="imagepath" style="width: 370px;">
     	<img src="img/delete.png" id="delete-file" style="width: 30px; height: 30px; float: right;"/>
     	<label>
            <img id="mainPhotoHolder" src="${vo.imagepath }" style="width: 250px; height: 250px; cursor:pointer">
     		<img id="loadimg" src="#" hidden=""/>
     		<input type="file" name="file_imagepath" hidden="" id="attach-file" accept="jpg, jpeg, png, gif"/>
     	</label>
      </div>
      
    	<div class="cate_line"><p class="cate1">레시피 제목</p>
    		<input type="text" name="title"value="${vo.title }" maxlength="20" class="form-control" placeholder="예) 갈비탕 만들기" style="width:610px;"></div>
    	<div class="cate_line"><p class="cate1">요리소개</p>
    		<textarea name="subtitle" class="form-control" maxlength="40" placeholder="이 레시피의 탄생배경을 적어주세요. 예) 남편의 생일을 맞아 소고기 미역국을 끓여봤어요. 어머니로부터 배운 미역국 레시피를 남편의 입맛에 맞게 고안했습니다." style="height:100px; width:620px; resize:none;">${vo.subtitle }</textarea></div>
	
	<div class="cate_line"><p class="cate1">카테고리</p>
		<select name="cat1" id="cat1"  text="종류별">
		<c:choose>
			<c:when test="${empty vo.cat1 }">
				<option value="" >종류별</option></c:when>
			<c:otherwise>
				<option value="${vo.cat1 }" >${vo.cat1 }</option>
			</c:otherwise>
		</c:choose>
			<option value="메인반찬">메인반찬</option>
			<option value="국/탕">국/탕</option>
			<option value="밥/죽/떡">밥/죽/떡</option>
			<option value="디저트">디저트</option>
			<option value="양념/소스">양념/소스</option>
			<option value="면류">면류</option>
			<option value="기타">기타</option>
		</select>
		<select name="cat2" id="cat2"  text="상황별">
		<c:choose>
			<c:when test="${empty vo.cat2 }">
				<option value="" >상황별</option></c:when>
			<c:otherwise>
				<option value="${vo.cat2 }" >${vo.cat2 }</option>
			</c:otherwise>
		</c:choose>
			<option value="일상">일상</option>
			<option value="초스피드">초스피드</option>
			<option value="손님접대">손님접대</option>
			<option value="술안주">술안주</option>
			<option value="간식">간식</option>
		</select>
        <select name="cat3" id="cat3"  text="재료별">
        <c:choose>
			<c:when test="${empty vo.cat3 }">
				<option value="" >재료별</option></c:when>
			<c:otherwise>
				<option value="${vo.cat3 }" >${vo.cat3 }</option>
			</c:otherwise>
		</c:choose>
			<option value="육류">육류</option>
			<option value="해산물">해산물</option>
			<option value="가공식품">가공식품</option>
		</select>
        <select name="cat4" id="cat4"  text="제철요리">
        <c:choose>
			<c:when test="${empty vo.cat4 }">
				<option value="" >제철요리</option></c:when>
			<c:otherwise>
				<option value="${vo.cat4 }" >${vo.cat4 }</option>
			</c:otherwise>
		</c:choose>
			<option value="${vo.cat4 }" >${vo.cat4 }</option>
			<option value="봄">봄</option>
			<option value=여름>여름</option>
			<option value="가을">가을</option>
			<option value="겨울">겨울</option>
			<option value="사계절">사계절</option>
		</select>
		</div>

 	<div class="cate_line"><p class="cate1">요리정보</p>
        <select name="portion" id="cok_portion"  text="인원">
        <c:choose>
			<c:when test="${empty vo.portion }">
				<option value="" >인원</option></c:when>
			<c:otherwise>
				<option value="${vo.portion }" >${vo.portion }</option>
			</c:otherwise>
		</c:choose>
			<option value="1인분">1인분</option>
			<option value="2인분">2인분</option>
			<option value="3인분">3인분</option>
			<option value="4인분">4인분</option>
			<option value="5인분">5인분</option>
			<option value="6인분">6인분이상</option>
		</select>
        <select name="time" id="cok_time"  text="요리시간">
        <c:choose>
			<c:when test="${empty vo.time }">
				<option value="" >시간</option></c:when>
			<c:otherwise>
				<option value="${vo.time }" >${vo.time }</option>
			</c:otherwise>
		</c:choose>
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
        <c:choose>
			<c:when test="${empty vo.degree }">
			<option value="" >난이도</option></c:when>
			<c:otherwise>
				<option value="${vo.degree }" >${vo.degree }</option>
			</c:otherwise>
		</c:choose>
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
    		<c:choose>
    			<c:when test="${!empty vo.material_name0 && !empty vo.material_unit0}"><div class="material_detail0">
			    	<input type="text" name="material_name0" class="form-control" placeholder="예) 새우" value="${vo.material_name0 }">
			    	<input type="text" name="material_unit0" class="form-control" placeholder="예) 10마리" value="${vo.material_unit0 }"/></div></c:when>
		    	<c:otherwise><div class="material_detail0">
			    	<input type="text" name="material_name0" class="form-control" placeholder="예) 새우">
			    	<input type="text" name="material_unit0" class="form-control" placeholder="예) 10마리"/></div></c:otherwise>
    		</c:choose>
    		<c:choose>
    			<c:when test="${!empty vo.material_name1 && !empty vo.material_unit1}"><div class="material_detail1">
			    	<input type="text" name="material_name1" class="form-control" placeholder="예) 새우" value="${vo.material_name1 }">
			    	<input type="text" name="material_unit1" class="form-control" placeholder="예) 10마리" value="${vo.material_unit1 }"/></div></c:when>
		    	<c:otherwise><div class="material_detail1">
			    	<input type="text" name="material_name1" class="form-control" placeholder="예) 새우">
			    	<input type="text" name="material_unit1" class="form-control" placeholder="예) 10마리"/></div></c:otherwise>
    		</c:choose>
			<c:if test="${!empty vo.material_name2 && !empty vo.material_unit2}"><div class="material_detail2">
	    		<input type="text" name="material_name2" class="form-control" placeholder="예) 새우" value="${vo.material_name2 }">
	    		<input type="text" name="material_unit2" class="form-control" placeholder="예) 10마리" value="${vo.material_unit2 }"/></div> </c:if>
			<c:if test="${!empty vo.material_name3 && !empty vo.material_unit3}"><div class="material_detail3">
	    		<input type="text" name="material_name3" class="form-control" placeholder="예) 새우" value="${vo.material_name3 }">
	    		<input type="text" name="material_unit3" class="form-control" placeholder="예) 10마리" value="${vo.material_unit3 }"/></div> </c:if>
			<c:if test="${!empty vo.material_name4 && !empty vo.material_unit4}"><div class="material_detail4">
	    		<input type="text" name="material_name4" class="form-control" placeholder="예) 새우" value="${vo.material_name4 }">
	    		<input type="text" name="material_unit4" class="form-control" placeholder="예) 10마리" value="${vo.material_unit4 }"/></div> </c:if>
			<c:if test="${!empty vo.material_name5 && !empty vo.material_unit5}"><div class="material_detail5">
	    		<input type="text" name="material_name5" class="form-control" placeholder="예) 새우" value="${vo.material_name5 }">
	    		<input type="text" name="material_unit5" class="form-control" placeholder="예) 10마리" value="${vo.material_unit5 }"/></div> </c:if>
			<c:if test="${!empty vo.material_name6 && !empty vo.material_unit6}"><div class="material_detail6">
	    		<input type="text" name="material_name6" class="form-control" placeholder="예) 새우" value="${vo.material_name6 }">
	    		<input type="text" name="material_unit6" class="form-control" placeholder="예) 10마리" value="${vo.material_unit6 }"/></div> </c:if>
			<c:if test="${!empty vo.material_name7 && !empty vo.material_unit7}"><div class="material_detail7">
	    		<input type="text" name="material_name7" class="form-control" placeholder="예) 새우" value="${vo.material_name7 }">
	    		<input type="text" name="material_unit7" class="form-control" placeholder="예) 10마리" value="${vo.material_unit7 }"/></div> </c:if>
			<c:if test="${!empty vo.material_name8 && !empty vo.material_unit8}"><div class="material_detail8">
	    		<input type="text" name="material_name8" class="form-control" placeholder="예) 새우" value="${vo.material_name8 }">
	    		<input type="text" name="material_unit8" class="form-control" placeholder="예) 10마리" value="${vo.material_unit8 }"/></div> </c:if>
			<c:if test="${!empty vo.material_name9 && !empty vo.material_unit9}"><div class="material_detail9">
	    		<input type="text" name=material_name9 class="form-control" placeholder="예) 새우" value="${vo.material_name9 }">
	    		<input type="text" name="material_unit9" class="form-control" placeholder="예) 10마리" value="${vo.material_unit9 }"/></div> </c:if>
			<c:if test="${!empty vo.material_name10 && !empty vo.material_unit10}"><div class="material_detail10">
	    		<input type="text" name="material_name10" class="form-control" placeholder="예) 새우" value="${vo.material_name10 }">
	    		<input type="text" name="material_unit10" class="form-control" placeholder="예) 10마리" value="${vo.material_unit10 }"/></div> </c:if>
			<c:if test="${!empty vo.material_name11 && !empty vo.material_unit11}"><div class="material_detail11">
	    		<input type="text" name="material_name11" class="form-control" placeholder="예) 새우" value="${vo.material_name11 }">
	    		<input type="text" name="material_unit11" class="form-control" placeholder="예) 10마리" value="${vo.material_unit11 }"/></div> </c:if>
			<c:if test="${!empty vo.material_name12 && !empty vo.material_unit12}"><div class="material_detail12">
	    		<input type="text" name="material_name12" class="form-control" placeholder="예) 새우" value="${vo.material_name12 }">
	    		<input type="text" name="material_unit12" class="form-control" placeholder="예) 10마리" value="${vo.material_unit12 }"/></div> </c:if>
	           	<a type="button"  id="btn-mat"><img onclick="addMaterial()" src="img/add.png" class="btn-mat-add" style="float:right;"/></a>
   		</div>
    </div>
    
    <div class="seq_content">
    	<p>요리순서</p><br>
    	<div class="seq_content_de">
    		<div class="recipe-detail">
    		<div class="rec_text">
    			<c:choose><c:when  test="${!empty vo.text1}">
		    			<textarea name="text1" class="form-control step_cont" placeholder="예) 소고기는 기름기를 떼어내고 적당한 크기로 썰어주세요." style="height:100px; width:620px; resize:none;">${vo.text1 }</textarea></c:when>
    				<c:otherwise><textarea name="text1" class="form-control step_cont" placeholder="예) 소고기는 기름기를 떼어내고 적당한 크기로 썰어주세요." style="height:100px; width:620px; resize:none;"></textarea></c:otherwise></c:choose>
    		</div>
		         <div id="seq_img">
		         <c:choose><c:when test="${!empty vo.image1 }">
		         	<label><img class="pic" id="rec_de_pic1" src="${vo.image1}" style="width:120px; height:105px; border-radius: 10px; padding: 0; cursor:pointer"/>
				     		<input class="acc-img" type="file" name="image" id="image1" hidden="" accept="jpg, jpeg, png, gif"/>
				     		<img style="display:none; width:120px; height: 105px; cursor: pointer;" id="img1" /></label></c:when>
		         <c:otherwise>
			     	<label><img class="pic" id="rec_de_pic1" src="img/image_add.png" style="cursor:pointer">
				     		<input class="acc-img" type="file" name="image" id="image1" hidden="" accept="jpg, jpeg, png, gif"/>
				     		<img style="display:none; width:120px; height: 105px; cursor: pointer;" id="img1" /></label></c:otherwise>
		         </c:choose>
   				</div>
  			</div>
    		<div class="recipe-detail">
    		<div class="rec_text">
    			<c:choose><c:when  test="${!empty vo.text2}">
		    			<textarea name="text2" class="form-control step_cont" placeholder="예) 소고기는 기름기를 떼어내고 적당한 크기로 썰어주세요." style="height:100px; width:620px; resize:none;">${vo.text2 }</textarea></c:when>
    				<c:otherwise><textarea name="text2" class="form-control step_cont" placeholder="예) 소고기는 기름기를 떼어내고 적당한 크기로 썰어주세요." style="height:100px; width:620px; resize:none;"></textarea></c:otherwise></c:choose>
    		</div>
		         <div id="seq_img">
		         <c:choose><c:when test="${!empty vo.image2 }">
		         	<label><img class="pic" id="rec_de_pic2" src="${vo.image2}" style="width:120px; height:105px; border-radius: 10px; padding: 0; cursor:pointer"/>
				     		<img style="display:none; width:120px; height: 105px; cursor: pointer;" id="img2" />
				     		<input class="acc-img" type="file" name="image" id="image2" hidden="" accept="jpg, jpeg, png, gif"/></label></c:when>
		         <c:otherwise>
			     	<label><img class="pic" id="rec_de_pic2" src="img/image_add.png" style="cursor:pointer">
				     		<img style="display:none; width:120px; height: 105px; cursor: pointer;" id="img2" />
				     		<input class="acc-img" type="file" name="image" id="image2" hidden="" accept="jpg, jpeg, png, gif"/></label></c:otherwise>
		         </c:choose>
   				</div>
  			</div>
    		<div class="recipe-detail">
    		<div class="rec_text">
    			<c:choose><c:when  test="${!empty vo.text3}">
		    			<textarea name="text3" class="form-control step_cont" placeholder="예) 소고기는 기름기를 떼어내고 적당한 크기로 썰어주세요." style="height:100px; width:620px; resize:none;">${vo.text3 }</textarea></c:when>
    				<c:otherwise><textarea name="text3" class="form-control step_cont" placeholder="예) 소고기는 기름기를 떼어내고 적당한 크기로 썰어주세요." style="height:100px; width:620px; resize:none;"></textarea></c:otherwise></c:choose>
    		</div>
		         <div id="seq_img">
		         <c:choose><c:when test="${!empty vo.image3 }">
		         	<label><img class="pic" id="rec_de_pic3" src="${vo.image3}" style="width:120px; height:105px; border-radius: 10px; padding: 0; cursor:pointer"/>
				     		<img style="display:none; width:120px; height: 105px; cursor: pointer;" id="img3" />
				     		<input class="acc-img" type="file" name="image" id="image3" hidden="" accept="jpg, jpeg, png, gif"/></label></c:when>
		         <c:otherwise>
			     	<label><img class="pic" id="rec_de_pic3" src="img/image_add.png" style="cursor:pointer">
				     		<img style="display:none; width:120px; height: 105px; cursor: pointer;" id="img3" />
				     		<input class="acc-img" type="file" name="image" id="image3" hidden="" accept="jpg, jpeg, png, gif"/></label></c:otherwise>
		         </c:choose>
   				</div>
  			</div>
   			<c:if test="${!empty vo.text4 && !empty vo.image4}">
    			<div class="recipe-detail">
    			<div class="rec_text">
	    			<textarea name="text4" class="form-control step_cont" placeholder="예) 소고기는 기름기를 떼어내고 적당한 크기로 썰어주세요." style="height:100px; width:620px; resize:none;">${vo.text4 }</textarea>
    			</div>
		         <div id="seq_img">
		         	<label><img class="pic" id="rec_de_pic4" src="${vo.image4}" style="width:120px; height:105px; border-radius: 10px; padding: 0; cursor:pointer"/>
				     		<img style="display:none; width:120px; height: 105px; cursor: pointer;" id="img4" />
				     		<input class="acc-img" type="file" name="image" id="image4" hidden="" accept="jpg, jpeg, png, gif"/></label></div>
  				</div>
    		</c:if>
   			<c:if test="${!empty vo.text5 && !empty vo.image5}">
    			<div class="recipe-detail">
    			<div class="rec_text">
	    			<textarea name="text5" class="form-control step_cont" placeholder="예) 소고기는 기름기를 떼어내고 적당한 크기로 썰어주세요." style="height:100px; width:620px; resize:none;">${vo.text5 }</textarea>
    			</div>
		         <div id="seq_img">
		         	<label><img class="pic" id="rec_de_pic5" src="${vo.image5}" style="width:120px; height:105px; border-radius: 10px; padding: 0; cursor:pointer"/>
				     		<img style="display:none; width:120px; height: 105px; cursor: pointer;" id="img5" />
				     		<input class="acc-img" type="file" name="image" id="image5" hidden="" accept="jpg, jpeg, png, gif"/></label></div>
  				</div>
    		</c:if>
   			<c:if test="${!empty vo.text6 && !empty vo.image6}">
    			<div class="recipe-detail">
    			<div class="rec_text">
	    			<textarea name="text6" class="form-control step_cont" placeholder="예) 소고기는 기름기를 떼어내고 적당한 크기로 썰어주세요." style="height:100px; width:620px; resize:none;">${vo.text6 }</textarea>
    			</div>
		         <div id="seq_img">
		         	<label><img class="pic" id="rec_de_pic6" src="${vo.image6}" style="width:120px; height:105px; border-radius: 10px; padding: 0; cursor:pointer"/>
				     		<img style="display:none; width:120px; height: 105px; cursor: pointer;" id="img6" />
				     		<input class="acc-img" type="file" name="image" id="image6" hidden="" accept="jpg, jpeg, png, gif"/></label></div>
  				</div>
    		</c:if>
   			<c:if test="${!empty vo.text7 && !empty vo.image7}">
    			<div class="recipe-detail">
    			<div class="rec_text">
	    			<textarea name="text7" class="form-control step_cont" placeholder="예) 소고기는 기름기를 떼어내고 적당한 크기로 썰어주세요." style="height:100px; width:620px; resize:none;">${vo.text7 }</textarea>
    			</div>
		         <div id="seq_img">
		         	<label><img class="pic" id="rec_de_pic7" src="${vo.image7}" style="width:120px; height:105px; border-radius: 10px; padding: 0; cursor:pointer"/>
				     		<img style="display:none; width:120px; height: 105px; cursor: pointer;" id="img7" />
				     		<input class="acc-img" type="file" name="image" id="image7" hidden="" accept="jpg, jpeg, png, gif"/></label></div>
  				</div>
    		</c:if>
   			<c:if test="${!empty vo.text8 && !empty vo.image8}">
    			<div class="recipe-detail">
    			<div class="rec_text">
	    			<textarea name="text8" class="form-control step_cont" placeholder="예) 소고기는 기름기를 떼어내고 적당한 크기로 썰어주세요." style="height:100px; width:620px; resize:none;">${vo.text8 }</textarea>
    			</div>
		         <div id="seq_img">
		         	<label><img class="pic" id="rec_de_pic8" src="${vo.image8}" style="width:120px; height:105px; border-radius: 10px; padding: 0; cursor:pointer"/>
				     		<img style="display:none; width:120px; height: 105px; cursor: pointer;" id="img8" />
				     		<input class="acc-img" type="file" name="image" id="image8" hidden="" accept="jpg, jpeg, png, gif"/></label></div>
  				</div>
    		</c:if>
   			<c:if test="${!empty vo.text9 && !empty vo.image9}">
    			<div class="recipe-detail">
    			<div class="rec_text">
	    			<textarea name="text9" class="form-control step_cont" placeholder="예) 소고기는 기름기를 떼어내고 적당한 크기로 썰어주세요." style="height:100px; width:620px; resize:none;">${vo.text9 }</textarea>
    			</div>
		         <div id="seq_img">
		         	<label><img class="pic" id="rec_de_pic9" src="${vo.image9}" style="width:120px; height:105px; border-radius: 10px; padding: 0; cursor:pointer"/>
				     		<img style="display:none; width:120px; height: 105px; cursor: pointer;" id="img9" />
				     		<input class="acc-img" type="file" name="image" id="image9" hidden="" accept="jpg, jpeg, png, gif"/></label></div>
  				</div>
    		</c:if>
   			<c:if test="${!empty vo.text10 && !empty vo.image10}">
    			<div class="recipe-detail">
    			<div class="rec_text">
	    			<textarea name="text4" class="form-control step_cont" placeholder="예) 소고기는 기름기를 떼어내고 적당한 크기로 썰어주세요." style="height:100px; width:620px; resize:none;">${vo.text4 }</textarea>
    			</div>
		         <div id="seq_img">
		         	<label><img class="pic" id="rec_de_pic10" src="${vo.image10}" style="width:120px; height:105px; border-radius: 10px; padding: 0; cursor:pointer"/>
				     		<img style="display:none; width:120px; height: 105px; cursor: pointer;" id="img10" />
				     		<input class="acc-img" type="file" name="image" id="image10" hidden="" accept="jpg, jpeg, png, gif"/></label></div>
  				</div>
    		</c:if>
    		</div>
	    		<a type="button" onclick="addSequence()" id="btn-mat"><img src="img/add.png" class="btn-mat-add"/></a>
    	</div>

	</div>
	  	<div class="regi_btn">
	   		<button type="button" onclick="$('#update').attr('action', 'update.re'); $('#update').submit()" class="btn-fill">수정</button>
		    <button type="button" onclick="history.back();" class="btn-empty">취소</button>
	    </div>
<input type="hidden" name="delete" value="0" />
<input type="hidden" name="recipe_id" value="${vo.recipe_id }"/>
</form>
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