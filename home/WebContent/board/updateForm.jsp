<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR" import="home.board.*"%>
<jsp:useBean id="bdao" class="home.board.BoardDataBean" />
<%
		String snum = request.getParameter("num");
		if (snum == null || snum.trim().equals("")){
			response.sendRedirect("list.jsp");
			return;
		}
		BoardDBBean dto = bdao.getBoard(Integer.parseInt(snum), "update");
%>  
<!-- <link rel="stylesheet" type="text/css" href="../style.css"> -->
<script type="text/javascript">
	function check(){
		if (f.subject.value==""){
			alert("제목을 입력해 주세요!!")
			f.subject.focus()
			return false
		}
		if (f.content.value==""){
			alert("내용을 입력해 주세요!!")
			f.content.focus()
			return false
		}
		if (f.passwd.value==""){
			alert("비밀번호를 입력해 주세요!!")
			f.passwd.focus()
			return false
		}
		return true
	}
</script>
<div align="center">
<form name="f" action="updatePro.jsp" method="post" onsubmit="return check()">
	<input type="hidden" name="num" value="<%=snum%>"/>
	<table border="1" width="600">
		<tr bgcolor="yellow">
			<td align="center" colspan="2">글 수 정</td>
		</tr>
		<tr>
			<th bgcolor="yellow" width="20%">이름</th>
			<td><input type="text" name="writer" value="<%=dto.getWriter()%>" readOnly></td>
		</tr>
		<tr>
			<th bgcolor="yellow" width="20%">제목</th>
			<td><input type="text" name="subject" size="60" value="<%=dto.getSubject()%>"></td>
		</tr>
		<tr>
			<th bgcolor="yellow" width="20%">이메일</th>
			<td><input type="text" name="email" size="60" value="<%=dto.getEmail()%>"></td>
		</tr>
		<tr>
			<th bgcolor="yellow" width="20%">내용</th>
			<td><textarea name="content" rows="10" cols="60"><%=dto.getContent()%></textarea></td>
		</tr>
		<tr>
			<th bgcolor="yellow" width="20%">비밀번호</th>
			<td><input type="password" name="passwd"></td>
		</tr>
		<tr bgcolor="yellow">
			<td align="center" colspan="2">
				<input type="submit" value="글수정">
				<input type="reset" value="다시쓰기">
				<input type="button" value="목록보기" onclick="location.href='list.jsp'">
			</td> 
		</tr>
	</table>
</form>	
</div>










