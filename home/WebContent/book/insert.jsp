<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<html>
<head>
	<title>��������</title>
	<script type="text/javascript">
	
		function checkValue(){
			
			if(isNaN(insert.price.value)){
				alert("�ǸŰ��� ���ڸ� �Է°����մϴ�.");
				f.price.focus()
				return
			}
			document.insert.submit()
		}
	</script>
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
	<form name="insert" method="post" action="insert_ok.jsp">
		<table border="1">
			<tr>
				<td>
				������ : <input type="text" name="name"><br>
				���ǻ� : <input type="text" name="publisher"><br>
				������ : <input type="text" name="writer"><br>
				�ǸŰ� : <input type="text" name="price"><br>
				<a href="javascript:checkValue()"><input type="button" value="���"></a>
				<input type="reset" value="���">
				</td>
			</tr>
		
		</table>	
	
	</form>

</div>
</body>

</html>