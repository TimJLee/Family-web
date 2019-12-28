<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ include file="top.jsp"%>
<!-- login.jsp-->
<link rel="stylesheet" type="text/css" href="style.css">
<br>
<img src="img/bottom.gif" width=570 height="40" border="0" alt="">
<br>
<p>
<img src="img/tm_login.gif" width=100 height="13" border="0" 
	align=center ALT="회원 로그인">
<form name="f" action="login_ok.jsp" method="post">
	<table width="60%" align="center" height="120">
		<tr>
			<td align="right" width="30%">
				<img src="img/id01.gif" 
				width="28" height="11" border="0" alt="아이디">&nbsp;&nbsp;
			</td>
			<td width="40%">
				<input type="text" name="id" tabindex="1">
			</td>
			<td rowspan="2" width="30%" valign="middle">
				<a href="javascript:loginCheck()">
					<img src="img/bt_login.gif" border="0" alt="로그인"  tabindex="3">&nbsp;&nbsp;<br>
				</a>
				<nobr>
					<input type="checkbox" name="saveId">
					<font face="굴림" size="2">아이디 기억하기</font>
				</nobr>
			</td>
		</tr>
		<tr>
			<td align="right">
				<img src="img/pwd.gif" 
							width="37" height="11" alt="비밀번호">
			</td>
			<td>
				<input type="password" name="pwd"  tabindex="2">
			</td>
		</tr>
		<tr>
			<td colspan="3" align="center">
					<img src="img/bt_join.gif" width="60" height="22" alt="회원가입">
 					<img src="img/bt_search_id.gif" width="60" height="22" alt="아이디 찾기">
					<img src="img/bt_search_pw.gif" width="60" height="22" alt="비밀번호 찾기">
								
			</td>
		</tr>
	</table>
</form> 
<%@ include file="bottom.jsp"%>