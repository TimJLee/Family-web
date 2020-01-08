<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR" import="java.util.*, home.member.*"%>

<link rel="stylesheet" type="text/css" href="../style.css">
<jsp:useBean id="mbdao" class="home.member.MemberDAO" />
<%-- 
<jsp:useBean id="dbPool" class="my.db.ConnectionPoolBean"  scope="application"/>
<jsp:setProperty property="pool" name="mbdao" value="<%=dbPool%>" />
--%>

<%
	String cmd = request.getParameter("cmd");
	if (cmd == null || cmd.trim().equals("")) {
		cmd = "ALL";
	}
%>
<div align="center">
	<hr color="green" width="300">
	<%
		if (cmd.equals("ALL")) {
	%>
	<h2>ȸ �� �� �� �� ��</h2>
	<%
		} else {
	%>
	<h2>ȸ �� ã ��</h2>
	<form name="f" method="post">
		<select name="search">
			<option value="id">���̵�</option>
			<option value="name">ȸ����</option>
		</select> <input type="text" name="searchString"> <input type="submit"
			value="ã��">
	</form>
	<jsp:setProperty property="*" name="mbdao" />
	<%
		}
	%>
	<hr color="green" width="300">
	<table width="99%" class="outline">
		<tr>
			<th class="m3">��ȣ</th>
			<th class="m3">�̸�</th>
			<th class="m3">���̵�</th>
			<th class="m3">�̸���</th>
			<th class="m3">��ȭ��ȣ</th>
			<th class="m3">������</th>
			<th class="m3">����|����</th>
		</tr>
		<%
			List<MemberDTO> memberList = null;
			if (cmd.equals("ALL"))
				memberList = mbdao.listMember();
			else
				memberList = mbdao.findMember();

			if (memberList == null || memberList.size() == 0) {
		%>
		<tr>
			<td colspan="7">��ϵ� ȸ���� �����ϴ�.</td>
		</tr>
		<%
			} else {
				for (MemberDTO dto : memberList) {
		%>
		<tr>
			<td align="center"><%=dto.getNo()%></td>
			<td align="center"><%=dto.getName()%></td>
			<td align="center"><%=dto.getId()%></td>
			<td align="center"><%=dto.getEmail()%></td>
			<td align="center"><%=dto.getAllHp()%></td>
			<td align="center"><%=dto.getJoindate()%></td>
			<td align="center"><a
				href="member_edit.jsp?no=<%=dto.getNo()%>">����</a> | <a
				href="member_delete.jsp?no=<%=dto.getNo()%>">����</a></td>
		</tr> 

		<%
			}
			}
		%>
	</table>
</div>









