<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR" import="home.board.*"%>
<jsp:useBean id="bdao" class="home.board.BoardDataBean" />
<%@ include file="../top.jsp"%>
<!-- <link rel="stylesheet" type="text/css" href="../style.css"> -->
<%
		String snum = request.getParameter("num");
		if (snum == null || snum.trim().equals("")){
			response.sendRedirect("list.jsp");
			return;
		}
		BoardDBBean dto = bdao.getBoard(Integer.parseInt(snum), "content");
%>  
<br><br><br><br><br>
<div class="container">
	<b>�� �� �� �� ��</b>
	<table class="table" border="1" >
		<tr>
			<th width="20%" bgcolor="">�۹�ȣ</th>
			<td width="30%" align="center"><%=dto.getNum()%></td>
			<th width="20%" bgcolor="">��ȸ��</th>
			<td width="30%" align="center"><%=dto.getReadcount()%></td>
		</tr>
		<tr>
			<th width="20%" bgcolor="">�ۼ���</th>
			<td width="30%" align="center"><%=dto.getWriter()%></td>
			<th width="20%" bgcolor="">�ۼ���</th>
			<td width="30%" align="center"><%=dto.getReg_date()%></td>
		</tr>
		<tr>
			<th width="20%" bgcolor="">������</th>
			<td width="80%" align="center" colspan="3"><%=dto.getSubject()%></td>
		</tr>
		<tr>
			<th width="20%" bgcolor="">�۳���</th>
			<td width="80%" align="left" colspan="3"><%=dto.getContent()%></td>
		</tr>
		<tr>
			<td align="right" colspan="4" bgcolor="">
				<input type="button" value="��۾���"
					onclick="location.href='writeForm.jsp?num=<%=dto.getNum()%>&re_step=<%=dto.getRe_step()%>&re_level=<%=dto.getRe_level()%>'">
				<input type="button" value="�ۼ���"
					onclick="location.href='updateForm.jsp?num=<%=dto.getNum()%>'">
				<input type="button" value="�ۻ���" 
					onclick="location.href='deleteForm.jsp?num=<%=dto.getNum()%>'">
				<input type="button" value="�۸��" onclick="location.href='list.jsp'">
			</td>
		</tr>
	</table>

<%@ include file="../bottom.jsp"%>













