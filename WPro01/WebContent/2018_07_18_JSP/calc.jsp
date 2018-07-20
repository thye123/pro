<%@ page import="servletTest.Calc" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
	Calc calc = new Calc();
	
%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
		<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
		<style>

		</style>		
		<script src="//code.jquery.com/jquery-1.12.4.js"></script>
		<script src="//code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
		<script>
			$(function(){
				var sel = document.getElementById("calc");
				sel.addEventListener('change', function() {
					var go = document.getElementById("go");
					go.submit();
				});
				
				var 
			});
		</script>
	</head>
	<body>
		<form method="GET" action="http://localhost:9090/WPro01/calc" id="go">
			<input type="text" name="v1">
			<input type="text" name="v2">
			<select id="calc" name="calc">
				<option value=""></option>
				<option value="+">+</option>
				<option value="-">-</option>
				<option value="*">*</option>
				<option value="/">/</option>
			</select>
		</form>
		<input type="text" id="v">		
	</body>
</html>