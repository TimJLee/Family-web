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
	<h2>�� �� ã �� �� �� ��</h2>
	<hr color="green" width="300">
	<form name="find" method="post" action="find_ok.jsp">
		<table border="1">
			<tr>
				<td>
					<select name="search">
						<option value="name">������
						<option value="publisher">���ǻ�
						<option value="writer">������
					</select>
					<input type="text" name="searchString">
					<input type="submit" value="ã��">					
				</td>
			</tr>
		</table>
	
	</form>

</div>
</body>
</html>