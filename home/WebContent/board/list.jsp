<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="java.util.*, home.board.*" %>    
<!-- list.jsp -->

<jsp:useBean id="bdao" class="home.board.BoardDataBean" />
<!--  <link rel="stylesheet" type="text/css" href="../style.css">-->
<div align="center">
	<b>�� �� ��</b>
	<table border="0" width="100%">
		<tr bgcolor="yellow">
			<td align="right"><a href="writeForm.jsp">�۾���</a></td>
		</tr>
	</table>
	<table border="1" width="100%">
		<tr bgcolor="green">
			<th>�۹�ȣ</th>
			<th width="40%">����</th>
			<th>�ۼ���</th>
			<th>�ۼ���</th>
			<th>��ȸ</th>
			<th>IP</th>
		</tr>
			
<%
		int pageCount = 5;
		String pageNum = request.getParameter("pageNum");
		if (pageNum == null){
			pageNum = "1";
		}


		List<BoardDBBean> boardList = bdao.listBoard();  
		if (boardList == null || boardList.size()==0){%>
		<tr>
			<td colspan="6">��ϵ� �Խñ��� �����ϴ�.</td>
		</tr>
<%	}else { 
			for (BoardDBBean dto : boardList){%>
		<tr>
			<td><%=dto.getNum()%></td>
			<td><a href="content.jsp?num=<%=dto.getNum()%>"><%=dto.getSubject()%></a></td>
			<td><%=dto.getWriter()%></td>
			<td><%=dto.getReg_date()%></td>
			<td><%=dto.getReadcount()%></td>
			<td><%=dto.getIp()%></td>
		</tr>	
<%		}
		} %>				
	</table>
	
</div>












