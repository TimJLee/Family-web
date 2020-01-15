<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
		String snum = request.getParameter("num");
		if (snum == null || snum.trim().equals("")){
			response.sendRedirect("list.jsp");
			return;
		}
%>
<%@ include file="../top.jsp"%>
<!-- <link rel="stylesheet" type="text/css" href="../style.css"> -->
<div align="center">
	<b>글 삭 제</b>
	<form name="f" action="deletePro.jsp" method="post">
		<input type="hidden" name="num" value="<%=snum%>" />
		<table border="1">
			<tr bgcolor="yellow">
				<th>비밀번호를 입력해 주세요</th>
			</tr>
			<tr>
				<td align="center">비밀번호 : <input type="password" name="passwd"></td>
			</tr>
			<tr bgcolor="yellow">
				<td align="center">
					<input type="submit" value="글삭제">
					<input type="button" value="글목록" onclick="location.href='list.jsp'">
				</td>
			</tr>
		</table>
	</form>
</div>
<%@ include file="../bottom.jsp"%>

