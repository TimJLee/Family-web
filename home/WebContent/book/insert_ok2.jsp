<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR" import="java.sql.*"%>
<!-- 
	1. 넘어온 데이터를 받아오기
	2. 넘어온 데이타의 유효성 검사
	3. DB와 연결하기
	4. 쿼리를 전송
	5. 전송결과에 따라 전체보기를 가던지, 초기화면으로 가던지
 -->
 <% request.setCharacterEncoding("EUC-KR"); 
 //post방식에서의 한글처리. 
 	String name = request.getParameter("name");
 	String publisher = request.getParameter("publisher");
 	String writer = request.getParameter("writer");
 	String price = request.getParameter("price");
 //  파라메터로 넘어오는 데이터는 모두 String 이다. 
 	if(name==null || name.trim().equals("") || publisher==null ||
 		publisher.trim().equals("") || writer==null || writer.trim().equals("")
 		|| price==null || price.trim().equals("")){%>
 		<script type="text/javascript"> 
 			alert("도서등록내용부족.다시 입력하세요.");
 			history.back(); <!-- 이전창으로 돌아가기 --> 
 		</script>
 <%		return; //이걸 적어야, history back 하면서 아래의 명령어들 실행을 안함.
 	}
 	Class.forName("oracle.jdbc.driver.OracleDriver");
 	String url= "jdbc:oracle:thin:@localhost:1521:xe";
 	String user = "jsp";
 	String pass = "jsp"; 
 	String sql = "insert into book values (?,?,?,?,sysdate)";
 	//joindate 자리에 sysdate 함수를 실행시켜 현재 날짜가 입력되도록 한다.
 	Connection con = DriverManager.getConnection(url,user,pass);
 	PreparedStatement ps = con.prepareStatement(sql); //동적쿼리 사용
 	ps.setString(1,name);
 	ps.setString(2,writer);
 	ps.setString(3,publisher);
 	ps.setInt(4,Integer.parseInt(price));
 	int res=ps.executeUpdate();
 	//res값이 1이상이면 한개이상 insert 성공, 0이면 insert 실패
 	if(res>0){%> 
 	<script type="text/javascript">
 		alert("도서등록성공! 도서보기페이지로 이동합니다.");
 		location.href="list.jsp";
 	</script>
 <%	}else{ %>
 	<script type="text/javascript">
 		alert("도서등록실패! 도서등록페이지로 이동합니다.");
 		location.href="insert.jsp";
 	</script>
 <%	} 
 	ps.close();
 	con.close();
 %>
 		