<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!-- 
	�Ѿ�� ����Ÿ�� �޾Ƽ� �ش��ϴ� ȸ���� �����ϴ��� ���ϴ����� üũ�Ѵ�
 -->
<jsp:useBean id="mbdao" class="home.member.MemberDAO" />
<%
	request.setCharacterEncoding("EUC-KR");
	String id = request.getParameter("id");
	
	if (id==null|| 
	id.trim().equals("")){
		response.sendRedirect("member.jsp");
		return;
	}
	
	boolean isId = mbdao.checkId(id);
	if (isId){%>
		<script type="text/javascript">
			alert("�̹� �����ϴ� ���̵� �Դϴ�.")
		</script>		
<%	}else {%>
		<script type="text/javascript">
			alert("��� ������ ���̵� �Դϴ�.")
			opener.document.f.idDuplication.value ="idCheck";
		</script>
<%	}%>




















