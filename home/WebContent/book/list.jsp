<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR" import="java.util.*,home.book.*"%>
<jsp:useBean id="bdao" class="home.book.BookDAO"/>
<!-- BookDAO bdao=new BookDAO(); -->
<html>
<head>
	<title>�������</title>
</head>
<%
	String loginId = (String) session.getAttribute("id");
	if (loginId == null || loginId.trim().equals("")) {%>
	<script type="text/javascript">
		alert("�α����� ���� �� �ּ���")
		location.href = "<%=request.getContextPath()%>/login/login.jsp"
	</script>
<%	}%>
<body>
<div align="center">
	<hr color="green" width="300">
	<h2>�� �� �� �� �� ��</h2>  
	<a href="index.jsp">����������</a>
	<hr color="green" width="300">
	<table border="1" width="1000">
		<tr bgcolor="yellow">
			<th>å�̸�</th>
			<th>������</th>
			<th>���ǻ�</th>
			<th>�ǸŰ�</th>
			<th>�԰���</th>
		</tr>
<%	ArrayList<BookDTO> listBook=bdao.listBook();
	if(listBook==null ||listBook.size()==0){%>
	<tr>
		<td colspan="5">��ϵ� å�� �����ϴ�.</td>
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