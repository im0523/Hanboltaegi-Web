<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"
	prefix="c" %>    
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions"
	prefix="fn" %>    
<c:forEach items="${list}" var="vo" varStatus="status">
${status.index eq 0 ? '<div style="margin-top:10px;"/>' :''}
<div style="border:1px solid #cccccc; border-radius: 5px; margin-bottom: 10px; padding:10px;">
<div>${vo.name} [ ${vo.writedate} ]  
<!-- 로그인한 사용자가 작성한 댓글은 수정/삭제 가능 -->
<c:if test="${vo.userid eq login_info.id}">
<span style="float:right; margin-top: 3px;">
	<a onclick="go_modify_save(${vo.id})"
	class="btn-fill" id="btn-modify-save-${vo.id}">수정</a>
	<a	onclick="go_delete_cancel(${vo.id})" 
	class="btn-fill" id="btn-delete-cancel-${vo.id}">삭제</a>
</span>
</c:if>
</div>
<div style="margin-top: 5px;" id="original-${vo.id}">${fn:replace(fn:replace(vo.content, lf, '<br>'), crlf, '<br>')}</div>
<div id="modify-${vo.id}" style="display:none;"></div>
</div>

</c:forEach>

<script>
function go_delete_cancel(id){
	//삭제/취소
	if( $('#btn-delete-cancel-'+id).text()=='취소' ){
		display(id,'d');
	}else{
		if( confirm('정말 삭제?') ){
			$.ajax({
				url: 'community/comment/delete/'+id,
				success: function(){
					comment_list();
				},error: function(req, text){
					alert(text+": "+req.status);
				}
			});
		}		
	}
}
function go_modify_save(id){
	if( $('#btn-modify-save-'+id).text()=='수정' ){
		var tag = "<textarea id='comment-modify-"+id+"' style='margin-top:5px; width:99%; height:40px;'>"
				+ $('#original-'+id).html().replace(/<br>/g, '\n')
				+ "</textarea>";
		$('#modify-'+ id).html(tag);
		display(id, 'm');
	}else{
		var comment = new Object();
		comment.id = id;
		comment.content = $('#comment-modify-'+id).val();
		$.ajax({
			url: 'community/comment/update',
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
function display(id, mode){
	//변경상태: 저장/취소 <-> 수정/삭제
	$('#btn-modify-save-'+id).text(
			mode=='d' ? '수정': '저장');
	$('#btn-delete-cancel-'+id).text(
			mode=='d' ? '삭제': '취소');
	//변경상태: modify보이고, 원래글 안보이게
	//      <-> modify안보이고, 원래글 보이게
	$('#modify-'+id).css('display', 
			mode=='d' ? 'none' : 'block');
	$('#original-'+id).css('display',
			mode=='d' ? 'block' : 'none');
}
</script>









