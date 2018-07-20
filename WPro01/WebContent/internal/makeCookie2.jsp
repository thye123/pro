<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Cookie Class 메서드 사용</title>
</head>
<body>
<%
	Cookie cookie1 = new Cookie("id", "java");
	cookie1.setDomain(".lug.or.kr");
	cookie1.setMaxAge(60 * 60);
	cookie1.setPath("/");
	response.addCookie(cookie1);
	
	Cookie cookie2 = new Cookie("id", "jsp");
	cookie2.setDomain("www.lug.or.kr");
	cookie2.setMaxAge(60 * 30);
	cookie2.setPath("/jsp");
	response.addCookie(cookie2);
	
	Cookie cookie3 = new Cookie("id", "tomcat");
	cookie3.setDomain("book.lug.or.kr");
	cookie3.setMaxAge(60 * 30);
	response.addCookie(cookie3);
%>
쿠키 내용<hr>
<%=cookie1.getDomain() %> : <%=cookie1.getName() %> = <%=cookie1.getValue() %>, 
<%=cookie1.getMaxAge() %>초, <%=cookie1.getPath() %><br>
<%=cookie2.getDomain() %> : <%=cookie2.getName() %> = <%=cookie2.getValue() %>, 
<%=cookie2.getMaxAge() %>초, <%=cookie2.getPath() %><br>
<%=cookie3.getDomain() %> : <%=cookie3.getName() %> = <%=cookie3.getValue() %>, 
<%=cookie3.getMaxAge() %>초, <%=cookie3.getPath() %><br>
</body>
</html>