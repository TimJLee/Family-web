<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="Mark Otto, Jacob Thornton, and Bootstrap contributors">
    <meta name="generator" content="Jekyll v3.8.6">
    <title>����� Ȩ������</title>

    <link rel="canonical" href="https://getbootstrap.com/docs/4.4/examples/carousel/">

    <!-- Bootstrap core CSS -->
	<link href="bootstrap-4.4.1/css/bootstrap.min.css" rel="stylesheet" >

    <!-- Favicons -->

<meta name="theme-color" content="#563d7c">
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
    <link href="bootstrap-4.4.1/index/carousel.css" rel="stylesheet">
  </head>
  <body>
    <header>
  <nav class="navbar navbar-expand-md navbar-dark fixed-top bg-dark">
    <a class="navbar-brand" href="#">�����</a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarCollapse" aria-controls="navbarCollapse" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>

    <div class="collapse navbar-collapse" id="navbarCollapse">
      <ul class="navbar-nav mr-auto">
        <li class="nav-item active">
          <a class="nav-link" href="<%=request.getContextPath()%>/index.jsp">����</a>
          <!--<a class="nav-link" href="#">Home <span class="sr-only">(current)</span></a>-->
        </li>
        <li class="nav-item">
          <a class="nav-link" href="<%=request.getContextPath()%>/board/list.jsp">�Խ���</a>
        </li>
        <li class="nav-item">
            <a class="nav-link" href="<%=request.getContextPath()%>/member/memberAll.jsp?cmd=ALL">ȸ������</a>
        </li>
        <li class="nav-item">
            <a class="nav-link" href="<%=request.getContextPath()%>/member/memberAll.jsp?cmd=FIND">ȸ��ã��</a>
        </li>
        <li class="nav-item">
            <a class="nav-link" href="<%=request.getContextPath()%>/company.jsp">����Ʈ�Ұ�</a>
        </li>
      </ul>
      
      <%if(isLogin){ %>
        <form class="form-inline mt-2 mt-md-0">
          <button type="submit" class="btn btn-outline-success my-2 my-sm-0" onclick="location.href='<%=request.getContextPath()%>/login/logout.jsp'">�α׾ƿ�</button>
        </form>
      <%}else{ %>
        <form name="f" action="<%=request.getContextPath()%>/login/login_ok.jsp" method="post" class="form-inline mt-2 mt-md-0">
          <div class="form-group"> <!-- this-->
            <input type="text" name="id" placeholder="���̵�" class="form-control mr-sm-2">
          </div>
          <div class="form-group">
            <input type="password" name="passwd" placeholder="��й�ȣ" class="form-control mr-sm-2">
          </div>
          <a href="javascript:loginCheck()">
            <button type="button" class="btn btn-outline-success my-2 my-sm-0">�α���</button>
          </a>
        </form>
      <%} %>
    </div>
  </nav>
</header>