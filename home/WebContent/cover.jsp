<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" href="../../favicon.ico">

    <title>Cover Page</title>
		
    <!-- Bootstrap core CSS -->
    
    <!-- Custom styles for this template -->
    
		<!-- 합쳐지고 최소화된 최신 CSS -->
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
	<link href="bootstrap/cover/cover.css" rel="stylesheet">
	<!-- 부가적인 테마 -->
	
	<!-- 합쳐지고 최소화된 최신 자바스크립트 -->
    <!-- Just for debugging purposes. Don't actually copy these 2 lines! -->
    

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
  	<script type="text/javascript">
		function openContact(){
			alert('개발자 이재용 전화번호 : 010-9462-0956')
			alert('개발자 이재용 인스타로 이동중. 디엠 부탁드립니다')
			window.location.href="https://instagram.com/tim_j.lee"
		}
	</script>
  </head>

  <body>

    <div class="site-wrapper">

      <div class="site-wrapper-inner">

        <div class="cover-container">

          <div class="masthead clearfix">
            <div class="inner">
              <h3 class="masthead-brand">Tim</h3>
              <nav>
                <ul class="nav masthead-nav">
                  <li class="active"><a href="<%=request.getContextPath()%>/index.jsp">Home</a></li>
                  <li><a href="https://timjlee.github.io">Blog</a></li>
                  <li><a href="javascript:openContact()">Contact</a></li>
                </ul>
              </nav>
            </div>
          </div>

          <div class="inner cover">
            <h1 class="cover-heading">아래 버튼을 클릭하세요</h1>
            <p class="lead">시작은 미약하였으나 그 끝은 창대하리라.</p>
            <p class="lead">
              <a href="<%=request.getContextPath()%>/index.jsp" class="btn btn-lg btn-default">여기를 클릭</a>
            </p>
          </div>

          <div class="mastfoot">
            <div class="inner">
              <p>Cover template for <a href="http://getbootstrap.com">Bootstrap</a>, by <a href="https://github.com/TimJLee/jsp_project">@Tim_J.Lee</a>.</p>
            </div>
          </div>

        </div>

      </div>

    </div>

    <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
    
    <!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
  </body>
</html>
