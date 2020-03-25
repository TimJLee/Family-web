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
              <h1>회원가입을 해볼까요?</h1>
            <p> 언제까지 보기만 하실 건가요? 회원가입을 하시고 직접 소셜네트워크에 뛰어드세요! 꿩세야 어서 회원가입해라우</p>
              <p><a class="btn btn-lg btn-primary" href="javascript:openMember()" role="button">회원가입</a></p>
            </div>
          </div>
        </div>
        <div class="item active left">
          <img class="second-slide" src="data:image/gif;base64,R0lGODlhAQABAIAAAHd3dwAAACH5BAAAAAAALAAAAAABAAEAAAICRAEAOw==" alt="Second slide">
          <div class="container">
            <div class="carousel-caption">
              <h1>게시판</h1>
              <p>지금 바로 게시판에 입장해서 가족들과 잡담을 나눠보세요!</p>
              <p><a class="btn btn-lg btn-primary" href="<%=request.getContextPath()%>/board/list.jsp" role="button">게시판 입장</a></p>
            </div>
          </div>
        </div>
        <div class="item next left">
          <img class="third-slide" src="data:image/gif;base64,R0lGODlhAQABAIAAAHd3dwAAACH5BAAAAAAALAAAAAABAAEAAAICRAEAOw==" alt="Third slide">
          <div class="container">
            <div class="carousel-caption">
              <h1>누가누가 많이 읽었나~</h1>
			  <p>자신이 읽은 책을 등록하고, 친구들이 읽은 책과 함께 공유해보세요. 읽은 책을 등록할 수 있을 뿐만 아니라 수정하고 삭제 할 수 있는 기능까지 있습니다. 회원가입 후 이용 할 수 있는 서비스 입니다.</p>
              <p><a class="btn btn-lg btn-primary" href="javascript:openBook()" role="button">도서관리 시작</a></p>
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
          <h2>회원관리</h2>
		  <p> 관리자 이재용만 이용 할 수 있습니다. </p>
          <p><a class="btn btn-default" href="<%=request.getContextPath()%>/member/memberAll.jsp?cmd=ALL" role="button">입장하기 </a></p>
        </div><!-- /.col-lg-4 -->
        <div class="col-lg-4">
          <img class="img-circle" src="data:image/gif;base64,R0lGODlhAQABAIAAAHd3dwAAACH5BAAAAAAALAAAAAABAAEAAAICRAEAOw==" alt="Generic placeholder image" width="140" height="140">
          <h2>게시판</h2>
          <p>지금 바로 게시판에 입장해서 가족들과 잡담을 나눠보세요!</p>
          <p><a class="btn btn-default" href="<%=request.getContextPath()%>/board/list.jsp" role="button">입장하기</a></p>
        </div><!-- /.col-lg-4 -->
        <div class="col-lg-4">
          <img class="img-circle" src="data:image/gif;base64,R0lGODlhAQABAIAAAHd3dwAAACH5BAAAAAAALAAAAAABAAEAAAICRAEAOw==" alt="Generic placeholder image" width="140" height="140">
          <h2>도서관리</h2>
		  <p>자신이 읽은 책을 등록하고, 친구들이 읽은 책과 함께 공유해보세요. 읽은 책을 등록할 수 있을 뿐만 아니라 수정하고 삭제 할 수 있는 기능까지 있습니다. 회원가입 후 이용 할 수 있는 서비스 입니다.</p>
          <p><a class="btn btn-default" href="javascript:openBook()" role="button">입장하기</a></p>
        </div><!-- /.col-lg-4 -->
      </div><!-- /.row -->


      <!-- START THE FEATURETTES -->

      <hr class="featurette-divider">

      <div class="row featurette">
        <div class="col-md-7">
          <h2 class="featurette-heading">네 시작은 미약하였으나 네 나중은 심히 창대하리라<br><span class="text-muted">Your beginnings will seem bumble, so prosperous will your future be</span></h2>
          <p class="lead">욥기 8:7</p>
        </div>
        <div class="col-md-5">
          <img class="featurette-image img-responsive center-block" data-src="<%=request.getContextPath()%>/img/runningkid.jpg" alt="500x500" src="<%=request.getContextPath()%>/img/runningkid.jpg" data-holder-rendered="true">
        </div>
      </div>

      <hr class="featurette-divider">

      <div class="row featurette">
        <div class="col-md-7 col-md-push-5">
          <h2 class="featurette-heading">핑구는 귀여워 <br><span class="text-muted">핑~~구~~ 핑~~구~~ 쉬는시간에 핑구보는건 소확행</span></h2>
          <p class="lead">핑구핑구핑구</p>
        </div>
        <div class="col-md-5 col-md-pull-7">
          <img class="featurette-image img-responsive center-block" data-src="holder.js/500x500/auto" alt="500x500" src="<%=request.getContextPath()%>/img/pingu1.jpeg" data-holder-rendered="true">
        </div>
      </div>

      <hr class="featurette-divider">

      <div class="row featurette">
        <div class="col-md-7">
          <h2 class="featurette-heading">하이<br><span class="text-muted">부자가 될거여~~~</span></h2>
          <p class="lead">부자가 될거야</p>
        </div>
        <div class="col-md-5">
          <img class="featurette-image img-responsive center-block" data-src="holder.js/500x500/auto" alt="500x500" src="<%=request.getContextPath()%>/img/pingu2.jpg" data-holder-rendered="true">
        </div>
      </div>

   

      <!-- /END THE FEATURETTES -->
	</body>

<%@ include file="bottom.jsp"%>
  
