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
<!-- �������� �ּ�ȭ�� �ֽ� CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">

<!-- �ΰ����� �׸� -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">

<!-- �������� �ּ�ȭ�� �ֽ� �ڹٽ�ũ��Ʈ -->

    <title>Jsp web</title>

    <!-- Bootstrap core CSS -->
    <link href="../../dist/css/bootstrap.min.css" rel="stylesheet">

    <!-- Just for debugging purposes. Don't actually copy these 2 lines! -->
    <!--[if lt IE 9]><script src="../../assets/js/ie8-responsive-file-warning.js"></script><![endif]-->
    <script src="../../assets/js/ie-emulation-modes-warning.js"></script>

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->

    <!-- Custom styles for this template -->
    <link href="bootstrap/index/carousel.css" rel="stylesheet">
     <%
		boolean isLogin = false;
		String loginId = (String)session.getAttribute("id");
		if(loginId != null && !(loginId.trim().equals(""))){
			isLogin = true;
		}
	
	%>
	<script type="text/javascript">
		function openMember(){
			alert('ȸ������ ���� ��ȸ �������� �̵��մϴ�')
			window.open("<%=request.getContextPath()%>/member/memberSsn.jsp","member","width=600,height=400")
		}
		function openBook(){
			<%if(isLogin==true){%>
			alert('�������� �������� �̵��մϴ�')
			window.open("<%=request.getContextPath()%>/book/index.jsp","book","width=1000,height=600")
			<%}else{%>
			alert('�α����� ���� ���ּ���')
			<%}%>
			}
		function openBoard(){
			<%if(isLogin==true){%>
			alert('�Խ��� ����~')
			window.open("<%=request.getContextPath()%>/board/list.jsp","board","width=1000,height=600")
			<%}else{%>
			alert('�α����� ���� ���ּ���')
			<%}%>
			}
		function loginCheck(){
			if (f.id.value==""){
				alert("���̵� �Է��ϼ���!!")
				f.id.focus()
				return
			}
			if (f.passwd.value==""){
				alert("��й�ȣ�� �Է��ϼ���!!")
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
                <li><a href="<%=request.getContextPath()%>/board/list.jsp">�Խ���</a></li>
                <li><a href="<%=request.getContextPath()%>/company.jsp">����Ʈ�Ұ�</a></li>
                <%-- <li><a href="<%=request.getContextPath()%>/login/login.jsp">�α���</a></li> --%>
                
                <li class="dropdown">
                  <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">ȸ������ <span class="caret"></span></a>
                  <ul class="dropdown-menu" role="menu">
                    <li><a href="<%=request.getContextPath()%>/member/memberAll.jsp?cmd=ALL">ȸ������</a></li>
                    <li><a href="<%=request.getContextPath()%>/member/memberAll.jsp?cmd=FIND">ȸ��ã��</a></li>
                    <li class="divider"></li>
                    <li class="dropdown-header">Nav header</li>
                    <li><a href="#">Separated link</a></li>
                    <li><a href="#">One more separated link</a></li>
                  </ul>
                </li>
              </ul>
              <%if(isLogin){ %>
		        <form class="navbar-form navbar-right">
		          <button type="submit" class="btn btn-success" onclick="location.href='<%=request.getContextPath()%>/login/logout.jsp'">�α׾ƿ�</button>
		        </form>
      		  <%}else{ %>
	              <form name="f" class="navbar-form navbar-right" action="<%=request.getContextPath()%>/login/login_ok.jsp" method="post">
			            <div class="form-group">
			              <input type="text" name="id" placeholder="���̵�" class="form-control">
			            </div>
			            <div class="form-group">
			              <input type="password" name="passwd" placeholder="��й�ȣ" class="form-control">
			            </div>
			            <a href="javascript:loginCheck()">
			              <button type="button" class="btn btn-success">�α���</button>
			            </a>
		          </form>
	          <%} %>
            </div>
          </div>
        </nav>

      </div>
    </div>

