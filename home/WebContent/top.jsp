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
<!-- 합쳐지고 최소화된 최신 CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">

<!-- 부가적인 테마 -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">

<!-- 합쳐지고 최소화된 최신 자바스크립트 -->

    <title>Jsp web</title>

    <!-- Bootstrap core CSS -->
    <!-- <link href="../../dist/css/bootstrap.min.css" rel="stylesheet">  -->

    <!-- Just for debugging purposes. Don't actually copy these 2 lines! -->
    <!--[if lt IE 9]><script src="../../assets/js/ie8-responsive-file-warning.js"></script><![endif]-->
    <script src="../../assets/js/ie-emulation-modes-warning.js"></script>

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->

    <!-- Custom styles for this template -->
    <link href="<%=request.getContextPath()%>/bootstrap/index/carousel.css" rel="stylesheet">
     <%
		boolean isLogin = false;
		String loginId = (String)session.getAttribute("id");
		if(loginId != null && !(loginId.trim().equals(""))){
			isLogin = true;
		}
	
	%>
	<script type="text/javascript">
		function check(){
			if (board.writer.value==""){
				alert("이름을 입력해 주세요!!")
				board.writer.focus()
				return false
			}
			if (board.subject.value==""){
				alert("제목을 입력해 주세요!!")
				board.subject.focus()
				return false
			}
			if (board.content.value==""){
				alert("내용을 입력해 주세요!!")
				board.content.focus()
				return false
			}
			if (board.passwd.value==""){
				alert("비밀번호를 입력해 주세요!!")
				board.passwd.focus()
				return false
			}
			return true
		}
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
		function openBoard(){
			<%if(isLogin==true){%>
			alert('게시판 입장~')
			window.open("<%=request.getContextPath()%>/board/list.jsp","board","width=1000,height=600")
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
  </head>
<!-- NAVBAR
================================================== -->
  <body>
    <div class="navbar-wrapper">
      <div class="container">

        <nav class="navbar navbar-inverse navbar-static-top">
          <div class="container">
            <div class="navbar-header">
              <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
              </button>
              <a class="navbar-brand" href="<%=request.getContextPath()%>/cover.jsp">TIM</a>
            </div>
            <div id="navbar" class="navbar-collapse collapse">
              <ul class="nav navbar-nav">
                <li class="active"><a href="<%=request.getContextPath()%>/index.jsp">Home</a></li>
                <li><a href="<%=request.getContextPath()%>/board/list.jsp">게시판</a></li>
                <li><a href="<%=request.getContextPath()%>/company.jsp">사이트소개</a></li>
                <li><a href="javascript:openMember()">회원가입</a></li>
                
                <li class="dropdown">
                  <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">회원관리 <span class="caret"></span></a>
                  <ul class="dropdown-menu" role="menu">
                    <li><a href="<%=request.getContextPath()%>/member/memberAll.jsp?cmd=ALL">회원보기</a></li>
                    <li><a href="<%=request.getContextPath()%>/member/memberAll.jsp?cmd=FIND">회원찾기</a></li>
                    <li class="divider"></li>
                    <li class="dropdown-header">Nav header</li>
                    <li><a href="#">Separated link</a></li>
                    <li><a href="#">One more separated link</a></li>
                  </ul>
                </li>
              </ul>
              <%if(isLogin){ %>
		        <form class="navbar-form navbar-right">
		          <button type="submit" class="btn btn-success" onclick="location.href='<%=request.getContextPath()%>/login/logout.jsp'">로그아웃</button>
		        </form>
      		  <%}else{ %>
	              <form name="f" class="navbar-form navbar-right" action="<%=request.getContextPath()%>/login/login_ok.jsp" method="post">
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
            </div>
          </div>
        </nav>

      </div>
    </div>

