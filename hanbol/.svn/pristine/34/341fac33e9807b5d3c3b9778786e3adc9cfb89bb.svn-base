<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/include/header.jsp"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="https://fonts.googleapis.com/css?family=Poor+Story&display=swap" rel="stylesheet">
<style type="text/css">
.menu2 { color: white; }
</style>
</head>
<body>
<div style="width: 99%; position: relative;left: 60px;">
<span class="mem_cont1" >레시피 작성수</span>
<span class="mem_cont3">스크랩 수</span>
<span class="mem_cont7">조회수</span>
<span class="mem_cont2">소식받은수</span>
</div>
	<c:forEach items="${list}" var="vo">
		
		
		<div class="chef_list4_in">
			<div class="list_lump">
				<div class="list_ranking2">
					<p class="list_ranking2_num ">${vo.no}</p>
 				</div>
				<div class="list_mem3">
					<a onclick="location='detail.rk?id=${vo.member_id}'" class="mem_pic"><img style="object-fit:cover;"
						src="${vo.user_pic}"></a>
				</div>
				<div class="list_cont4">
					<b> <a onclick="location='detail.rk?id=${vo.member_id}'"
						id="folFriend_${vo.member_id}" class="info_name_f"> ${vo.nickname} </a>
						<c:if test="${empty login_info}">
						<a class="btn btn-default btn-sm" onclick="go_alert()"
						style="
						color: #333333;
					    background: #fff;
					    border: 1px solid #ccc;
					    border-radius: 3px;
					    display: inline-block;
					    font-weight: 700;
					    text-align: center;
					    white-space: nowrap;
						">
							+소식받기
			
						</a>
						</c:if>
						
						<c:set var="follow"/>
						<c:forEach items="${fol_list}" var="vo2">
						<c:if test="${!empty login_info && vo2.following eq vo.member_id}">
							<c:set var="follow" value="-소식받기해제"/>							
						</c:if>						
						</c:forEach>
						<c:set var="follow" value="${empty follow ? '+소식받기' : follow}"/>
						<c:if test="${!empty login_info}">							
						<a class="btn btn-default btn-sm" onclick="location='follow?id=${vo.member_id}&target_id=${login_info.id}'" 
						style="
						color: #333333;
					    background: #fff;
					    border: 1px solid #ccc;
					    border-radius: 3px;
					    display: inline-block;
					    font-weight: 700;
					    text-align: center;
					    white-space: nowrap;
    					">${follow}</a>
						</c:if>
						<!-- 
						<c:forEach items="${fol_list}" var="vo2">
						<c:if test="${!empty login_info && vo2.following eq vo.member_id}">
						<a class="btn btn-default btn-sm" onclick="location='follow?id=${vo.member_id}&target_id=${login_info.id}'" 
						style="
						color: #333333;
					    background: #fff;
					    border: 1px solid #ccc;
					    border-radius: 3px;
					    display: inline-block;
					    font-weight: 700;
					    text-align: center;
					    white-space: nowrap;
    					">
							-소식받기해제
						</a>
						
						</c:if>
						 
						 <c:if test="${!empty login_info && vo2.following ne vo.member_id}">
						<a class="btn btn-default btn-sm" onclick="location='follow?id=${vo.member_id}&target_id=${login_info.id}'"
						style="
						color: #333333;
					    background: #fff;
					    border: 1px solid #ccc;
					    border-radius: 3px;
					    display: inline-block;
					    font-weight: 700;
					    text-align: center;
					    white-space: nowrap;
    					">
							-소식받기 
						</a>
						
						</c:if>
						</c:forEach>
						 
						 -->
					</b> <span class="mem_cont1">${vo.writer}</span> 
					<span
						class="mem_cont3">${vo.cnt}</span> <span class="mem_cont7">${vo.readcnt}</span>
					<span class="mem_cont2">${vo.following}</span>
				</div>
			</div>
		</div>	
	</c:forEach>
	<script>
	function go_alert(){
		alert('로그인해주세요');
	}
	
	function go_sub(data){
		alert(data + '안냥');
	}
	/*
		function doActFriend(uid) {
			var aa = "${login_info.id}";
		    var act = $("#btnActFriend_"+uid).attr("fact");
		    var mode = (act == "insert") ? "addFriend" : "removeFriend";
		    $.ajax({
		        type: "GET",
		        url: "follow.rk",
		        data: "id="+uid,
		        success: function(result) {
				    alert(uid + ${login_info.id});
		            if(result == 'SUCCESS')
		            {
		                var fact = (act == "insert") ? "delete" : "insert";
		                var fval = (act == "insert") ? "삭제" : "추가";
		                var msg = (act == 'insert') ? '님을 소식받기에 추가했습니다.' : '님을 소식받기에서 해제했습니다.';
		                $("#btnActFriend_"+uid).attr("fact", fact);

	                    if(act == "insert") $("#btnActFriend_"+uid).html('<span class="glyphicon glyphicon-minus"></span>소식받기해제');
	                    else $("#btnActFriend_"+uid).html('<span class="glyphicon glyphicon-plus"></span>소식받기');

		                alert(aa+msg);
		            }
		            else
		            {
		                alert('처리실패. 잠시후 다시 시도해 주세요.');
		            }
		        }
		    });
		}
	*/
	</script>
</body>
</html>