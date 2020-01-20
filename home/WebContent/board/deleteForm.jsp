<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

    
<%
		String snum = request.getParameter("num");
		if (snum == null || snum.trim().equals("")){
			response.sendRedirect("list.jsp");
			return;
		}
%>
<link rel="stylesheet" type="text/css" href="../style.css">
<br><br><br><br><br>
<div  align="center">
	<b>글 삭 제</b>
	<form name="f" action="deletePro.jsp" method="post">
		<input type="hidden" name="num" value="<%=snum%>" />
		<table class="table" border="1">
			<tr bgcolor="">
				<th>비밀번호를 입력해 주세요</th>
			</tr>
			<tr>
				<td align="center">비밀번호 : <input class="form-control" type="password" name="passwd"></td>
			</tr>
			<tr bgcolor="">
				<td align="center">
					<input type="submit" value="글삭제">
					<input type="button" value="글목록" onclick="location.href='list.jsp'">
				</td>
			</tr>
		</table>
	</form>
</div>




