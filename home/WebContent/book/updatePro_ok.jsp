<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR" import="java.sql.*"%>
<jsp:useBean id="bdao" class="home.book.BookDAO" />

 <% request.setCharacterEncoding("EUC-KR"); //post방식에서의 한글처리  파라메터로 넘어오는 데이터는 모두 String 이다.%>
 <jsp:useBean id="bdto" class="home.book.BookDTO" />
 <jsp:setProperty property="*" name="bdto"/>

 <%	if(bdto.getName()==null || bdto.getName().trim().equals("")){%>
 		<script type="text/javascript">
 			alert("수정할 도서 이름을 입력하세요.");
 			history.back();
 		</script>
 <%		return;
 	}
 	int res=bdao.updateBook(bdto);  
 	if(res>0){%>  
 	<script type="text/javascript">
 		alert("도서수정성공! 도서보기페이지로 이동합니다.");
 		location.href="list.jsp";
 	</script>
 <%	}else{ %>
 	<script type="text/javascript">
 		alert("도서수정실패! 도서수정페이지로 이동합니다.");
 		location.href="update.jsp";
 	</script>
 <%	} %>
 		