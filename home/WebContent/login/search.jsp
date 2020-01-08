<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<link rel="stylesheet" type="text/css" href="../style.css">    
<%
		String mode = request.getParameter("mode");
		if (mode==null || mode.trim().equals("")){
			response.sendRedirect("login.jsp");
			return;
		}
%>
<script type="text/javascript">
	function check(mode){
		if (f.name.value==""){
			alert("이름을 입력하세요!!");
			f.name.focus();
			return;
		}
		if (f.ssn1.value==""){
			alert("주민번호 앞자리를 입력하세요!!");
			f.ssn1.focus();
			return;
		}
		if (f.ssn2.value==""){
			alert("주민번호 뒷자리를 입력하세요!!");
			f.ssn2.focus();
			return;
		}
		if (mode=="pw" && f.id.value==""){
			alert("아이디를 입력하세요!!");
			f.id.focus();
			return;
		}
		document.f.submit();
	}
</script>
<div align="center">
	<hr color="green" width="300">
<%	if(mode.equals("id")){%>
		<h2>아 이 디 찾 기</h2>
<%	}else { %>
		<h2>비 밀 번 호 찾 기</h2>
<%	} %>	
	<hr color="green" width="300">
	<form name="f" action="check.jsp" method="post">
		<table width="500" class="outline">
			<tr>
				<th>이름</th>
				<td><input type="text" name="name" class="box"></td>
			</tr>
			<tr>
				<th>주민번호</th>
				<td><input type="text" name="ssn1" class="box" maxlength="6"> -
						<input type="password" name="ssn2" class="box" maxlength="7"></td>
			</tr>
<%	if (mode.equals("pw")){ %>
			<tr>
				<th>아이디</th>
				<td><input type="text" name="id" class="box"></td>
			</tr>
<%	} %>			
			<tr>
				<td colspan="2" align="center">
					<a href="javascript:check('<%=mode%>')">[다음]</a>
					<a href="javascript:self.close()">[취소]</a>
				</td>
			</tr>	
		</table>
	</form>
</div>









