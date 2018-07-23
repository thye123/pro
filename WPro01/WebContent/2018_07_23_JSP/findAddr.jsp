<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="addr.PostVo"%>
<%@page import="java.util.List"%>
<%@page import="addr.PostDao"%>
<%@page import="DBCONNECT.MemberDAO"%>
<%
   request.setCharacterEncoding("utf-8");
   String dong = request.getParameter("dong");
   PostDao dao = new PostDao();
   List<PostVo> list = dao.getAddrList(dong);
   String selOptions = "";
   if (dong != null) {
      for(int i=0 ; i<list.size(); i++) {
         PostVo vo = list.get(i);
         selOptions += "<option>";
         selOptions += vo.toPostAddress();
         selOptions += "</option>";
      }
      dao.close();
   }
%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script>
window.onload = function() {
   var btnclose = document.getElementById('btnClose');
   btnclose.onclick = function() {
      var parent     = window.opener.document; //이전창
      var me         = window.document;      // 현재창
      var txtpost    = parent.getElementById('post');
      var txtaddr1   = parent.getElementById('addr1');
      var txtaddr2   = parent.getElementById('addr2');
      //              01234567890 1 23 4 56 7 89
      //var addr       = "[600-001] 부산 남구 용호1동";
      var addrlist   = me.getElementById("addrlist");
      var addr       = addrlist.options[addrlist.selectedIndex].value;//여기뒤에 .value 안붙임
      if(addrlist.selectedIndex == -1) {
         alert("선택하세요");
         return -1;
      }
      var zipcode    = addr.substr(1,7);
      var addr1      = addr.substr(10);;
      txtpost.value  = zipcode;
      txtaddr1.value = addr1;
      txtaddr2.focus();
      window.close();      // this.close() // self.close()
   }
}
</script>
   
</head>
<body>
   <form action ="#" method="GET">
      <h1>주소찾기</h1>
      동명<input type="text" name="dong" id="txtdong"/>
      <input type="submit" value="검색"/><br/>
      <select id="addrlist" size="12">
            <%=selOptions %>
      </select>
      
   </form>
      <input type="button" value="닫기" id="btnClose"/><br/>
</body>
</html>