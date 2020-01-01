<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR" import="java.sql.*"%>
<jsp:useBean id="bdao" class="home.book.BookDAO" />
<!-- 
	1. 넘어온 데이터를 받아오기
	2. 넘어온 데이타의 유효성 검사
	3. DB와 연결하기
	4. 쿼리를 전송
	5. 전송결과에 따라 전체보기를 가던지, 초기화면으로 가던지
 -->
 <% request.setCharacterEncoding("EUC-KR"); //post방식에서의 한글처리  파라메터로 넘어오는 데이터는 모두 String 이다.%>
 <jsp:useBean id="bdto" class="home.book.BookDTO" />
 <jsp:setProperty property="*" name="bdto"/>
 <%-- <jsp:setProperty property="name" name="bdto"/> --%>
 <!-- bdto.setName(request.getParameter("name")); -->
 <%	if(bdto.getName()==null || bdto.getName().trim().equals("")){%>
 		<script type="text/javascript">
 			alert("도서등록내용부족.다시 입력하세요.");
 			history.back();
 		</script>
 <%		return;
 	}
 	int res=bdao.insertBook(bdto);  
 	if(res>0){%>  
 	<script type="text/javascript">
 		alert("도서등록성공! 도서보기페이지로 이동합니다.");
 		location.href="list.jsp";
 	</script>
 <%	}else{ %>
 	<script type="text/javascript">
 		alert("도서등록실패! 도서등록페이지로 이동합니다.");
 		location.href="insert.jsp";
 	</script>
 <%	} %>
 		