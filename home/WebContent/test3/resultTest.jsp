<%@page import="com.oreilly.servlet.*,java.io.*"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
   MultipartRequest mr = null;
   String upPath = config.getServletContext().getRealPath("/test3");
   try{
	   mr = new MultipartRequest(request, upPath,10*1024*1024,"EUC-KR");
	   out.println("파일 업로드 성공");
   }catch(IOException e){
	   out.println("파일 업로드 실패");
	   return;
   }
   
   
%>
<h3> 올린이 : </h3>
<%=mr.getParameter("name")%><br>
<br>
<h3>파일명 : </h3>
<%=mr.getFilesystemName("filename")%><br>
<br>
<h3>파일크기 : </h3>
<% File file = mr.getFile("filename");
   int filesize=0;
   if(file != null){
     filesize = (int)file.length();
   }%>
   <%=filesize%>Bytes