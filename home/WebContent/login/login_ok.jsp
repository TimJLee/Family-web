<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
   request.setCharacterEncoding("EUC-KR");
   String saveId = request.getParameter("saveId");
%>
<jsp:useBean id="check" class="home.login.LoginCheck"/>
<jsp:setProperty property="*" name="check"/>

<%
   if(check.getId()==null || check.getId().trim().equals("")){
     response.sendRedirect("login.jsp");
     return;
   }
   String msg=null;
   String url="login.jsp";
   int res = check.loginCheck();
   
   if(res == check.OK){
	   session.setAttribute("id",check.getId());
	   /* 세션 생성.
	   로그인 성공 후 top 페이지로 넘어갔을 때에도 현재 로그인 되어있다는 상태를 유지하기 위해서임.
	   이로 인해, login 후 index 페이지로 넘어갔을 때 top에는 로그인이 아닌 로그아웃이라는 탭으로 이름이
	   변경됨을 알 수 있음.
	   */
	   Cookie loginCookie = new Cookie("saveId", check.getId());
	   if(saveId != null){ //html 에서 체크박스 체크 안된 상태로 넘어가면 null임. 반대는 on
		   loginCookie.setMaxAge(60*60*24); // 초단위 이므로 이건 하루를 의미함.
	   }else{
		   loginCookie.setMaxAge(0);
	   }
	   response.addCookie(loginCookie);
	   /*
	   쿠키를 사용해서 아이디 기억하기 기능 생성
	   */
	   msg = check.getId()+"님 로그인 되었습니다.";
	   url = request.getContextPath() + "/index.jsp";
   }else if(res == check.NOT_ID){
	   msg = "존재하지 않는 아이디 입니다. 확인 후 다시 로그인 해 주세요";
   }else if(res == check.NOT_PWD){
	   msg = "비밀번호가 일치하지 않습니다. 확인 후 다시 로그인 해 주세요";
   }else if(res == check.ERROR){
	   msg = "서버오류 발생. 관리자에게 문의하세요";
   }
%>
<script type="text/javascript">
  alert("<%=msg%>")
  location.href="<%=url%>"

</script>