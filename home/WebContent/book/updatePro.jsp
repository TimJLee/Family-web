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
	<title>��������</title>
</head>
<%
	String loginId = (String) session.getAttribute("id");
	if (loginId == null || loginId.trim().equals("")) {%>
	<script type="text/javascript">
		alert("�α����� ���� �� �ּ���")
		location.href = "<%=request.getContextPath()%>/login/login.jsp"
	</script>
<%	}%>
<body>
<div align="center">
	<hr color="green" width="300">
	<h2>�� �� �� �� �� �� ��</h2>
	<hr color="green" width="300">
	<form name="insert" method="post" action="updatePro_ok.jsp">
		<table border="1">
			<tr>
				<td>
				������ : <input type="text" name="name" value="<%=name%>"><br>
				���ǻ� : <input type="text" name="publisher" value="<%=publisher%>"><br>
				������ : <input type="text" name="writer" value="<%=writer%>"><br>
				�ǸŰ� : <input type="text" name="price" value="<%=price%>"><br>
				�԰��� : <input type="text" name="joindate" value="<%=joindate%>"><br>
				<input type="submit" value="����">
				<input type="reset" value="���">
				</td>
			</tr>
		
		</table>	
	
	</form>

</div>
</body>

</html>