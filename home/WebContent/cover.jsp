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
    
		<!-- �������� �ּ�ȭ�� �ֽ� CSS -->
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
	<link href="bootstrap/cover/cover.css" rel="stylesheet">
	<!-- �ΰ����� �׸� -->
	
	<!-- �������� �ּ�ȭ�� �ֽ� �ڹٽ�ũ��Ʈ -->
    <!-- Just for debugging purposes. Don't actually copy these 2 lines! -->
    

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
  	<script type="text/javascript">
		function openContact(){
			alert('������ ����� ��ȭ��ȣ : 010-9462-0956')
			alert('������ ����� �ν�Ÿ�� �̵���. �� ��Ź�帳�ϴ�')
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
            <h1 class="cover-heading">�Ʒ� ��ư�� Ŭ���ϼ���</h1>
            <p class="lead">����ٰ� �������� ����. ���� �ݵ�� �´�. �غ��϶�. ���� ������ �غ� �϶�. ����� ���� �ʸ� ������� ���� ���̴�. ���� ������ �̾��Ͽ����� �� ���� â���ϸ���.</p>
            <p class="lead">
              <a href="<%=request.getContextPath()%>/index.jsp" class="btn btn-lg btn-default">���⸦ Ŭ��</a>
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
