<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
   <h1>반갑습니다!</h1>
   <h2>환영해요</h2>
   
   <%
      request.setCharacterEncoding("utf-8");
      String uName=request.getParameter("uName");
      out.print(uName);
   %>

</body>
</html>