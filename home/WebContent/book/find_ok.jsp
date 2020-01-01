<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR" import="java.util.*,home.book.*"%>
 	<jsp:useBean id="bdao" class="home.book.BookDAO" />
<% 
	request.setCharacterEncoding("EUC-KR");
	String search=request.getParameter("search");
 	String searchString=request.getParameter("searchString");
 	if(search==null||search.trim().equals("")||
 			searchString==null||searchString.trim().equals("")){
 		response.sendRedirect("find.jsp");
 		return;
 	} %>

<html>
<head>
	<title>도서찾기</title>
</head>
<body>
<div align="center">
	<hr color="green" width="300">
	<h2>도 서 [<%=search%>] 찾 기</h2>
	<a href="index.jsp">메인페이지</a>
	<hr color="green" width="300">
	<table border="1" width="600">
		<tr bgcolor="yellow">
			<th>책이름</th>
			<th>지은이</th>
			<th>출판사</th>
			<th>판매가</th>
			<th>입고일</th>
		</tr>
<%		ArrayList<BookDTO> findBook=bdao.findBook(search,searchString); 
		if(findBook==null ||findBook.size()==0){%>
		<tr>
			<td colspan="5">찾으시는 책이 없습니다.</td>
		</tr>
<%		}else{
			for(BookDTO dto : findBook){%>
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
 		