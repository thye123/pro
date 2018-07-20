<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
	String val1 = request.getParameter("val1");
	String val2 = request.getParameter("val2");
	String color = "";
	if( val1.equals("1") ){
		color = "color:red";
	}
	if( val1.equals("2") ){
		color = "color:yellow";		
	}
%>
<!DOCTYPE html>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>Insert title here</title>
	</head>
	<body>
		<h1 style="<%=color%>">왔냐 JSP</h1>
		<p>첫번째 값: <% out.print(val1); %></p>
		<p>두번째 값: <%=val2 %></p>
	</body>
</html>