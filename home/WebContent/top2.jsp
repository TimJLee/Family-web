
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>


<html lang="en"><head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" href="../../favicon.ico">

    <title>Jumbotron Template for Bootstrap</title>

    <!-- Bootstrap core CSS -->
    <link href="bootstrap-3.3.2/dist/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="bootstrap-3.3.2/jumbotron/sticky-footer.css" rel="stylesheet">
    <link href="bootstrap-3.3.2/jumbotron/jumbotron.css" rel="stylesheet">
    <%
		boolean isLogin = false;
		String loginId = (String)session.getAttribute("id");
		if(loginId != null && !(loginId.trim().equals(""))){
			isLogin = true;
		}
	
	%>
	<script type="text/javascript">
		function openMember(){
			alert('회원가입 유무 조회 페이지로 이동합니다')
			window.open("<%=request.getContextPath()%>/member/memberSsn.jsp","member","width=600,height=400")
		}
		function openBook(){
			<%if(isLogin==true){%>
			alert('도서관리 페이지로 이동합니다')
			window.open("<%=request.getContextPath()%>/book/index.jsp","book","width=1000,height=600")
			<%}else{%>
			alert('로그인을 먼저 해주세요')
			<%}%>
			}
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
	</script>
	
    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
  </head>

  <body>
	<%-- 
	<%
		boolean isLogin = false;
		String loginId = (String)session.getAttribute("id");
		if(loginId != null && !(loginId.trim().equals(""))){
			isLogin = true;
		}
	
	%>
	--%>
    <nav class="navbar navbar-inverse navbar-fixed-top">
      <div class="container">
        <div class="navbar-header">
          <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a class="navbar-brand" href="#">TOPCIT</a>
        </div>
        <div id="navbar" class="collapse navbar-collapse">
          <ul class="nav navbar-nav">
            <li class="active"><a href="<%=request.getContextPath()%>/index.jsp">메인</a></li>
            <li><a href="<%=request.getContextPath()%>/board/list.jsp">게시판</a></li>
            <li><a href="<%=request.getContextPath()%>/member/memberAll.jsp?cmd=ALL">회원보기</a></li>
            <li><a href="<%=request.getContextPath()%>/member/memberAll.jsp?cmd=FIND">회원찾기</a></li>
            <li><a href="<%=request.getContextPath()%>/company.jsp">사이트소개</a></li>
            <%-- 
            <%if(isLogin){ %>
             <li><a href="<%=request.getContextPath()%>/login/logout.jsp">로그아웃</a></li>
            <%}else{ %>
            <li><a href="<%=request.getContextPath()%>/login/login.jsp">로그인</a></li>
            <%} %>
            --%>
          </ul>
          <%if(isLogin){ %>
          <form class="navbar-form navbar-right">
            <button type="submit" class="btn btn-success" onclick="location.href='<%=request.getContextPath()%>/login/logout.jsp'">로그아웃</button>
          </form>
          <%}else{ %>
          <form name="f" action="<%=request.getContextPath()%>/login/login_ok.jsp" method="post" class="navbar-form navbar-right">
	        <div class="form-group">
	          <input type="text" name="id" placeholder="아이디" class="form-control">
	        </div>
            <div class="form-group">
              <input type="password" name="passwd" placeholder="비밀번호" class="form-control">
            </div>
            <a href="javascript:loginCheck()">
            	
              <button type="button" class="btn btn-success">로그인</button>
            </a>
          </form>
          <%} %>
        </div><!--/.nav-collapse -->

<!-- 
        <div id="navbar" class="navbar-collapse collapse">
          <form class="navbar-form navbar-right">
            <div class="form-group">
              <input type="text" placeholder="id" class="form-control">
            </div>
            <div class="form-group">
              <input type="password" placeholder="Password" class="form-control">
            </div>
            <button type="submit" class="btn btn-success">Sign in</button>
          </form>
        </div>
 -->
      </div>
    </nav>
    
<!-- 
     기존 템플릿 페이지  
<link rel="stylesheet" type="text/css" href="style.css">  
 => 스타일시트 모든 페이지에 적용됨. 모든페이지에서 top 을 include 하기 때문. 
<html>
<head>
  <title>홈페이지</title>
</head>
<body>
  <div align="center">
    <table border="1" width="800" height="600">
      <tr height="10%">
        <td colspan="2" align="center">
          <a href="index.jsp">main</a> | 
          <a href="login.jsp">로그인</a> |
          <a href="member.jsp">회원가입</a> | 게시판 |
          <a href="company.jsp">회사소개</a>
        </td>
      </tr>
      <tr>
        <td width="20%">
          	서브메뉴
        </td>
        <td> -->