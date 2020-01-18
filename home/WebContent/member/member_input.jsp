<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%	
		request.setCharacterEncoding("EUC-KR");
%>
<jsp:useBean id="mbdto" class="home.member.MemberDTO" />
<jsp:setProperty property="*" name="mbdto"/>
<jsp:useBean id="mbdao" class="home.member.MemberDAO" />
<%-- 
<jsp:useBean id="dbPool" class="my.db.ConnectionPoolBean" scope="application" />
<jsp:setProperty property="pool" name="mbdao" value="<%=dbPool%>" />
 --%>
<% 
		if (mbdto.getName()== null || mbdto.getName().trim().equals("")){
			response.sendRedirect("memberSsn.jsp");
			return;
		}
		
		
		else {
			int res = mbdao.insertMember(mbdto); 
			if (res>0){%>
				<script type="text/javascript">
					alert("회원등록성공!! 로그인을 하신 후 이용해 주세요")
					self.close()
				</script>			
			<%}else{ %>
				<script type="text/javascript">
					alert("회원등록실패!! 다시 입력해 주세요")
					location.href="memberSsn.jsp"
				</script>
			<%}
		}%>




