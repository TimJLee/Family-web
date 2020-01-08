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
	<h2>회 원 목 록 보 기</h2>
	<%
		} else {
	%>
	<h2>회 원 찾 기</h2>
	<form name="f" method="post">
		<select name="search">
			<option value="id">아이디</option>
			<option value="name">회원명</option>
		</select> <input type="text" name="searchString"> <input type="submit"
			value="찾기">
	</form>
	<jsp:setProperty property="*" name="mbdao" />
	<%
		}
	%>
	<hr color="green" width="300">
	<table width="99%" class="outline">
		<tr>
			<th class="m3">번호</th>
			<th class="m3">이름</th>
			<th class="m3">아이디</th>
			<th class="m3">이메일</th>
			<th class="m3">전화번호</th>
			<th class="m3">가입일</th>
			<th class="m3">수정|삭제</th>
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
			<td colspan="7">등록된 회원이 없습니다.</td>
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
				href="member_edit.jsp?no=<%=dto.getNo()%>">수정</a> | <a
				href="member_delete.jsp?no=<%=dto.getNo()%>">삭제</a></td>
		</tr> 

		<%
			}
			}
		%>
	</table>
</div>









