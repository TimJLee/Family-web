<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
//세션 만들기
   String id=request.getParameter("id");
   String pwd=request.getParameter("pwd");
   
   //아이디를 admin 으로하고 비밀번호를 1234일때만 로그인이 되었다고 하자
   if(id.equals("admin") && pwd.equals("1234")){
   session.setAttribute("id","admin");%>
     <script type="text/javascript">
       alert("로그인 되셨습니다.")
       location.href="resultTest2.jsp"
     </script>
    
<% }%>