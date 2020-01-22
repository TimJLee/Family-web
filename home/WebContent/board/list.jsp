<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="java.util.*, home.board.*" %>    
<!-- list.jsp -->
<%@ include file="../top.jsp"%>

<jsp:useBean id="bdao" class="home.board.BoardDataBean" />

<br><br><br><br><br>
<div class="container">

	<table class="table table-hover">
		<thead>
		<tr>
			<th>글번호</th>
			<th width="40%">제목</th>
			<th>작성자</th>
			<th>작성일</th>
			<th>조회</th>
		</tr>
		</thead>
		<tbody>
<%
		int pageSize = 5;
		String pageNum = request.getParameter("pageNum");
		if (pageNum == null){
			pageNum = "1";
		}
		int currentPage = Integer.parseInt(pageNum);
		int startRow = (currentPage-1) * pageSize + 1;
		int count = bdao.getCount();
		int number = count - (currentPage-1)*pageSize;
		
		List<BoardDBBean> boardList = bdao.listBoard(startRow, pageSize*currentPage);  
		if (boardList == null || boardList.size()==0){%>
		<tr>
			<td colspan="6">등록된 게시글이 없습니다.</td>
		</tr>
<%	}else { 
			for (BoardDBBean dto : boardList){%>
		<tr>
			<td><%=number--%></td>
			<td>
			<% if(dto.getRe_level()>0) {%>
				<img src="../img/level.gif" width="<%=dto.getRe_level()*10%>" height="16"/>
				<img src="../img/re.gif"/>
			<%} %>
			<a href="content.jsp?num=<%=dto.getNum()%>"><%=dto.getSubject()%></a>
			<% if(dto.getReadcount()>10){%>
				<img src="../img/hot.gif">
			<% } %>
			</td>
			<td><%=dto.getWriter()%></td>
			<td><%=dto.getReg_date()%></td>
			<td><%=dto.getReadcount()%></td>
		</tr>	
<%		}
		} %>			
		</tbody>	
	</table>
	<hr/>
	<a class="btn btn-default pull-right" href="writeForm.jsp">글쓰기</a>
<%
	if(count>0){
		int totPage = count / pageSize + (count%pageSize==0 ? 0 : 1);
		int pageBlock = 3;
		int startPage = (currentPage-1) / pageBlock * pageBlock + 1;
		int endPage = startPage + pageBlock - 1;
		if (endPage>totPage) endPage = totPage;%>
		
		<br><br><br>
		<div class="text-center">
		  <ul class="pagination">
			<%if(startPage != 1){%>
			    <li><a href="list.jsp?pageNum=<%=startPage-pageBlock%>">이전</a></li>
			<%}%>
			<%for(int i=startPage; i<=endPage; ++i){%>
				<li><a href="list.jsp?pageNum=<%=i%>"><%=i%></a></li>
			<%}  
			if(totPage>endPage){%>
				<li><a href="list.jsp?pageNum=<%=startPage+pageBlock%>">다음</a></li>
			<%}%> 
		  </ul>
		</div>
	<%}%>



<%@ include file="../bottom.jsp"%>










