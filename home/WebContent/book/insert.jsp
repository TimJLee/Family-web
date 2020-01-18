<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<html>
<head>
	<title>도서관리</title>
	<script type="text/javascript">
	
		function checkValue(){
			
			if(isNaN(insert.price.value)){
				alert("판매가는 숫자만 입력가능합니다.");
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
		alert("로그인을 먼저 해 주세요")
		location.href = "<%=request.getContextPath()%>/login/login.jsp"
	</script>
<%	}%>
<body>
<div align="center">
	<hr color="green" width="300">
	<h2>도 서 등 록 페 이 지</h2>
	<hr color="green" width="300">
	<form name="insert" method="post" action="insert_ok.jsp">
		<table border="1">
			<tr>
				<td>
				도서명 : <input type="text" name="name"><br>
				출판사 : <input type="text" name="publisher"><br>
				지은이 : <input type="text" name="writer"><br>
				판매가 : <input type="text" name="price"><br>
				<a href="javascript:checkValue()"><input type="button" value="등록"></a>
				<input type="reset" value="취소">
				</td>
			</tr>
		
		</table>	
	
	</form>

</div>
</body>

</html>