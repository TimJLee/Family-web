<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

<jsp:useBean id="obj" class="home.count.count" scope="request" />
<jsp:setProperty property="count" name="obj" />
<h2>Request scope</h2>
<b>obj¿« getCount() »£√‚ :</b>
<jsp:getProperty property="count" name="obj" />
<br>
<jsp:include page="result1.jsp"/>
<jsp:getProperty property="count" name="obj" />