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
			alert("�̸��� �Է��ϼ���!!");
			f.name.focus();
			return;
		}
		if (f.ssn1.value==""){
			alert("�ֹι�ȣ ���ڸ��� �Է��ϼ���!!");
			f.ssn1.focus();
			return;
		}
		if (f.ssn2.value==""){
			alert("�ֹι�ȣ ���ڸ��� �Է��ϼ���!!");
			f.ssn2.focus();
			return;
		}
		if (mode=="pw" && f.id.value==""){
			alert("���̵� �Է��ϼ���!!");
			f.id.focus();
			return;
		}
		document.f.submit();
	}
</script>
<div align="center">
	<hr color="green" width="300">
<%	if(mode.equals("id")){%>
		<h2>�� �� �� ã ��</h2>
<%	}else { %>
		<h2>�� �� �� ȣ ã ��</h2>
<%	} %>	
	<hr color="green" width="300">
	<form name="f" action="check.jsp" method="post">
		<table width="500" class="outline">
			<tr>
				<th>�̸�</th>
				<td><input type="text" name="name" class="box"></td>
			</tr>
			<tr>
				<th>�ֹι�ȣ</th>
				<td><input type="text" name="ssn1" class="box" maxlength="6"> -
						<input type="password" name="ssn2" class="box" maxlength="7"></td>
			</tr>
<%	if (mode.equals("pw")){ %>
			<tr>
				<th>���̵�</th>
				<td><input type="text" name="id" class="box"></td>
			</tr>
<%	} %>			
			<tr>
				<td colspan="2" align="center">
					<a href="javascript:check('<%=mode%>')">[����]</a>
					<a href="javascript:self.close()">[���]</a>
				</td>
			</tr>	
		</table>
	</form>
</div>









