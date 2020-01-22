<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR" import="home.board.*"%>
<jsp:useBean id="bdao" class="home.board.BoardDataBean" />
<%@ include file="../top.jsp"%>

<%
		String snum = request.getParameter("num");
		if (snum == null || snum.trim().equals("")){
			response.sendRedirect("list.jsp");
			return;
		}
		BoardDBBean dto = bdao.getBoard(Integer.parseInt(snum), "update");
%>  

<br><br><br><br><br>
<div class="container">
<form name="board" action="updatePro.jsp" method="post" onsubmit="return check()">
	<input type="hidden" name="num" value="<%=snum%>"/>
	<table class="table" border="1">
		<tr bgcolor="">
			<td align="center" colspan="2">글 수 정</td>
		</tr>
		<tr>
			<th bgcolor="" width="20%">이름</th>
			<td><input class="form-control" type="text" name="writer" value="<%=dto.getWriter()%>" readOnly></td>
		</tr>
		<tr>
			<th bgcolor="" width="20%">제목</th>
			<td><input class="form-control" type="text" name="subject" size="60" value="<%=dto.getSubject()%>"></td>
		</tr>
		<tr>
			<th bgcolor="" width="20%">이메일</th>
			<td><input class="form-control" type="text" name="email" size="60" value="<%=dto.getEmail()%>"></td>
		</tr>
		<tr>
			<th bgcolor="" width="20%">내용</th>
			<td><textarea class="form-control" name="content" rows="10" cols="60"><%=dto.getContent()%></textarea></td>
		</tr>
		<tr>
			<th bgcolor="" width="20%">비밀번호</th>
			<td><input class="form-control" type="password" name="passwd"></td>
		</tr>
		<tr bgcolor="">
			<td align="center" colspan="2">
				<input type="submit" value="글수정">
				<input type="reset" value="다시쓰기">
				<input type="button" value="목록보기" onclick="location.href='list.jsp'">
			</td> 
		</tr>
	</table>
</form>	

<%@ include file="../bottom.jsp"%>









