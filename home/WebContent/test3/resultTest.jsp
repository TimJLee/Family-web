<%@page import="com.oreilly.servlet.*,java.io.*"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
   MultipartRequest mr = null;
   String upPath = config.getServletContext().getRealPath("/test3");
   try{
	   mr = new MultipartRequest(request, upPath,10*1024*1024,"EUC-KR");
	   out.println("���� ���ε� ����");
   }catch(IOException e){
	   out.println("���� ���ε� ����");
	   return;
   }
   
   
%>
<h3> �ø��� : </h3>
<%=mr.getParameter("name")%><br>
<br>
<h3>���ϸ� : </h3>
<%=mr.getFilesystemName("filename")%><br>
<br>
<h3>����ũ�� : </h3>
<% File file = mr.getFile("filename");
   int filesize=0;
   if(file != null){
     filesize = (int)file.length();
   }%>
   <%=filesize%>Bytes