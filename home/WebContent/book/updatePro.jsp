<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR" import="java.sql.*"%>
<jsp:useBean id="bdao" class="home.book.BookDAO" />
<% 
	request.setCharacterEncoding("EUC-KR");
	String name=request.getParameter("name");
 	String publisher=request.getParameter("publisher");
 	String writer=request.getParameter("writer");
 	String price=request.getParameter("price");
 	String joindate=request.getParameter("joindate");
%>
<html>
<head>
	<title>도서관리</title>
</head>
<%
	String loginId = (String) session.getAttribute("id");
	if (loginId == null || loginId.trim().equals("")) {%>
	<script type="text/javascript">
		alert("로그인을 먼저 해 주세요")
		location.href = "<%=request.getContextPath()%>/login/login.jsp"
	</script>
<%	}%>
<body>
<div align="center">
	<hr color="green" width="300">
	<h2>도 서 수 정 페 이 지</h2>
	<hr color="green" width="300">
	<form name="insert" method="post" action="updatePro_ok.jsp">
		<table border="1">
			<tr>
				<td>
				도서명 : <input type="text" name="name" value="<%=name%>"><br>
				출판사 : <input type="text" name="publisher" value="<%=publisher%>"><br>
				지은이 : <input type="text" name="writer" value="<%=writer%>"><br>
				판매가 : <input type="text" name="price" value="<%=price%>"><br>
				입고일 : <input type="text" name="joindate" value="<%=joindate%>"><br>
				<input type="submit" value="수정">
				<input type="reset" value="취소">
				</td>
			</tr>
		
		</table>	
	
	</form>

</div>
</body>

</html>