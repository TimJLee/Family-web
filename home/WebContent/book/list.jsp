<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR" import="java.util.*,home.book.*"%>
<jsp:useBean id="bdao" class="home.book.BookDAO"/>
<!-- BookDAO bdao=new BookDAO(); -->
<html>
<head>
	<title>도서목록</title>
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
	<h2>도 서 목 록 보 기</h2>  
	<a href="index.jsp">메인페이지</a>
	<hr color="green" width="300">
	<table border="1" width="1000">
		<tr bgcolor="yellow">
			<th>책이름</th>
			<th>지은이</th>
			<th>출판사</th>
			<th>판매가</th>
			<th>입고일</th>
		</tr>
<%	ArrayList<BookDTO> listBook=bdao.listBook();
	if(listBook==null ||listBook.size()==0){%>
	<tr>
		<td colspan="5">등록된 책이 없습니다.</td>
	</tr>
<%	}else{
		for(BookDTO dto : listBook){%>
	<tr>
		<td><%=dto.getName()%></td>
		<td><%=dto.getWriter()%></td>
		<td><%=dto.getPublisher()%></td>
		<td><%=dto.getPrice()%></td>
		<td><%=dto.getJoindate()%></td>
	</tr>
<%		}
	 }%>
	</table>
</div>
</body>
</html>