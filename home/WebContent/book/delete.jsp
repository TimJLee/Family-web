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
<hr color="green" width="300">
	<hr2>�� �� �� �� �� �� ��</hr2>
	<hr color="green" width="300">
	<form name="delete" method="post" action="delete_ok.jsp">
		<table border="1">
			<tr>
				<td>
					������ : <input type="text" name="name">
					<input type="submit" value="����">					
				</td>
			</tr>
		</table>
	
	</form>

</div>
</body>
</html>