<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!-- login.jsp-->
<link rel="stylesheet" type="text/css" href="../style.css"> 
<script type="text/javascript">
	function loginCheck(){
		
		if (f.id.value==""){
			alert("���̵� �Է��ϼ���!!")
			f.id.focus()
			return
		}
		if (f.passwd.value==""){
			alert("��й�ȣ�� �Է��ϼ���!!")
			f.passwd.focus()
			return
		}
		document.f.submit();
	}
	function openMember(){
		alert('ȸ������ ���� ��ȸ �������� �̵��մϴ�')
		window.open("<%=request.getContextPath()%>/member/memberSsn.jsp","member","width=600,height=400")
	}
	function searchMember(mode){
		window.open("<%=request.getContextPath()%>/login/search.jsp?mode="+mode,
			"search", "width=600, height=450")
	}
</script>
<%
   String name = null, value = null;
   Cookie[] cks = request.getCookies();
   if(cks != null && cks.length != 0){
	   for(int i=0; i<cks.length; ++i){
		   name = cks[i].getName();
		   if(name.equals("saveId")){
			   value = cks[i].getValue();
			   break;
		   }
	   }
   }
   //value ���� null �̸� ��Ű�� ���� ���� ���Ѵ�.(save_id üũ ���ߴ�.)
%>
<br>
<br>
<p>
<img src="../img/tm_login.gif" width=100 height="13" border="0" 
	align=center ALT="ȸ�� �α���">
<form name="f" action="login_ok.jsp" method="post">
	<table width="60%" align="center" height="120">
		<tr>
			<td align="right" width="30%">
				<img src="../img/id01.gif" 
				width="28" height="11" border="0" alt="���̵�">&nbsp;&nbsp;
			</td>
			<td width="40%">
			<%if(value==null){ %>
				<input type="text" name="id" tabindex="1">
			<%}else{ %>
				<input type="text" name="id" value="<%=value%>" tabindex="1">
			<%} %>
			</td>
			<td rowspan="2" width="30%" valign="middle">
				<a href="javascript:loginCheck()">
					<img src="../img/bt_login.gif" border="0" alt="�α���"  tabindex="3">&nbsp;&nbsp;<br>
				</a>
				<nobr>
				<%if(value==null){ %>
					<input type="checkbox" name="saveId">
				<%}else{ %>
					<input type="checkbox" name="saveId" checked>
				<%} %>
					<font face="����" size="2">���̵� ����ϱ�</font>
				</nobr>
			</td>
		</tr>
		<tr>
			<td align="right">
				<img src="../img/pwd.gif" 
							width="37" height="11" alt="��й�ȣ">
			</td>
			<td>
				<input type="password" name="passwd"  tabindex="2">
			</td>
		</tr>
		<tr>
			<td colspan="3" align="center">
				<a href="javascript:openMember()">
					<img src="../img/bt_join.gif" width="60" height="22" border="0" alt="ȸ������">
 				</a>	
 				<a href="javascript:searchMember('id')">
 					<img src="../img/bt_search_id.gif" border="0" width="60" height="22" alt="���̵� ã��">
 				</a>	
 				<a href="javascript:searchMember('pw')">
					<img src="../img/bt_search_pw.gif" border="0" width="60" height="22" alt="��й�ȣ ã��">
				</a>
								
			</td>
		</tr>
	</table>
</form> 
<%@ include file="../bottom.jsp"%>