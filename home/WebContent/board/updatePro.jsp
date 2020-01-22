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

		String msg = null, url = null;
		boolean isPass = bdao.isPassword(bdto.getNum(), bdto.getPasswd());
		if (isPass){  
			//��й�ȣ�� ��ġ�Ҷ�...
			int res = bdao.updateBoard(bdto);
			if (res>0){ 
				msg = "�Խñ� ���� ����!! �۸�� �������� �̵��մϴ�.";
				url = "list.jsp";
			}else {
				msg = "�Խñ� ���� ����!! �ۻ󼼺��� �������� �̵��մϴ�.";
				url = "content.jsp?num="+bdto.getNum();
			}
		}else {
			//��й�ȣ�� ��ġ���� ������...
			msg = "��й�ȣ�� Ʋ�Ƚ��ϴ�. �ٽ� �Է��� �ּ���!!";
			url = "updateForm.jsp?num="+bdto.getNum();
		}
%>
<script type="text/javascript">
	alert("<%=msg%>")
	location.href="<%=url%>"
</script>