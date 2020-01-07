
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ include file="top.jsp"%>
<!-- 템플릿 페이지의 모든 소스를 가져온다. -->

<!-- Main jumbotron for a primary marketing message or call to action -->
<div class="jumbotron">
	<div class="container">
		<h1>Welcome!</h1>
		<p>Bootstrap 3.3.2 ver 과 Jsp 를 이용하여 만든 반응형 동적 웹 사이트 프로젝트 </p>
		<p>
			<a class="btn btn-primary btn-lg" href="javascript:openMember()" role="button">회원가입
				</a>
		</p>
	</div>
</div>

<div class="container">
	<!-- Example row of columns -->
	<div class="row">
		<div class="col-md-4">
			<h2>도서관리 프로그램</h2>
			<p> 내가 읽은 책을 등록하고, 수정하고, 삭제하고, 검색할 수 있습니다. 이 기능은 회원가입 후에 이용 하실 수 있습니다. 어서 회원가입 후
			나만의 도서관리 프로그램을 이용해 보세요! 자신이 읽은 책들의 기록을 살펴보면서 더 나은 독서 생활 습관을 위한 동기부여가 되어 줄 것입니다!
			차후 빅데이터를 이용하여 고객 맞춤 책 추천 서비스를 도입 예정입니다. </p>
			<p>
				<a class="btn btn-default" href="javascript:openBook()" role="button">시작하기
					 </a>
			</p>
		</div>
		<div class="col-md-4">
			<h2>회원관리 프로그램(개설중) - front2 test</h2>
			<p>킹재용만 이용할 수 있는 페이지 입니다. 아직 개설중 입니다. </p>
			<p>
				<a class="btn btn-default" href="#" role="button">시작하기
					</a>
			</p>
		</div>
		<div class="col-md-4">
			<h2>지도기반 sns</h2>
			<p>개설중</p>
			<p>
				<a class="btn btn-default" href="#" role="button">시작하기
					</a>
			</p>
		</div>
	</div>
</div> <!-- /container -->
	<!--  
	<ul>
		<li><h2><a href="book/index.jsp">도서관리 프로그램</a></h2>
	</ul>
	-->
	<%@ include file="bottom.jsp"%>
	<!-- 템플릿 페이지  모든 소스를 가져온다.-->