<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<html>
<head>
	<title>도서관리</title>
</head>
<body>
<div align="center">
<hr color="green" width="300">
	<hr2>도 서 찾 기 페 이 지</hr2>
	<hr color="green" width="300">
	<form name="find" method="post" action="find_ok.jsp">
		<table border="1">
			<tr>
				<td>
					<select name="search">
						<option value="name">도서명
						<option value="publisher">출판사
						<option value="writer">지은이
					</select>
					<input type="text" name="searchString">
					<input type="submit" value="찾기">					
				</td>
			</tr>
		</table>
	
	</form>

</div>
</body>
</html>