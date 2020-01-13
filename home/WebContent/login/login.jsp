<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!-- login.jsp-->

<html lang="en"><head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="Mark Otto, Jacob Thornton, and Bootstrap contributors">
    <meta name="generator" content="Jekyll v3.8.6">
    <title>�α��� ������</title>
    
<script type="text/javascript">
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
	function openMember(){
		alert('ȸ������ ���� ��ȸ �������� �̵��մϴ�')
		window.open("<%=request.getContextPath()%>/member/memberSsn.jsp","member","width=600,height=400")
	}
	function searchMember(mode){
		window.open("<%=request.getContextPath()%>/login/search.jsp?mode="+mode,
			"search", "width=600, height=450")
	}
</script>
<%
   String name = null, value = null;
   Cookie[] cks = request.getCookies();
   if(cks != null && cks.length != 0){
	   for(int i=0; i<cks.length; ++i){
		   name = cks[i].getName();
		   if(name.equals("saveId")){
			   value = cks[i].getValue();
			   break;
		   }
	   }
   }
   //value ���� null �̸� ��Ű�� ���� ���� ���Ѵ�.(save_id üũ ���ߴ�.)
%>



  

    <!-- Bootstrap core CSS -->
<link href="../bootstrap-4.4.1/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">

    <!-- Favicons -->
<meta name="theme-color" content="#563d7c">


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
    <link href="../bootstrap-4.4.1/login/floating-labels.css" rel="stylesheet">
  </head>
  <body>
    <form class="form-signin" name="f" action="login_ok.jsp" method="post">
  <div class="text-center mb-4">
    <img class="mb-4" src="../bootstrap-4.4.1/login/bootstrap-solid.svg" alt="" width="120" height="120">
    <h1 class="h3 mb-3 font-weight-normal">TOPCIT</h1>
    <p>�α��� ���� ����Ʈ �ѷ����� <a href="<%=request.getContextPath()%>/index.jsp">Go</a></p>
  </div>

  <div class="form-label-group">
    <%if(value==null){ %>
    <input type="text" id="inputId" name="id" class="form-control" placeholder="���̵�" required="" autofocus="">
    <%}else{ %>
    <input type="text" id="inputId" name="id" value="<%=value%>" class="form-control" placeholder="���̵�" required="" autofocus="">

    <%} %>
    <label for="inputId">���̵�</label>
  </div>

  <div class="form-label-group">
    <input type="password" id="inputPassword" name="passwd" class="form-control" placeholder="��й�ȣ" required="">
    <label for="inputPassword">��й�ȣ</label>
  </div>

  <div class="checkbox mb-3">
    <label>
      <%if(value==null){ %>
      <input type="checkbox" name="saveId">
      <%}else{ %>
        <input type="checkbox" name="saveId" checked>
      <%} %>
      ���̵� ����ϱ�
    </label>
    <div align="right">
    <a href="javascript:searchMember('pw')"> ��� ã��
    <a href="javascript:searchMember('id')"> ���̵� ã��
    </div>
  </div>
   
  </div>
  <a href="javascript:loginCheck()">
    <button class="btn btn-lg btn-primary btn-block" >�α���</button>
  </a><br>
  
  <input class="btn btn-lg btn-primary btn-block" type="button" value="ȸ������" onClick="javascript:openMember()">
  <p class="mt-5 mb-3 text-muted text-center">&copy; Tim_J.Lee</p>
</form>


</body></html>