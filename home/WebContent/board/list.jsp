<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="java.util.*, home.board.*" %>    
<!-- list.jsp -->

<jsp:useBean id="bdao" class="home.board.BoardDataBean" />
<link rel="stylesheet" type="text/css" href="../style.css">
<div align="center">
	<h2>�� �� ��</h2>
	<table border="0" width="99%">
		<tr bgcolor="yellow">
			<td align="right"><a href="writeForm.jsp"><b>�۾���</b></a></td>
		</tr>
	</table>
	<table border="0" width="99%" class="outline">
		<tr bgcolor="green">
			<th>�۹�ȣ</th>
			<th width="40%">����</th>
			<th>�ۼ���</th>
			<th>�ۼ���</th>
			<th>��ȸ</th>
			<th>IP</th>
		</tr>
			
<%
		int pageSize = 5;
		String pageNum = request.getParameter("pageNum");
		if (pageNum == null){
			pageNum = "1";
		}
		int currentPage = Integer.parseInt(pageNum);
		int startRow = (currentPage-1) * pageSize + 1;
		int count = bdao.getCount();
		int number = count - (currentPage-1)*pageSize;
		
		List<BoardDBBean> boardList = bdao.listBoard(startRow, pageSize*currentPage);  
		if (boardList == null || boardList.size()==0){%>
		<tr>
			<td colspan="6">��ϵ� �Խñ��� �����ϴ�.</td>
		</tr>
<%	}else { 
			for (BoardDBBean dto : boardList){%>
		<tr>
			<td><%=number--%></td>
			<td>
			<% if(dto.getRe_level()>0) {%>
				<img src="../img/level.gif" width="<%=dto.getRe_level()*10%>" height="16"/>
				<img src="../img/re.gif"/>
			<%} %>
			<a href="content.jsp?num=<%=dto.getNum()%>"><%=dto.getSubject()%></a>
			<% if(dto.getReadcount()>10){%>
				<img src="../img/hot.gif">
			<% } %>
			</td>
			<td><%=dto.getWriter()%></td>
			<td><%=dto.getReg_date()%></td>
			<td><%=dto.getReadcount()%></td>
			<td><%=dto.getIp()%></td>
		</tr>	
<%		}
		} %>				
	</table>
<%
	if(count>0){
		int totPage = count / pageSize + (count%pageSize==0 ? 0 : 1);
		int pageBlock = 3;
		int startPage = (currentPage-1) / pageBlock * pageBlock + 1;
		int endPage = startPage + pageBlock - 1;
		if (endPage>totPage) endPage = totPage;
		
		if(startPage != 1){%>
		<a href="list.jsp?pageNum=<%=startPage-pageBlock%>">[����]</a>
<%		} 
		for(int i=startPage; i<=endPage; ++i){%>
			<a href="list.jsp?pageNum=<%=i%>">[<%=i%>]</a>
<%		}  
		if (totPage>endPage){%>
			<a href="list.jsp?pageNum=<%=startPage+pageBlock%>">[����]</a>
<%		} 
	}

%>
</div>












