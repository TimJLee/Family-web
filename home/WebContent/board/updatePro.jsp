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
			//비밀번호가 일치할때...
			int res = bdao.updateBoard(bdto);
			if (res>0){ 
				msg = "게시글 수정 성공!! 글목록 페이지로 이동합니다.";
				url = "list.jsp";
			}else {
				msg = "게시글 수정 실패!! 글상세보기 페이지로 이동합니다.";
				url = "content.jsp?num="+bdto.getNum();
			}
		}else {
			//비밀번호가 일치하지 않을때...
			msg = "비밀번호가 틀렸습니다. 다시 입력해 주세요!!";
			url = "updateForm.jsp?num="+bdto.getNum();
		}
%>
<script type="text/javascript">
	alert("<%=msg%>")
	location.href="<%=url%>"
</script>