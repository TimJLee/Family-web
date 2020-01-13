
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
            <li class="active"><a href="<%=request.getContextPath()%>/index.jsp">����</a></li>
            <li><a href="<%=request.getContextPath()%>/board/list.jsp">�Խ���</a></li>
            <li><a href="<%=request.getContextPath()%>/member/memberAll.jsp?cmd=ALL">ȸ������</a></li>
            <li><a href="<%=request.getContextPath()%>/member/memberAll.jsp?cmd=FIND">ȸ��ã��</a></li>
            <li><a href="<%=request.getContextPath()%>/company.jsp">����Ʈ�Ұ�</a></li>
            <%-- 
            <%if(isLogin){ %>
             <li><a href="<%=request.getContextPath()%>/login/logout.jsp">�α׾ƿ�</a></li>
            <%}else{ %>
            <li><a href="<%=request.getContextPath()%>/login/login.jsp">�α���</a></li>
            <%} %>
            --%>
          </ul>
          <%if(isLogin){ %>
          <form class="navbar-form navbar-right">
            <button type="submit" class="btn btn-success" onclick="location.href='<%=request.getContextPath()%>/login/logout.jsp'">�α׾ƿ�</button>
          </form>
          <%}else{ %>
          <form name="f" action="<%=request.getContextPath()%>/login/login_ok.jsp" method="post" class="navbar-form navbar-right">
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
     ���� ���ø� ������  
<link rel="stylesheet" type="text/css" href="style.css">  
 => ��Ÿ�Ͻ�Ʈ ��� �������� �����. ������������� top �� include �ϱ� ����. 
<html>
<head>
  <title>Ȩ������</title>
</head>
<body>
  <div align="center">
    <table border="1" width="800" height="600">
      <tr height="10%">
        <td colspan="2" align="center">
          <a href="index.jsp">main</a> | 
          <a href="login.jsp">�α���</a> |
          <a href="member.jsp">ȸ������</a> | �Խ��� |
          <a href="company.jsp">ȸ��Ұ�</a>
        </td>
      </tr>
      <tr>
        <td width="20%">
          	����޴�
        </td>
        <td> -->