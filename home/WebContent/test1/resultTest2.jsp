<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
//세션 꺼내오기
   String id = (String)session.getAttribute("id");
   if(id==null || id.trim().equals("")){%>
   <script type="text/javascript">
     alert("로그인을 먼저 해 주세요")
     location.href="sessionTest1.jsp"
   
   </script>
	   
<%}%>

<h1> 로그인 하신분만 들어올 수 있는 페이지(관리자)</h1>
<h2>로그인 안한분들 못들어옴</h2>
<h3><a href="resultTest3.jsp">로그아웃</a></h3>