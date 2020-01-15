<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!-- login.jsp-->

<html lang="en"><head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="Mark Otto, Jacob Thornton, and Bootstrap contributors">
    <meta name="generator" content="Jekyll v3.8.6">
    <title>로그인 페이지</title>
    
<script type="text/javascript">
	function loginCheck(){
		
		if (f.id.value==""){
			alert("아이디를 입력하세요!!")
			f.id.focus()
			return
		}
		if (f.passwd.value==""){
			alert("비밀번호를 입력하세요!!")
			f.passwd.focus()
			return
		}
		document.f.submit();
	}
	function openMember(){
		alert('회원가입 유무 조회 페이지로 이동합니다')
		window.open("<%=request.getContextPath()%>/member/memberSsn.jsp","member","width=600,height=400")
	}
	function searchMember(mode){
		window.open("<%=request.getContextPath()%>/login/search.jsp?mode="+mode,
			"search", "width=600, height=450")
	}
</script>
<%
   String name = null, value = null;
   Cookie[] cks = request.getCookies();
   if(cks != null && cks.length != 0){
	   for(int i=0; i<cks.length; ++i){
		   name = cks[i].getName();
		   if(name.equals("saveId")){
			   value = cks[i].getValue();
			   break;
		   }
	   }
   }
   //value 값이 null 이면 쿠키에 값이 존재 안한다.(save_id 체크 안했다.)
%>



  

    <!-- Bootstrap core CSS -->
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">

    <!-- Favicons -->
<meta name="theme-color" content="#563d7c">


    <style>
      .bd-placeholder-img {
        font-size: 1.125rem;
        text-anchor: middle;
        -webkit-user-select: none;
        -moz-user-select: none;
        -ms-user-select: none;
        user-select: none;
      }

      @media (min-width: 768px) {
        .bd-placeholder-img-lg {
          font-size: 3.5rem;
        }
      }
    </style>
    <!-- Custom styles for this template -->
    <link href="../bootstrap/login/floating-labels.css" rel="stylesheet">
  </head>
  <body>
    <form class="form-signin" name="f" action="login_ok.jsp" method="post">
  <div class="text-center mb-4">
    <img class="mb-4" src="../img/logmain.jpg" alt="" width="120" height="120">
    <h1 class="h3 mb-3 font-weight-normal">권세 중딩 축하</h1>
    <p>로그인 없이 사이트 둘러보기 <a href="<%=request.getContextPath()%>/index.jsp">Go</a></p>
  </div>

  <div class="form-label-group">
    <%if(value==null){ %>
    <input type="text" id="inputId" name="id" class="form-control" placeholder="아이디" required="" autofocus="">
    <%}else{ %>
    <input type="text" id="inputId" name="id" value="<%=value%>" class="form-control" placeholder="아이디" required="" autofocus="">

    <%} %>
    <label for="inputId">아이디</label>
  </div>

  <div class="form-label-group">
    <input type="password" id="inputPassword" name="passwd" class="form-control" placeholder="비밀번호" required="">
    <label for="inputPassword">비밀번호</label>
  </div>

  <div class="checkbox mb-3">
    <label>
      <%if(value==null){ %>
      <input type="checkbox" name="saveId">
      <%}else{ %>
        <input type="checkbox" name="saveId" checked>
      <%} %>
      아이디 기억하기
    </label>
    <div align="right">
    <a href="javascript:searchMember('pw')"> 비번 찾기
    <a href="javascript:searchMember('id')"> 아이디 찾기
    </div>
  </div>
   
  </div>
  <a href="javascript:loginCheck()">
    <button class="btn btn-lg btn-primary btn-block" >로그인</button>
  </a><br>
  
  <input class="btn btn-lg btn-primary btn-block" type="button" value="회원가입" onClick="javascript:openMember()">
  <p class="mt-5 mb-3 text-muted text-center">&copy; Tim_J.Lee</p>
</form>


</body></html>