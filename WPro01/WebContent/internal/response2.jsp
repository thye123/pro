<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>response2.jsp</title>
</head>
<body>
<%
	response.setHeader("Pragma", "0");
	if (request.getProtocol().equals("HTTP/1.1")) {
		response.setHeader("Cache-Control", "no-cache");
	}
%>
<h1>response.sendRedirect() 예제</h1>
http://localhost:8080/home/internal/response1.jsp 페이지가<br>
http://localhost:8080/home/internal/response2.jsp로 리다이렉트 되었습니다.
</body>
</html>