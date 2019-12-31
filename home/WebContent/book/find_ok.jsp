<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR" import="java.sql.*"%>
 
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
<%
	Class.forName("oracle.jdbc.driver.OracleDriver");
	String url= "jdbc:oracle:thin:@localhost:1521:xe";
	String user = "jsp";
	String pass = "jsp"; 
	String sql = "select * from book where "+search+" = ?";
	//동적쿼리는 ?를 이용해서 데이터를 나중에 넣도록 구성.
	//필드명은 나중에 들어갈 수 없다. -> search(필드명)는 위와 같이 String의 덧셈으로 넣어준다.
	Connection con = DriverManager.getConnection(url,user,pass);
	PreparedStatement ps = con.prepareStatement(sql);
	ps.setString(1,searchString);
	ResultSet rs = ps.executeQuery();
	while(rs.next()){%>
		<tr>
			<td><%=rs.getString("name")%></td>
			<td><%=rs.getString("writer")%></td>
			<td><%=rs.getString("publisher")%></td>
			<td><%=rs.getInt("price")%></td>
			<td><%=rs.getString("joindate")%></td>
		</tr>
<%	}
	rs.close();
	ps.close();
	con.close();
%>
 	</table>
 </div>
 </body>
 </html>
 		