<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR" import="home.member.*"%>
<jsp:useBean id="mbdao" class="home.member.MemberDAO" />
<%
	String no = request.getParameter("no");
	if (no==null || no.trim().equals("")){
		response.sendRedirect("memberAll.jsp");
		return;
	}
	MemberDTO dto = mbdao.getMember(Integer.parseInt(no)); 
%>
<link rel="stylesheet" type="text/css" href="../style.css">
<script type="text/javascript">
	function check(){
		if (f.passwd.value==""){
			alert("��й�ȣ�� �Է��� �ּ���!!")
			f.passwd.focus()
			return
		}
		document.f.submit()
	}
</script>
	<div align="center">
		<form name="f" method="POST" action="member_edit_ok.jsp">
			<input type="hidden" name="no" value="<%=no%>">
			<table width="600" align="center" class="outline">
  				<tr>
					<td colspan="2" align=center class="m2">ȸ������</td>
 				</tr>
				<tr>
					<td width="150" class="m3">�̸�</td>
					<td class="m3">
						<input type="text" name="name" class="box" 
							value="<%=dto.getName()%>" readOnly>
					</td>
				</tr>
				<tr>
					<td width="150" class="m3">���̵�</td>
					<td class="m3">
						<input type="text" name="id" class="box"
							value="<%=dto.getId()%>" readOnly>
					</td>
  				</tr>
  				<tr>
					<td width="150" class="m3">��й�ȣ</td>
					<td class="m3">
						<input type="password" name="passwd" class="box"
							value="<%=dto.getPasswd()%>">
					</td>
  				</tr>
  				<tr>
					<td width="150" class="m3">�ֹι�ȣ</td>
					<td class="m3">
						<input type="text" name="ssn1" class="box"
							value="<%=dto.getSsn1()%>" readOnly> -
						<input type="password" name="ssn2" class="box"
							value="<%=dto.getSsn2()%>" readOnly>
					</td>
  				</tr>
  				<tr>
					<td width="150" class="m3">�̸���</td>
					<td class="m3">
						<input type="text" name="email" class="box"
							value="<%=dto.getEmail()%>">
					</td>
  				</tr>
  				<tr>
					<td width="150" class="m3">����ó</td>
					<td class="m3">
						<input type="text" name="hp1" class="box" size="3" maxlength="3"
							value="<%=dto.getHp1()%>"> -
						<input type="text" name="hp2" class="box" size="4" maxlength="4"
							value="<%=dto.getHp2()%>"> -
						<input type="text" name="hp3" class="box" size="4" maxlength="4"
							value="<%=dto.getHp3()%>">
					</td>
  				</tr>
  				<tr>
					<td colspan="2" align="center">
						<a href="javascript:check()">[����]</a>
						<a href="<%=request.getContextPath()%>/member/memberAll.jsp?cmd=ALL">[���]</a>
					</td>
  				</tr>
  			</table>
		</form>
	</div>
<%@ include file="../bottom.jsp"%>