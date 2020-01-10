<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="java.util.*, home.board.*" %>    
<!-- list.jsp -->
<%@ include file="../top.jsp" %>
<jsp:useBean id="bdao" class="home.board.BoardDataBean" />
<link rel="stylesheet" type="text/css" href="../style.css">
<div align="center">
	<b>글 목 록</b>
	<table border="0" width="100%">
		<tr bgcolor="yellow">
			<td align="right"><a href="writeForm.jsp">글쓰기</a></td>
		</tr>
	</table>
	<table border="1" width="100%">
		<tr bgcolor="green">
			<th>글번호</th>
			<th width="40%">제목</th>
			<th>작성자</th>
			<th>작성일</th>
			<th>조회</th>
			<th>IP</th>
		</tr>
			
<%
		int pageCount = 5;
		String pageNum = request.getParameter("pageNum");
		if (pageNum == null){
			pageNum = "1";
		}
		int currentPage = Integer.parseInt(pageNum);
		int startNum = (currentPage - 1) * pageCount + 1;
		int endNum = startNum + pageCount - 1;
		int numCount = bdao.getMaxCount(); 
		if (endNum > numCount) endNum = numCount;

		List<BoardDBBean> boardList = bdao.listBoard(startNum, endNum);  
		if (boardList == null || boardList.size()==0){%>
		<tr>
			<td colspan="6">등록된 게시글이 없습니다.</td>
		</tr>
<%	}else { 
			for (BoardDBBean dto : boardList){%>
		<tr>
			<td><%=dto.getNum()%></td>
			<td>
<%			if(dto.getRe_level()>0){ %>
					<img src="../img/level.gif" width="<%=dto.getRe_level()*10%>" height="20">
					<img src="../img/re.gif">
<%			} %>			
				<a href="content.jsp?num=<%=dto.getNum()%>"><%=dto.getSubject()%></a>
			</td>
			<td><%=dto.getWriter()%></td>
			<td><%=dto.getReg_date()%></td>
			<td><%=dto.getReadcount()%></td>
			<td><%=dto.getIp()%></td>
		</tr>	
<%		}
		} %>				
	</table>
<%	if (numCount>0){ 
			int pageBlock = 3;
			int maxPage = numCount / pageCount + (numCount%pageCount==0 ? 0 : 1);
			int startPage = (currentPage -1) / pageBlock * pageBlock + 1;
			int endPage = startPage + pageBlock - 1;
			if (endPage > maxPage) endPage = maxPage;
			if (startPage>pageBlock){%>
				[<a href="list.jsp?pageNum=<%=startPage-pageBlock%>">이전</a>]
<%		}
			for (int i=startPage; i<=endPage; ++i){%>
				[<a href="list.jsp?pageNum=<%=i%>"><%=i%></a>]
<%		}			
			if (endPage < maxPage) {%>
				[<a href="list.jsp?pageNum=<%=startPage+pageBlock%>">다음</a>]
<%		}		
		} %>	
</div>
<%@ include file="../bottom.jsp" %>












