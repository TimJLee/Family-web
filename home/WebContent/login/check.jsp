<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<jsp:useBean id="mbdao" class="home.member.MemberDAO" /> 
<%
		request.setCharacterEncoding("EUC-KR");
		String name = request.getParameter("name");
		String ssn1 = request.getParameter("ssn1");
		String ssn2 = request.getParameter("ssn2");
		String id = request.getParameter("id");
		
		if (name==null || name.trim().equals("")){
			response.sendRedirect("login.jsp");
		 	return; 
		}
		String dbMsg = null;
		if (id==null || id.trim().equals("")){
			dbMsg = mbdao.searchId(name, ssn1, ssn2);
			if (dbMsg==null) dbMsg="���̵� �������� �ʽ��ϴ�.";
			else dbMsg="���̵��"+dbMsg+"�Դϴ�";
		}else {
			dbMsg = mbdao.searchPw(name, ssn1, ssn2, id);
			if (dbMsg==null) dbMsg="�ش������� ��ġ���� �ʽ��ϴ�.";
			else dbMsg="��й�ȣ��"+dbMsg+"�Դϴ�";
		}
%>
<script type="text/javascript">
	alert("<%=dbMsg%>");
	self.close();
</script>







