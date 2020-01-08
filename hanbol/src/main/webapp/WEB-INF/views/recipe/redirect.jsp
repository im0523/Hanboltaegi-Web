<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<form method="post" action="">
	<input type="text" name="recipe_id" value="${recipe_id }"/>
</form>
<script>
$('form').attr('action', 'detail.re');
$('form').submit();
</script>