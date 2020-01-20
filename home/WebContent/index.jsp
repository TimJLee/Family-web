<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

<%@ include file="top.jsp"%>
<!-- Carousel
    ================================================== -->
    <div id="myCarousel" class="carousel slide" data-ride="carousel">
      <!-- Indicators -->
      <ol class="carousel-indicators">
        <li data-target="#myCarousel" data-slide-to="0" class=""></li>
        <li data-target="#myCarousel" data-slide-to="1" class=""></li>
        <li data-target="#myCarousel" data-slide-to="2" class="active"></li>
      </ol>
      <div class="carousel-inner" role="listbox">
        <div class="item">
          <img class="first-slide" src="data:image/gif;base64,R0lGODlhAQABAIAAAHd3dwAAACH5BAAAAAAALAAAAAABAAEAAAICRAEAOw==" alt="First slide">
          <div class="container">
            <div class="carousel-caption">
              <h1>ȸ�������� �غ����?</h1>
            <p> �������� ���⸸ �Ͻ� �ǰ���? ȸ�������� �Ͻð� ���� �Ҽȳ�Ʈ��ũ�� �پ�弼��! �漼�� � ȸ�������ض��</p>
              <p><a class="btn btn-lg btn-primary" href="javascript:openMember()" role="button">ȸ������</a></p>
            </div>
          </div>
        </div>
        <div class="item active left">
          <img class="second-slide" src="data:image/gif;base64,R0lGODlhAQABAIAAAHd3dwAAACH5BAAAAAAALAAAAAABAAEAAAICRAEAOw==" alt="Second slide">
          <div class="container">
            <div class="carousel-caption">
              <h1>�Խ���</h1>
              <p>���� �ٷ� �Խ��ǿ� �����ؼ� ������� ����� ����������!</p>
              <p><a class="btn btn-lg btn-primary" href="<%=request.getContextPath()%>/board/list.jsp" role="button">�Խ��� ����</a></p>
            </div>
          </div>
        </div>
        <div class="item next left">
          <img class="third-slide" src="data:image/gif;base64,R0lGODlhAQABAIAAAHd3dwAAACH5BAAAAAAALAAAAAABAAEAAAICRAEAOw==" alt="Third slide">
          <div class="container">
            <div class="carousel-caption">
              <h1>�������� ���� �о���~</h1>
			  <p>�ڽ��� ���� å�� ����ϰ�, ģ������ ���� å�� �Բ� �����غ�����. ���� å�� ����� �� ���� �Ӹ� �ƴ϶� �����ϰ� ���� �� �� �ִ� ��ɱ��� �ֽ��ϴ�. ȸ������ �� �̿� �� �� �ִ� ���� �Դϴ�.</p>
              <p><a class="btn btn-lg btn-primary" href="javascript:openBook()" role="button">�������� ����</a></p>
            </div>
          </div>
        </div>
      </div>
      <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
        <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
        <span class="sr-only">Previous</span>
      </a>
      <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
        <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
        <span class="sr-only">Next</span>
      </a>
    </div><!-- /.carousel -->


    <!-- Marketing messaging and featurettes
    ================================================== -->
    <!-- Wrap the rest of the page in another container to center all the content. -->

    <div class="container marketing">

      <!-- Three columns of text below the carousel -->
      <div class="row">
        <div class="col-lg-4">
          <img class="img-circle" src="data:image/gif;base64,R0lGODlhAQABAIAAAHd3dwAAACH5BAAAAAAALAAAAAABAAEAAAICRAEAOw==" alt="Generic placeholder image" width="140" height="140">
          <h2>ȸ������</h2>
		  <p> ������ ����븸 �̿� �� �� �ֽ��ϴ�. </p>
          <p><a class="btn btn-default" href="<%=request.getContextPath()%>/member/memberAll.jsp?cmd=ALL" role="button">�����ϱ� </a></p>
        </div><!-- /.col-lg-4 -->
        <div class="col-lg-4">
          <img class="img-circle" src="data:image/gif;base64,R0lGODlhAQABAIAAAHd3dwAAACH5BAAAAAAALAAAAAABAAEAAAICRAEAOw==" alt="Generic placeholder image" width="140" height="140">
          <h2>�Խ���</h2>
          <p>���� �ٷ� �Խ��ǿ� �����ؼ� ������� ����� ����������!</p>
          <p><a class="btn btn-default" href="<%=request.getContextPath()%>/board/list.jsp" role="button">�����ϱ�</a></p>
        </div><!-- /.col-lg-4 -->
        <div class="col-lg-4">
          <img class="img-circle" src="data:image/gif;base64,R0lGODlhAQABAIAAAHd3dwAAACH5BAAAAAAALAAAAAABAAEAAAICRAEAOw==" alt="Generic placeholder image" width="140" height="140">
          <h2>��������</h2>
		  <p>�ڽ��� ���� å�� ����ϰ�, ģ������ ���� å�� �Բ� �����غ�����. ���� å�� ����� �� ���� �Ӹ� �ƴ϶� �����ϰ� ���� �� �� �ִ� ��ɱ��� �ֽ��ϴ�. ȸ������ �� �̿� �� �� �ִ� ���� �Դϴ�.</p>
          <p><a class="btn btn-default" href="javascript:openBook()" role="button">�����ϱ�</a></p>
        </div><!-- /.col-lg-4 -->
      </div><!-- /.row -->


      <!-- START THE FEATURETTES -->

      <hr class="featurette-divider">

      <div class="row featurette">
        <div class="col-md-7">
          <h2 class="featurette-heading">�� ������ �̾��Ͽ����� �� ������ ���� â���ϸ���<br><span class="text-muted">Your beginnings will seem bumble, so prosperous will your future be</span></h2>
          <p class="lead">��� 8:7</p>
        </div>
        <div class="col-md-5">
          <img class="featurette-image img-responsive center-block" data-src="<%=request.getContextPath()%>/img/runningkid.jpg" alt="500x500" src="<%=request.getContextPath()%>/img/runningkid.jpg" data-holder-rendered="true">
        </div>
      </div>

      <hr class="featurette-divider">

      <div class="row featurette">
        <div class="col-md-7 col-md-push-5">
          <h2 class="featurette-heading">�α��� �Ϳ��� <br><span class="text-muted">��~~��~~ ��~~��~~ ���½ð��� �α����°� ��Ȯ��</span></h2>
          <p class="lead">�α��α��α�</p>
        </div>
        <div class="col-md-5 col-md-pull-7">
          <img class="featurette-image img-responsive center-block" data-src="holder.js/500x500/auto" alt="500x500" src="<%=request.getContextPath()%>/img/pingu1.jpeg" data-holder-rendered="true">
        </div>
      </div>

      <hr class="featurette-divider">

      <div class="row featurette">
        <div class="col-md-7">
          <h2 class="featurette-heading">������ �� �߿� �� �Ϳ�̴� �漼 <br><span class="text-muted">�Ǽ��� �θ��ϴ�. �ܹ���~�ܹ���~ ��~~��~��~~~</span></h2>
          <p class="lead">feat. �ߵ��漼</p>
        </div>
        <div class="col-md-5">
          <img class="featurette-image img-responsive center-block" data-src="holder.js/500x500/auto" alt="500x500" src="<%=request.getContextPath()%>/img/pingu2.jpg" data-holder-rendered="true">
        </div>
      </div>

   

      <!-- /END THE FEATURETTES -->
	</body>

<%@ include file="bottom.jsp"%>
  
