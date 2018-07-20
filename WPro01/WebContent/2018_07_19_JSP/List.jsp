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
			table {
		      margin: 0 auto;
		   }
		   table, td {
		      height: 50px;
		      border: 1px solid black;
		      
		   }
		   tr:first-child {
		      background-color: black;
		      color: #fff;
		   
		   }
		   tr:first-child:hover {
		      background-color:black;
		   }
		   tr:hover {
		      background-color:yellow;
		   }
		   
		   div {
		      width: 90%; 
		      margin: 0 auto;
		      text-align: center;
		   }
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
			<a href="2018_07_20_JSP/resister.jsp">회원가입</a>
			<table>
				<tr>
					<th>아이디</th>
					<th>이름</th>
					<th>생년월일</th>
					<th>이메일</th>
					<th>가입일</th>
				</tr>			
				<%
					for(int i = 0; i < list.size(); i++){
						MemberVO mem = list.get(i);
						out.print(mem.toList());
					}
				%>
			</table>
		</div>
	</body>
</html>