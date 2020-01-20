<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<html>
<head>    
	<link rel="stylesheet" type="text/css" href="../style.css"> 
	<script type="text/javascript">
		function check(){
			if (f.id.value==""){
				alert("아이디를 입력하세요!!")
				f.id.focus()
				return
			}	
			if (!f.passwd.value){
				alert("비밀번호를 입력하세요!!")
				f.passwd.focus()
				return
			}
			/*
			if(f.idDuplication.value != "idCheck"){
				alert("아이디 중복체크를 해주세요.")
				return
			}
			*/
			document.f.submit()
		}
		
		function openIdChk(){
			window.open("member/idCheck_ok.jsp",
					"chkForm","width=500, height=300, resizable = no, scrollbars = no")
		}
		function inputIdChk(){
			document.f.idDuplication.value = "idUncheck"
		}
	</script>
</head>
<%
		request.setCharacterEncoding("EUC-KR");
		String name = request.getParameter("name");
		String ssn1  = request.getParameter("ssn1");
		String ssn2 = request.getParameter("ssn2");
		if (name==null || name.trim().equals("") || ssn1==null || 
				ssn1.trim().equals("") || ssn2==null || ssn2.trim().equals("")){
			response.sendRedirect("memberSsn.jsp");
			return;
		}
%>	
	<body onload="f.name.focus()">
		<form name="f" method="POST" action="member_input.jsp">
			<table width="600" align="center" class="outline">
  				<tr>
					<td colspan="2" align=center class="m2">회원가입</td>
 				</tr>
				<tr>
					<td width="150" class="m3">이름</td>
					<td class="m3">
						<input type="text" name="name" class="box" value="<%=name%>" disabled>
						<input type="hidden" name="name" value="<%=name%>">
					</td>
				</tr>
				<tr>
					<td width="150" class="m3">아이디</td>
					<td class="m3">
						<input type="text" name="id" class="box">
					</td>
					<%--  
					<td class="m3">
						<form name="idchk" action="idCheck_ok.jsp" method="post">
							<input type="text" name="id" class="box" onkeydown="inputIdChk()">
							<!-- 아이디 입력란에는 키보드 입력시 발생하는 onkeydown 이벤트를 추가한다. 
							이 이벤트를 사용하는 것은 만약 사용자가 중복체크를 하고 난 뒤 아이디 입력란에 사용 가능한 
							아이디를 지우고 새로운 아이디를 입력했을 경우에 대처하기 위함이다. 이렇게 하면 중복체크가 되지 않은 것으로 처리되도록 한다.
							 -->
							<input type="submit" value="중복확인" class="box">
						</form>
						<input type="hidden" name="idDuplication" value="idUncheck">
						<!-- 아이디 중복체크를 했는지 판단하기 위한 부분이다.
						 <input type="hidden">의 value가 idUncheck 이면 중복체크를 하지 않은 것이다.
						-->
					</td>
					--%>
  				</tr>
  				<tr>
					<td width="150" class="m3">비밀번호</td>
					<td class="m3">
						<input type="password" name="passwd" class="box">
					</td>
  				</tr>
  				<tr>
					<td width="150" class="m3">주민번호</td>
					<td class="m3">
						<input type="text" name="ssn1" class="box" value="<%=ssn1%>" readOnly> -
				<input type="password" name="ssn2" class="box" value="<%=ssn2%>" readOnly>
					</td>
  				</tr>
  				<tr>
					<td width="150" class="m3">이메일</td>
					<td class="m3">
						<input type="text" name="email" class="box">
					</td>
  				</tr>
  				<tr>
					<td width="150" class="m3">연락처</td>
					<td class="m3">
						<input type="text" name="hp1" class="box" size="3" maxlength="3"> -
						<input type="text" name="hp2" class="box" size="4" maxlength="4"> -
						<input type="text" name="hp3" class="box" size="4" maxlength="4">
					</td>
  				</tr>
  				<tr>
					<td colspan="2" align="center">
						<a href="javascript:check()">[전송]</a>
						<a href="#">[취소]</a>
					</td>
  				</tr>
  			</table>
		</form>
	</body>
 </html>