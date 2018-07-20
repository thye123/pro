<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>name 쿠키 삭제</title>
</head>
<body>
<%
	Cookie[] cookies = request.getCookies();
	if (cookies != null && cookies.length > 0) {
		for (int i=0; i<cookies.length; i++) {
			if (cookies[i].getName().equals("name")) {
				Cookie cookie = new Cookie("name", "");
				cookie.setMaxAge(0);
				response.addCookie(cookie);
				out.println("name 쿠키를 삭제하였습니다.<br><br>");
				out.println("<a href='getCookie.jsp'>변경된 쿠키 값 확인</a>");
			}
		}
	}
%>
</body>
</html>