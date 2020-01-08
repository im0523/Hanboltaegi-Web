<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<style>
.content_nick { width: auto; height: 20px; float: left; padding: 0 10px;}
.content_content { width: 850px; height: auto; text-align: left; padding: 0 10px; float: left;}
.btn { width: 140px; float: left;}
.comment_w_pic { object-fit: cover;}
</style>

<c:forEach items="${list }" var="vo" varStatus="status">
${status.index eq 0 ? '<div style="margin-top:10px;"/>' :'' }

<div class="comment_box" style="margin-top: 10px; border: 1px solid #cfd1c2; border-radius: 5px;">
	<div class="comment_w_pic" style="margin-left: 20px; padding-top: 8px;"><img class="comment_w_pic" src="${vo.user_pic }"/></div>
		<div class="comment_content">
			<div style="width: 900px; height: 20px; padding: 10px 0px 10px 20px">
		 		<div class="content_nick" style="color: green; font-weight: bold;">${vo.nickname }</div>
		 		<div class="content_writedate" style="width: 200px; height: 20px; float: left; margin:0">[ ${vo.writedate } ]</div>
			<!-- 로그인한 사용자가 작성한 댓글은 수정/삭제 가능  -->
			<c:if test="${vo.nickname eq login_info.nickname }">
				<div class="btn">
					<a class="btn-fill" onclick="comment_modify(${vo.no})" id="comment_modify${vo.no }">수정</a>
					<a class="btn-fill" onclick="comment_delete(${vo.no})" id="comment_delete${vo.no }">삭제</a>
				</div>
			</c:if>
			</div>
<%-- 			<div class="content_content">${vo.content }</div> --%>
<div class="content_content" id="original${vo.no}">${fn:replace(fn:replace(vo.content, lf, '<br>'), crlf, '<br>') }</div>
<div id="modify${vo.no }" ></div>
		</div>
</div>
</c:forEach>
<script>
//comment delete
function comment_delete(no){
	if( $('#comment_delete' + no).text() == '취소'){
		display(no,'d');
	}else{
		if( confirm('정말 삭제하시겠습니까?') ){
			$.ajax({
				url: 'recipe/comment/delete/'+no,
				success: function(){
					comment_list();
				},error: function(req,text){
					alert(text+": "+req.status);
				}
			});
		}
	}
}

  function comment_modify(no){
	if( $('#comment_modify'+no).text() == '수정' ){
		var tag = "<textarea id='comment_modify-" + no + "' style='width:800px; height:40px; margin: 3px 0 0 9px;'>"
				+ $('#original'+no).html().replace(/<br>/g, '\n')
				+ "</textarea>";
		$('#modify'+no).html(tag);
		display(no, 'm');
	}else {
		var comment = new Object();
		comment.no = no;
		comment.content = $('#comment_modify-'+no).val();
// 		alert(comment.content);
		$.ajax({
			url: 'recipe/comment/update',
			type: 'post',
			data: JSON.stringify(comment),
			contentType: 'application/json; charset=utf-8',
			success: function(data){
				comment_list();
			},error: function(req, text){
				alert(text+": "+req.status);
			} 
		});
	}
} 
 


function display(no, mode){
	//변경상태 : 저장/취소 <-> 수정/삭제
	$('#comment_modify'+no).text( mode=='d' ? '수정' : '저장' );
	$('#comment_delete'+no).text( mode=='d' ? '삭제' : '취소' );
	
	//변경상태 : modify 보이고, 원래글 안보이게 <-> modify 안보이고, 원래글 보이게
	$('#modify'+no).css('display', mode=='d' ? 'none' : 'block');
	$('#original'+no).css('display', mode=='d' ? 'block' : 'none');
	
}
</script>