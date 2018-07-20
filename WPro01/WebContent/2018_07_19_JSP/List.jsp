<%@page import="DBCONNECT.MemberVO"%>
<%@page import="java.util.List"%>
<%@page import="DBCONNECT.MemberDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<% 
	MemberDAO dao = new MemberDAO();
	List<MemberVO> list = dao.getMemList();
	dao.close();
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
		<div>
			<h1>회원목록</h1>
			<%
				for(int i = 0; i < list.size(); i++){
					MemberVO mem = list.get(i);
					out.println(mem.toString());
				}
			%>
		</div>
	</body>
</html>