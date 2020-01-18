<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!-- 
	넘어온 데이타를 받아서 해당하는 회원이 존재하는지 안하는지를 체크한다
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
			alert("이미 존재하는 아이디 입니다.")
		</script>		
<%	}else {%>
		<script type="text/javascript">
			alert("사용 가능한 아이디 입니다.")
			opener.document.f.idDuplication.value ="idCheck";
		</script>
<%	}%>




















