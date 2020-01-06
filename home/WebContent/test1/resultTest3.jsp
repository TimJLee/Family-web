<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
   session.invalidate(); //세션 모두 초기화
   //session.removeAttribute("id");
%>
<h2>로그아웃 되었습니다.</h2>
<script type="text/javascript">
  alert("로그아웃되었습니다.")
  
  location.href="sessionTest1.jsp"
</script>