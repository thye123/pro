<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>ForTest</title>
		<style>
			hr{
				border: 5px solid green;
			}
		</style>
	</head>
	<body>
<%-- 		<h1>민푸훗</h1>
		<h1>Ace!</h1>
		<%
			for(int i = 1; i <= 10; i++){
				out.print("<h2>민푸훗</h2>");				
				out.print("<h3>Ace</h3>");				
			}
		%>
	
		<hr/>
		<%
			for(int i = 1; i <= 10; i++) {
		%>
				<h1><%=i%>아무도 이길 수 가 없어요!</h1>
		<%
			}
		%>
		<hr/> --%>
		
		<%
			int v = 7, v2 = 2;
			int v3 = v + v2;
			int v4 = v - v2;
			int v5 = v * v2;
			int v6 = v / v2;
			int v7 = v % v2;
		%>
		
		<h2>
			<div>v+v2=<%=v3%></div>
			<div>v-v2=<%=v4%></div>
			<div>v*v2=<%=v5%></div>
			<div>v/v2=<%=v6%></div>
			<div>v%v2=<%=v7%></div>
		</h2>
		
	</body>
</html>