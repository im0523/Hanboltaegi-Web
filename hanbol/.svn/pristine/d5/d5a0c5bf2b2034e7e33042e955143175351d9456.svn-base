<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/include/header.jsp" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
.menu3 { color: white; }
.all_content_de { margin-bottom: 70px;}
.detail_header { width: 1180px; height: auto; border: 1px solid #cfd1c2; margin: 8px;}
.imagepath-de { height: 380px; }
.detail_w_box { width: 100px; height: 130px; margin: 0 auto; position: relative; top: -40px;}
.detail_w_pic { width: 80px; height: 80px; margin: 0 auto; border-radius: 50px;}
.detail_writer { width :100px; height: 50px; margin: 0 auto; line-height: 50px;}
.readcnt_writedate { width: 500px; height: 30px; margin: 0 auto; line-height: 30px; position: relative; top: -40px;}
.readcnt { width: 130px; height: 30px; line-height: 30px; float: left; padding-left: 120px;}
.writedate {height: 30px; float: right;}
.detail_dq1, .detail_dq2 { width: 30px; height: 30px; margin: 0; padding: 0 10px;}
.subtitle_line { width : 730px; height: auto; margin: 30px auto; color: #7c7c7d;}
.detail_line1 { width: 370px; height: 100px; margin: 20px auto;}
.detail_line1 img { width: 50px; height: 50px;}
.detail_line2 { float: left; width: 100px; padding: 20px 0;}
h3 { font-size: 30px; height: 60px; margin: 0 0 0 30px;}
.material { width: 1180px; height: 180px; border: 1px solid #cfd1c2; margin: 8px; background-color: #f1ffd4;}
.material p, .sequence p { width: 160px; height: 50px; line-height: 50px; font-size: 20px; font-weight: bold;}
.material div { width: 1100px; height: auto; margin: 0 auto 40px auto; text-align: left; }
.sequence { width: 1180px; height: auto; border: 1px solid #cfd1c2; margin: 8px; padding-bottom: 50px;}
.seq_recipe { width: 804px; height: 200px; margin: 20px auto;}
.image, .text { width: 200px; height: 200px;  float: left;}
.text { height: 190px; width: 550px; margin-left: 30px; text-align: left; padding: 5px 10px;}

.comment-list{ width: 1180px; height: auto; border: 1px solid #cfd1c2; margin: 8px; padding-bottom: 20px;}
.comment-list p{ font-size: 20px; float: left; font-weight: bold; margin: 20px 0 50px 50px;}
.comment_box { width: 1000px; height: 90px;  margin: 70px 0 0 100px; padding-bottom: 10px;}
.comment_w_pic { width: 60px; height: 60px; margin: 0 auto; border-radius: 30px; float: left; padding-top: 10px; }
.comment_box textarea { width:800px; height:76px; resize:none; float: left; margin: 9px 5px 0 40px;}
.detail_w_pic { object-fit: cover;}
</style>
<script type="text/javascript">
$(function(){
	comment_list();
});
</script>
</head>
<body>
<input type="hidden" id="detail-id" data-name="recipe_id" value="${vo.recipe_id}"/>

<div class="all_content_de" style="margin-top: 50px;">
  <div class="detail_header" >
     <div class="imagepath-de">
            <img id="mainPhotoHolder" src="${vo.imagepath }" style="width: 350px; height: 350px; object-fit: cover;">
      </div>		
		<div class="detail_w_box">
			<div class="detail_w_pic"><img class="detail_w_pic" src="${vo.user_pic }"/></div>
	    	<div class="detail_writer">${vo.nickname }</div>
		</div>
		<div class="readcnt_writedate">
			<div class="readcnt">
				<img style="float: left; vertical-align: top;" src="img/icon_rank/icon_view3.png"/><span style="float: left; font-size: 13px;">&nbsp;${vo.readcnt }</span>
			</div>
			<div class="writedate">
				<img src="img/writedate.PNG" style="width: 24px; height: 24px;"/><span style="vertical-align: super; font-size: 13px;">&nbsp;${vo.writedate }</span>
			</div>
		</div>
    	<div class="title_line">
            <h3>${vo.title }</h3>
         <div class="subtitle_line">
                <span class="detail_dq1"><img src="http://recipe1.ezmember.co.kr/img/mobile/icon_marks1.png"></span>
               		${fn: replace(vo.subtitle, crlf, '<br>') }
                <span class="detail_dq2"><img src="http://recipe1.ezmember.co.kr/img/mobile/icon_marks2.png"></span>
        </div>
        <div class="detail_line1">
        	<div class="detail_line2">
	        	<img src="img/portion.png" />
				<div>${vo.portion }</div>
        	</div>
        	<div class="detail_line2" style="margin-left: 40px">
	        	<img src="img/time.png"/>
				<div>${vo.time }</div>
        	</div>
        	<div class="detail_line2" style="float: right;">
        		<img src="img/degree.png" />
			    <div>${vo.degree }</div>     
			</div>      
		</div>
        
        <div style="width: 800px; margin: 40px auto 30px auto; border: 1px solid #cfd1c2"></div>
         <div class="modal" style="width: 220px; height: 100px; margin: 0 auto;">
        	<label style="cursor: pointer;">
        		<div class="modal_good" style="float: left;" onclick="good()">
	        	<img src="img/heart4.png" style="width: 35px; height: 35px; " />
	        	<h5 style="margin: 0; position: relative; top: -32px; font-size: 10px;">${vo.good }</h5>
				<div style="position: relative; top: -23px;">좋아요</div>
        		</div>
        	</label>
      		<label style="cursor: pointer;">
	        	<div class="modal_scrap" style="float: right;" onclick="scrap()" >
		        	<img src="img/scrap.png" style="width: 30px; height: 30px;" />
					<div>스크랩</div>
	        	</div>
      		</label>
        </div>
	</div>
</div>
    <div class="material">
    	<p>[  재료  ]</p>
    	<div style="height: auto;">
    	<c:choose><c:when test="${!empty vo.material_name1 && !empty vo.material_unit1}"><span style="float:left;">${vo.material_name0 } ${vo.material_unit0 },&nbsp;&nbsp;</span></c:when>
	    	<c:otherwise><span style="float:left;">${vo.material_name0 } ${vo.material_unit0 }</span></c:otherwise></c:choose>
    	<c:choose><c:when test="${!empty vo.material_name2 && !empty vo.material_unit2}"><span style="float:left;">${vo.material_name1 } ${vo.material_unit1 },&nbsp;&nbsp;</span></c:when>
	    	<c:otherwise><span style="float:left;">${vo.material_name1 } ${vo.material_unit1 }</span></c:otherwise></c:choose>
    	<c:choose><c:when test="${!empty vo.material_name3 && !empty vo.material_unit3}"><span style="float:left;">${vo.material_name2 } ${vo.material_unit2 },&nbsp;&nbsp;</span></c:when>
	    	<c:otherwise><span style="float:left;">${vo.material_name2 } ${vo.material_unit2 }</span></c:otherwise></c:choose>
    	<c:choose><c:when test="${!empty vo.material_name4 && !empty vo.material_unit4}"><span style="float:left;">${vo.material_name3 } ${vo.material_unit3 },&nbsp;&nbsp;</span></c:when>
	    	<c:otherwise><span style="float:left;">${vo.material_name3 } ${vo.material_unit3 }</span></c:otherwise></c:choose>
    	<c:choose><c:when test="${!empty vo.material_name5 && !empty vo.material_unit5}"><span style="float:left;">${vo.material_name4 } ${vo.material_unit4 },&nbsp;&nbsp;</span></c:when>
	    	<c:otherwise><span style="float:left;">${vo.material_name4 } ${vo.material_unit4 }</span></c:otherwise></c:choose>
    	<c:choose><c:when test="${!empty vo.material_name6 && !empty vo.material_unit6}"><span style="float:left;">${vo.material_name5 } ${vo.material_unit5 },&nbsp;&nbsp;</span></c:when>
	    	<c:otherwise><span style="float:left;">${vo.material_name5 } ${vo.material_unit5 }</span></c:otherwise></c:choose>
    	<c:choose><c:when test="${!empty vo.material_name7 && !empty vo.material_unit7}"><span style="float:left;">${vo.material_name6 } ${vo.material_unit6 },&nbsp;&nbsp;</span></c:when>
	    	<c:otherwise><span style="float:left;">${vo.material_name6 } ${vo.material_unit6 }</span></c:otherwise></c:choose>
    	<c:choose><c:when test="${!empty vo.material_name8 && !empty vo.material_unit8}"><span style="float:left;">${vo.material_name7 } ${vo.material_unit7 },&nbsp;&nbsp;</span></c:when>
	    	<c:otherwise><span style="float:left;">${vo.material_name7 } ${vo.material_unit7 }</span></c:otherwise></c:choose>
    	<c:choose><c:when test="${!empty vo.material_name9 && !empty vo.material_unit9}"><span style="float:left;">${vo.material_name8 } ${vo.material_unit8 },&nbsp;&nbsp;</span></c:when>
	    	<c:otherwise><span style="float:left;">${vo.material_name8 } ${vo.material_unit8 }</span></c:otherwise></c:choose>
    	<c:choose><c:when test="${!empty vo.material_name10 && !empty vo.material_unit10}"><span style="float:left;">${vo.material_name9 } ${vo.material_unit9 },&nbsp;&nbsp;</span></c:when>
	    	<c:otherwise><span style="float:left;">${vo.material_name9 } ${vo.material_unit9 }</span></c:otherwise></c:choose>
    	<c:choose><c:when test="${!empty vo.material_name11 && !empty vo.material_unit11}"><span style="float:left;">${vo.material_name10 } ${vo.material_unit10 },&nbsp;&nbsp;</span></c:when>
	    	<c:otherwise><span style="float:left;">${vo.material_name10 } ${vo.material_unit10 }</span></c:otherwise></c:choose>
    	<c:choose><c:when test="${!empty vo.material_name12 && !empty vo.material_unit12}"><span style="float:left;">${vo.material_name11 } ${vo.material_unit11 },&nbsp;&nbsp;</span></c:when>
	    	<c:otherwise><span style="float:left;">${vo.material_name11 } ${vo.material_unit11 }</span></c:otherwise></c:choose>
	    	<span style="float:left;">${vo.material_name12 } ${vo.material_unit12 }</span>
    	</div>
    </div>

	<div class="sequence">
		<p style="margin: 20px 0 50px 20px;">[  조리순서  ]</p>
		<c:if test="${!empty vo.image1 && !empty vo.text1 }"><div class="seq_recipe"><div class="image"><img class="image"src="${vo.image1}"/></div><div class="text">${fn: replace(vo.text1, crlf, '<br>') }</div></div></c:if>
		<c:if test="${!empty vo.image2 && !empty vo.text2 }"><div class="seq_recipe"><div class="image"><img class="image"src="${vo.image2}"/></div><div class="text">${fn: replace(vo.text2, crlf, '<br>') }</div></div></c:if>
		<c:if test="${!empty vo.image3 && !empty vo.text3 }"><div class="seq_recipe"><div class="image"><img class="image"src="${vo.image3}"/></div><div class="text">${fn: replace(vo.text3, crlf, '<br>') }</div></div></c:if>
		<c:if test="${!empty vo.image4 && !empty vo.text4 }"><div class="seq_recipe"><div class="image"><img class="image"src="${vo.image4}"/></div><div class="text">${fn: replace(vo.text4, crlf, '<br>') }</div></div></c:if>
		<c:if test="${!empty vo.image5 && !empty vo.text5 }"><div class="seq_recipe"><div class="image"><img class="image"src="${vo.image5}"/></div><div class="text">${fn: replace(vo.text5, crlf, '<br>') }</div></div></c:if>
		<c:if test="${!empty vo.image6 && !empty vo.text6 }"><div class="seq_recipe"><div class="image"><img class="image"src="${vo.image6}"/></div><div class="text">${fn: replace(vo.text6, crlf, '<br>') }</div></div></c:if>
		<c:if test="${!empty vo.image7 && !empty vo.text7 }"><div class="seq_recipe"><div class="image"><img class="image"src="${vo.image7}"/></div><div class="text">${fn: replace(vo.text7, crlf, '<br>') }</div></div></c:if>
		<c:if test="${!empty vo.image8 && !empty vo.text8 }"><div class="seq_recipe"><div class="image"><img class="image"src="${vo.image8}"/></div><div class="text">${fn: replace(vo.text8, crlf, '<br>') }</div></div></c:if>
		<c:if test="${!empty vo.image9 && !empty vo.text9 }"><div class="seq_recipe"><div class="image"><img class="image"src="${vo.image9}"/></div><div class="text">${fn: replace(vo.text9, crlf, '<br>') }</div></div></c:if>
		<c:if test="${!empty vo.image10 && !empty vo.text10 }"><div class="seq_recipe"><div class="image"><img class="image"src="${vo.image10}"/></div><div class="text">${fn: replace(vo.text10, crlf, '<br>') }</div></div></c:if>
	</div>	

    <div class="comment-list">
    	<p>[  댓글  ]</p>
    	<div class="comment_box">
   			<c:choose>
   				<c:when test="${!empty login_info }">
	    		<div class="comment_w_pic" style="float: left;">
	    				<img class="comment_w_pic" src="${login_info.user_pic}"/></div></c:when>
    			<c:otherwise>
    			<div class="comment_w_pic" style="float: left;">
    				<img class="comment_w_pic" src="img/no_image.PNG"/></div>
    			</c:otherwise>
    			</c:choose>
    		<textarea id="comment" ></textarea>
    		<div><a class="btn-fill" onclick="comment_regist()">등록</a></div>
    	</div>
    	<div class="comment-seq">
    		
    	</div>
    </div>

</div>

  	<div class="regi_btn">
<!-- 로그인한 사용자가 작성한 글만 수정/삭제 가능 -->
	<c:if test="${!empty login_info}">
  	<c:if test="${login_info.id eq vo.userid or login_info.id eq 'admin'}">
   		<button type="button" onclick="$('#detail').attr('action', 'modify.re'); $('#detail').submit()" class="btn-fill">수정</button>
   		<button type="button" onclick="if( confirm('정말 삭제하시겠습니까?') ){ location='delete.re?recipe_id=${vo.recipe_id}'}" class="btn-fill">삭제</button>
  	</c:if>
	</c:if>
	    <button type="button" onclick="history.back();" class="btn-empty">목록으로</button>
    </div>
    
    <form id="detail" action="list.re" method="post">
    	<input type="hidden" name="recipe_id" value="${vo.recipe_id}"/>
    	<input type="hidden" name="userid" value="${vo.userid}"/>
    </form>
    
<script type="text/javascript">
function good(){
	if('${empty login_info}' == 'true'){
		alert('좋아요를 누르시려면 로그인하세요');
		return;
	}else{
		$('form').attr('action', 'good.re');
		$('form').submit();
	}
}

function scrap(){
	if('${empty login_info}' == 'true'){
		alert('좋아요를 누르시려면 로그인하세요');
		return;
	}else{
		$('form').attr('action', 'scrap.re');
		$('form').submit();
	}
}

function comment_regist(){
	if('${empty login_info}' == 'true'){
		alert('댓글을 등록하려면 로그인하세요');
		return;
	}
	
	if( $('#comment').val().trim() == '' ){
		alert('댓글을 입력하세요');
		$('#comment').val('');
		$('#comment').focus();
		return;
	}
	
	$.ajax({
		url: 'recipe/comment/insert',
		data: { content: $('#comment').val(), rc_id: ${vo.recipe_id} },
		success: function ( data ){
			if( data ){
				$('#comment').val('');
				comment_list();
			}else{
				alert('댓글 등록 실패!! 다시 작성해주세요.');
			}
		},error: function(req, text){
			alert(text+": "+req.status);
		}
	});
}

function comment_list(){
	$.ajax({
		url: 'recipe/comment/${vo.recipe_id}',
		success: function(data){
			$('.comment-seq').html(data);
		},error: function(req, text){
			alert(text+": "+req.status);
		}
	});
}
</script>
    
</body>
</html>























