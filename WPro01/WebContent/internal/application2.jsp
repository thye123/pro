<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>application 내장 객체의 로그와 속성 메서드</title>
</head>
<body>
<h1>application 내장 객체의 로그와 속성 메서드</h1>
<hr>
<%
	application.setAttribute("name", "홍길동");
	application.log("로그 메시지 저장");
	application.log("name=홍길동");
%>
<%=application.getAttribute("name") %><br>
<%
	if (application.getAttribute("count") == null) 
		application.setAttribute("count", 0);
	Integer counter = (Integer)application.getAttribute("count");
	int cnt = counter.intValue() + 1;
	application.setAttribute("count", cnt);
%>
카운터 : <%=application.getAttribute("count") %>
<hr>
</body>
</html>