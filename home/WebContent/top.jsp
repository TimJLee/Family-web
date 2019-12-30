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
    <link href="bootstrap-3.3.2/jumbotron/jumbotron.css" rel="stylesheet">


    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
  </head>

  <body>

    <nav class="navbar navbar-inverse navbar-fixed-top">
      <div class="container">
        <div class="navbar-header">
          <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a class="navbar-brand" href="#">jsp-project</a>
        </div>
        <div id="navbar" class="collapse navbar-collapse">
          <ul class="nav navbar-nav">
            <li class="active"><a href="index.jsp">main</a></li>
            <li><a href="#about">게시판</a></li>
            <li><a href="company.jsp">사이트소개</a></li>
            <!--<li><a href="login.jsp">로그인</a></li>-->
          </ul>
          <form class="navbar-form navbar-right">
            <div class="form-group">
              <input type="text" placeholder="id" class="form-control">
            </div>
            <div class="form-group">
              <input type="password" placeholder="Password" class="form-control">
            </div>
            <button type="submit" class="btn btn-success">Sign in</button>
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