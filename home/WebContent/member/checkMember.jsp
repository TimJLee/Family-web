<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!-- 
	넘어온 데이타를 받아서 해당하는 회원이 존재하는지 안하는지를 체크한다
 -->
<jsp:useBean id="mbdao" class="home.member.MemberDAO" />
<%
	request.setCharacterEncoding("EUC-KR");
	String name = request.getParameter("name");
	String ssn1 = request.getParameter("ssn1");
	String ssn2 = request.getParameter("ssn2");
	if (name==null || ssn1==null || ssn2==null || 
	name.trim().equals("") || ssn1.trim().equals("") || ssn2.trim().equals("")){
		response.sendRedirect("memberSsn.jsp");
		return;
	}
	
	boolean isMember = mbdao.checkMember(name, ssn1, ssn2);
	if (isMember){%>
		<script type="text/javascript">
			alert("이미 가입된 회원입니다. 로그인을 해 주세요!!")
			self.close() /* 현재 열려있는 창을 닫는다. */
		</script>		
<%	}else {%>
		<form name="member" action="member.jsp" method="post">
			<input type="hidden" name="name" value="<%=name%>"/>
			<input type="hidden" name="ssn1" value="<%=ssn1%>"/>
			<input type="hidden" name="ssn2" value="<%=ssn2%>"/>
		</form>
		<script type="text/javascript">
			alert("회원가입페이지로 이동합니다.")
			document.member.submit()
		</script>
<%	}%>




















