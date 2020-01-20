<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<html>
<head>
	<title>파일 업로드 테스트	</title>
</head>
<body>
  <div align="center">
    <h2>파일 업로드 테스트</h2>
    <form name="f" method="post" enctype="multipart/form-data" action="resultTest.jsp">
      <table border="1">
        <tr>
          <th>올린이</th>
          <td><input type="text" name="name"></td>
        </tr>
        <tr>
          <th>파일명</th>
          <td><input type="file"" name="filename"></td>
        </tr>
        <tr>
          <td colspan="2" align="center">
            <input type="submit" value="파일올리기">
          </td>
        </tr>
      </table>
    
    </form>
  </div>

</body>
</html>