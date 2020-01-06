<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR" import="java.util.*,home.book.*"%>
 	<jsp:useBean id="bdao" class="home.book.BookDAO" />
<% 
	request.setCharacterEncoding("EUC-KR");
	String search=request.getParameter("search");
 	String searchString=request.getParameter("searchString");
 	if(search==null||search.trim().equals("")||
 			searchString==null||searchString.trim().equals("")){
 		response.sendRedirect("update.jsp");
 		return;
 	} %>

<html>
<head>
	<title>도서수정</title>
</head>
<body>
<div align="center">
	<hr color="green" width="300">
	<h2>도 서 [<%=search%>] 수 정</h2>
	<a href="index.jsp">메인페이지</a>
	<hr color="green" width="300">
	<table border="1" width="1000">
		<tr bgcolor="yellow">
			<th>책이름</th>
			<th>지은이</th>
			<th>출판사</th>
			<th>판매가</th>
			<th>입고일</th>
			<th>수정</th>
		</tr>
<%		ArrayList<BookDTO> findBook=bdao.findBook(search,searchString); 
		if(findBook==null ||findBook.size()==0){%>
		<tr>
			<td colspan="6">찾으시는 책이 없습니다.</td>
		</tr>
<%		}else{
			for(BookDTO dto : findBook){%>
			<form name="update" action="updatePro.jsp" method="post">
				<tr> 
					<td><%=dto.getName()%></td>
					<td><%=dto.getWriter()%></td>
					<td><%=dto.getPublisher()%></td>
					<td><%=dto.getPrice()%></td>
					<td><%=dto.getJoindate()%></td>
					<input type="hidden" name="name" value="<%=dto.getName()%>"/>
					<input type="hidden" name="writer" value="<%=dto.getWriter()%>"/>
					<input type="hidden" name="publisher" value="<%=dto.getPublisher()%>"/>
					<input type="hidden" name="price" value="<%=dto.getPrice()%>"/>
					<input type="hidden" name="joindate" value="<%=dto.getJoindate()%>"/>
					<td><input type="submit" value="수정"></td>
				</tr>
			</form>
<%		}
	 }%>
 	</table>
 </div>
 </body>
 </html>
 		