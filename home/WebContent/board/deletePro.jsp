<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<jsp:useBean id="bdao" class="home.board.BoardDataBean" />
<%
		String snum = request.getParameter("num");
		String passwd = request.getParameter("passwd");
		if (snum==null || snum.trim().equals("") || passwd==null || passwd.trim().equals("")){
			response.sendRedirect("list.jsp");
			return;
		}
		
		String msg = null, url = null;
		boolean isPass = bdao.isPassword(Integer.parseInt(snum), passwd);
		if (isPass){  
			//��й�ȣ�� ��ġ�Ҷ�...
			int res = bdao.deleteBoard(Integer.parseInt(snum));
			if (res>0){
				msg = "�Խñ� ���� ����!! �۸�� �������� �̵��մϴ�.";
				url = "list.jsp";
			}else {
				msg = "�Խñ� ���� ����!! �ۻ󼼺��� �������� �̵��մϴ�.";
				url = "content.jsp?num="+snum;
			}
		}else {
			//��й�ȣ�� ��ġ���� ������...
			msg = "��й�ȣ�� Ʋ�Ƚ��ϴ�. �ٽ� �Է��� �ּ���!!";
			url = "deleteForm.jsp?num="+snum;
		}
%>
<script type="text/javascript">
	alert("<%=msg%>")
	location.href="<%=url%>"
</script>











