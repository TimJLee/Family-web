<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
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
		<table border="0" width="1000">
			<tr>
				<th><a href="insert.jsp">도서등록</a></th>
				<th><a href="list.jsp">도서보기</a></th>
				<th><a href="find.jsp">도서검색</a></th>
				<th><a href="delete.jsp">도서삭제</a></th>
				<th><a href="update.jsp">도서수정</a></th>
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