<%@page import="DBCONNECT.MemberVO"%>
<%@page import="DBCONNECT.MemberDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


<%
   String uid = request.getParameter("id");
   if(uid ==null) {
      response.sendRedirect("list.jsp");
   }
   MemberDAO dao = new MemberDAO();
   MemberVO  m   = dao.getMember(uid); 
   dao.close();
%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
   <div>
      <h1>상세 페이지</h1>
      <table>
         <tr>
            <th>아이디</th>
            <td><%=m.getId() %></td>
         </tr>
         <tr>
            <th>비밀번호</th>
            <td><%=m.getPass() %></td>
         </tr>
         <tr>
            <th>이름</th>
            <td><%=m.getName() %></td>
         </tr>
         <tr>
            <th>이메일</th>
            <td><%=m.getEmail() %></td>
         </tr>
         <tr>
            <th>전화번호</th>
            <td><%=m.getPhone() %></td>
         </tr>
         <tr>
            <th>주민번호</th>
            <td><%=m.getBirth() %></td>
         </tr>
         <tr>
            <th>주소</th>
            <td><%=m.getZipcode() %></td>
         </tr>
         <tr>
            <th>상세주소1</th>
            <td><%=m.getAddress() %></td>
         </tr>
         <tr>
            <th>가입일자</th>
            <td><%=m.getRegdate() %></td>
         </tr>
         <tr>
         	<td colspan="2">
         		<a href="./2018_07_19_JSP/list.jsp">목록</a>
         		<a href="update.jsp">수정</a>
         		<a href="delete.jsp">탈퇴</a>
         	</td>
         </tr>
      </table>
   </div>
</body>
</html>