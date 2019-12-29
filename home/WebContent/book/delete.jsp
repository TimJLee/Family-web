<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<html>
<head>
	<title>도서관리</title>
</head>
<body>
<div align="center">
<hr color="green" width="300">
	<hr2>도 서 삭 제 페 이 지</hr2>
	<hr color="green" width="300">
	<form name="delete" method="post" action="delete_ok.jsp">
		<table border="1">
			<tr>
				<td>
					도서명 : <input type="text" name="name">
					<input type="submit" value="삭제">					
				</td>
			</tr>
		</table>
	
	</form>

</div>
</body>
</html>