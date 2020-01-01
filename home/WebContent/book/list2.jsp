<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR" import="java.sql.*"%>
<html>
<head>
	<title>도서목록</title>
</head>
<body>
<div align="center">
	<hr color="green" width="300">
	<h2>도 서 목 록 보 기</h2>
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
	String sql = "select * from book";
	Connection con = DriverManager.getConnection(url,user,pass);
	PreparedStatement ps = con.prepareStatement(sql);
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
