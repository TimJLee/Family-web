<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<% request.setCharacterEncoding("EUC-KR");%>
<jsp:useBean id="bdto" class="home.board.BoardDBBean" />
<jsp:setProperty property="*" name="bdto"/>
<jsp:useBean id="bdao" class="home.board.BoardDataBean" />
<%
		if (bdto.getWriter()==null || bdto.getWriter().trim().equals("")){
			response.sendRedirect("list.jsp");
			return;
		}
		
		bdto.setIp(request.getRemoteAddr());
		int res = bdao.insertBoard(bdto);
		String msg = null, url = null;
		if (res>0){
			msg = "�۵�� ����!! �۸���������� �̵��մϴ�.";
			url = "list.jsp";
		}else {
			msg = "�۵�� ����!! �۵���������� �̵��մϴ�.";
			url = "writeForm.jsp";
		}
%>
<script type="text/javascript">
	alert("<%=msg%>")
	location.href="<%=url%>"
</script>














