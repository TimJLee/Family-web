<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<jsp:useBean id="obj" class="home.count.count" scope="request" />
<h1>Result1.jsp페이지 입니다</h1>
<b>request : obj의 getCount() = </b>
<jsp:getProperty property="count" name="obj" />
<br>
<h2> 다시 돌아온 값</h2>
<jsp:setProperty property="count" name="obj" value="100"/>