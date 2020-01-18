<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!-- <link rel="stylesheet" type="text/css" href="../style.css"> -->
<script type="text/javascript">
	function check(){
		if (f.writer.value==""){
			alert("이름을 입력해 주세요!!")
			f.writer.focus()
			return false
		}
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
<%
		int num=0, re_step=0, re_level=0; // 원글이다
		String snum = request.getParameter("num");
		if (snum != null){	//답글이다
			num = Integer.parseInt(snum);
			re_step = Integer.parseInt(request.getParameter("re_step"));
			re_level = Integer.parseInt(request.getParameter("re_level"));
		}
%>
<div align="center">
<form name="f" action="writePro.jsp" method="post" onsubmit="return check()">
	<input type="hidden" name="num" value="<%=num%>"/>
	<input type="hidden" name="re_step" value="<%=re_step%>"/>
	<input type="hidden" name="re_level" value="<%=re_level%>"/>
	<table border="1" width="600">
		<tr bgcolor="yellow">
			<td align="center" colspan="2">글 쓰 기</td>
		</tr>
		<tr>
			<th bgcolor="yellow" width="20%">이름</th>
			<td><input type="text" name="writer"></td>
		</tr>
		<tr>
			<th bgcolor="yellow" width="20%">제목</th>
			<td><input type="text" name="subject" size="60"></td>
		</tr>
		<tr>
			<th bgcolor="yellow" width="20%">이메일</th>
			<td><input type="text" name="email" size="60"></td>
		</tr>
		<tr>
			<th bgcolor="yellow" width="20%">내용</th>
			<td><textarea name="content" rows="10" cols="60"></textarea></td>
		</tr>
		<tr>
			<th bgcolor="yellow" width="20%">비밀번호</th>
			<td><input type="password" name="passwd"></td>
		</tr>
		<tr bgcolor="yellow">
			<td align="center" colspan="2">
				<input type="submit" value="글쓰기">
				<input type="reset" value="다시쓰기">
				<input type="button" value="목록보기" onclick="location.href='list.jsp'">
			</td> 
		</tr>
	</table>
</form>	
</div>






