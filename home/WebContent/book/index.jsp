<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
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
		<table border="0" width="1000">
			<tr>
				<th><a href="insert.jsp">�������</a></th>
				<th><a href="list.jsp">��������</a></th>
				<th><a href="find.jsp">�����˻�</a></th>
				<th><a href="delete.jsp">��������</a></th>
				<th><a href="update.jsp">��������</a></th>
			</tr>
			<tr>
				<td></td>
				<!--  <td colspan="5"><img src="book.jpg" width=300></td>  -->
			</tr>
			<tr>
				<td colspan="5" align="right"><h2>version 1.0</h2></td>
			</tr>
		</table>
	</div>
</body>
</html>