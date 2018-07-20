<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<% 
	request.setCharacterEncoding("UTF-8");
	String uId	 = request.getParameter("uId");
 	String uPass = request.getParameter("uPass");
	String uName = request.getParameter("uName");
	String uMail = request.getParameter("uMail");
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
			
			});
		</script>
	</head>
	<body>
		<h1>회원가입</h1>
		<h2>name: <%= uName %></h2>
	</body>
</html>