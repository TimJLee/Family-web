<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

    
<%
		String snum = request.getParameter("num");
		if (snum == null || snum.trim().equals("")){
			response.sendRedirect("list.jsp");
			return;
		}
%>
<link rel="stylesheet" type="text/css" href="../style.css">
<br><br><br><br><br>
<div  align="center">
	<b>�� �� ��</b>
	<form name="f" action="deletePro.jsp" method="post">
		<input type="hidden" name="num" value="<%=snum%>" />
		<table class="table" border="1">
			<tr bgcolor="">
				<th>��й�ȣ�� �Է��� �ּ���</th>
			</tr>
			<tr>
				<td align="center">��й�ȣ : <input class="form-control" type="password" name="passwd"></td>
			</tr>
			<tr bgcolor="">
				<td align="center">
					<input type="submit" value="�ۻ���">
					<input type="button" value="�۸��" onclick="location.href='list.jsp'">
				</td>
			</tr>
		</table>
	</form>
</div>




