<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR" import="home.book.*"%>
    <jsp:useBean id="bdao" class="home.book.BookDAO" />
<% request.setCharacterEncoding("EUC-KR"); //post방식에서의 한글처리
 	String name=request.getParameter("name");
 	if(name==null || name.trim().equals("")){
		response.sendRedirect("delete.jsp");
 		return;
 	} %>
 	<%
 	int res=bdao.deleteBook(name);
 	if(res>0){%>
 	<script type="text/javascript">
 		alert("도서삭제성공! 도서보기페이지로 이동합니다.");
 		location.href="list.jsp";
 	</script>
 <%	}else{ %>
 	<script type="text/javascript">
 		alert("도서삭제실패! 도서삭제페이지로 이동합니다.");
 		location.href="delete.jsp";
 	</script>
 <%	}  %>
 		