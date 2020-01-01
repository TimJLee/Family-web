<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR" import="java.sql.*"%>
   
<% request.setCharacterEncoding("EUC-KR"); //post방식에서의 한글처리
 	String name=request.getParameter("name");
 	if(name==null || name.trim().equals("")){
		response.sendRedirect("delete.jsp");
 		return;
 	} %>
 	<%
 	Class.forName("oracle.jdbc.driver.OracleDriver");
 	String url= "jdbc:oracle:thin:@localhost:1521:xe";
 	String user = "jsp";
 	String pass = "jsp"; 
 	String sql = "delete from book where name=?";
 	//joindate 자리에 sysdate 함수를 실행시켜 현재 날짜가 입력되도록 한다.
 	Connection con = DriverManager.getConnection(url,user,pass);
 	PreparedStatement ps = con.prepareStatement(sql); //동적쿼리 사용
 	ps.setString(1,name);
 	int res=ps.executeUpdate();
 	String msg = null;
 	String href = null;
 	if(res>0){
 		msg = "도서삭제성공!! 도서보기페이지로 이동합니다.";
 		href="list.jsp";
 	}else{
 		msg="도서삭제실패!! 도서삭제페이지로 이동합니다.";
 		href="index.jsp";
 	}
 	ps.close();
 	con.close();
 %>
 <script type="text/javascript">
 	alert("<%=msg%>")
 	location.href="<%=href%>"
 </script>

 		