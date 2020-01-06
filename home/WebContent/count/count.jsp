<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR" import="java.io.*"%>
<%
		//jsp의 생명주기
		//1. jspInit() : jsp파일이 실행될때 제일 먼저 불려가서 실행되는 메소드
		//2. _jspService() : init메소드 실행 후, 또는 init메소드가 없을때 불려가서 실행되는 메소드
		//3. jspDestroy() : 파일 종료시 불려가서 실행되는 메소드
		//init메소드와 destroy메소드는 오버라이드 해준다
%>

<%!
		int count = 0;
		String path = null;
		
		public void jspInit(){
			path = this.getServletContext().getRealPath("count/count.txt");
			//실제 서비스되는 곳의 프로젝트안에 count라는 폴더를 찾고 폴더안에 count.txt 파일을 쓴다.
			FileReader fr = null;
			BufferedReader br = null;
			try{
				fr = new FileReader(path);
				br = new BufferedReader(fr);
				String line = br.readLine();
				if (line != null){
					count = Integer.parseInt(line.trim());
				}
				br.close();
				fr.close();
			}catch(FileNotFoundException e){
				countSaveFile();
			}catch(IOException e){
				countSaveFile();
			}
		}
		
		public void countSaveFile(){
			FileWriter fw = null;
			BufferedWriter bw = null;
			PrintWriter pw = null;
			try{
				fw = new FileWriter(path);
				bw = new BufferedWriter(fw);
				pw = new PrintWriter(bw);
				
				pw.println(count);
				pw.close();
				bw.close();
				fw.close();
			}catch(IOException e){
				e.printStackTrace();
			}
		}
		
		public void jspDestroy(){
			countSaveFile();
		}
%>
<%
		if (session.isNew()){
			count++;
		}

		if (count%10==0){
			countSaveFile();
		}
%>
<b>방문횟수 : </b><br>
<%
   String countStr = String.valueOf(count);
   int len = countStr.length();
   for(int i=0;i<len; ++i){
	   char ch = countStr.charAt(i);%>
	   <img src="<%=request.getContextPath() %>"/img/no<%=ch%>.gif">
<% } %>
















