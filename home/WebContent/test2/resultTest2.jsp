<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
   Cookie[] cks = request.getCookies();
   if(cks != null || cks.length != 0){
	   for(int i=0;i<cks.length; ++i){
		   String name = cks[i].getName();
		   String value = cks[i].getValue();
		   out.println("ÄíÅ°ÀÌ¸§ : " + name + ", ÄíÅ°°ª: "+ value);
	   }
   }


%>