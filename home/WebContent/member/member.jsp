<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<html>
<head>    
	<link rel="stylesheet" type="text/css" href="../style.css"> 
	<script type="text/javascript">
		function check(){
			if (f.id.value==""){
				alert("���̵� �Է��ϼ���!!")
				f.id.focus()
				return
			}	
			if (!f.passwd.value){
				alert("��й�ȣ�� �Է��ϼ���!!")
				f.passwd.focus()
				return
			}
			/*
			if(f.idDuplication.value != "idCheck"){
				alert("���̵� �ߺ�üũ�� ���ּ���.")
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
					<td colspan="2" align=center class="m2">ȸ������</td>
 				</tr>
				<tr>
					<td width="150" class="m3">�̸�</td>
					<td class="m3">
						<input type="text" name="name" class="box" value="<%=name%>" disabled>
						<input type="hidden" name="name" value="<%=name%>">
					</td>
				</tr>
				<tr>
					<td width="150" class="m3">���̵�</td>
					<td class="m3">
						<input type="text" name="id" class="box">
					</td>
					<%--  
					<td class="m3">
						<form name="idchk" action="idCheck_ok.jsp" method="post">
							<input type="text" name="id" class="box" onkeydown="inputIdChk()">
							<!-- ���̵� �Է¶����� Ű���� �Է½� �߻��ϴ� onkeydown �̺�Ʈ�� �߰��Ѵ�. 
							�� �̺�Ʈ�� ����ϴ� ���� ���� ����ڰ� �ߺ�üũ�� �ϰ� �� �� ���̵� �Է¶��� ��� ������ 
							���̵� ����� ���ο� ���̵� �Է����� ��쿡 ��ó�ϱ� �����̴�. �̷��� �ϸ� �ߺ�üũ�� ���� ���� ������ ó���ǵ��� �Ѵ�.
							 -->
							<input type="submit" value="�ߺ�Ȯ��" class="box">
						</form>
						<input type="hidden" name="idDuplication" value="idUncheck">
						<!-- ���̵� �ߺ�üũ�� �ߴ��� �Ǵ��ϱ� ���� �κ��̴�.
						 <input type="hidden">�� value�� idUncheck �̸� �ߺ�üũ�� ���� ���� ���̴�.
						-->
					</td>
					--%>
  				</tr>
  				<tr>
					<td width="150" class="m3">��й�ȣ</td>
					<td class="m3">
						<input type="password" name="passwd" class="box">
					</td>
  				</tr>
  				<tr>
					<td width="150" class="m3">�ֹι�ȣ</td>
					<td class="m3">
						<input type="text" name="ssn1" class="box" value="<%=ssn1%>" readOnly> -
				<input type="password" name="ssn2" class="box" value="<%=ssn2%>" readOnly>
					</td>
  				</tr>
  				<tr>
					<td width="150" class="m3">�̸���</td>
					<td class="m3">
						<input type="text" name="email" class="box">
					</td>
  				</tr>
  				<tr>
					<td width="150" class="m3">����ó</td>
					<td class="m3">
						<input type="text" name="hp1" class="box" size="3" maxlength="3"> -
						<input type="text" name="hp2" class="box" size="4" maxlength="4"> -
						<input type="text" name="hp3" class="box" size="4" maxlength="4">
					</td>
  				</tr>
  				<tr>
					<td colspan="2" align="center">
						<a href="javascript:check()">[����]</a>
						<a href="#">[���]</a>
					</td>
  				</tr>
  			</table>
		</form>
	</body>
 </html>