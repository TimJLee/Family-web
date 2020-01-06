<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

<jsp:useBean id="obj" class="home.count.count" scope="session" />
<jsp:setProperty property="count" name="obj" />
<h2>Page scope</h2>
<b>obj¿« getCount() »£√‚ :</b>
<jsp:getProperty property="count" name="obj" />
<br>
<a href="result1.jsp">result</a>