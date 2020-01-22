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
			//비밀번호가 일치할때...
			int res = bdao.deleteBoard(Integer.parseInt(snum));
			if (res>0){
				msg = "게시글 삭제 성공!! 글목록 페이지로 이동합니다.";
				url = "list.jsp";
			}else {
				msg = "게시글 삭제 실패!! 글상세보기 페이지로 이동합니다.";
				url = "content.jsp?num="+snum;
			}
		}else {
			//비밀번호가 일치하지 않을때...
			msg = "비밀번호가 틀렸습니다. 다시 입력해 주세요!!";
			url = "deleteForm.jsp?num="+snum;
		}
%>
<script type="text/javascript">
	alert("<%=msg%>")
	location.href="<%=url%>"
</script>











