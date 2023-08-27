<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>


<!DOCTYPE html>
<!--
This is a starter template page. Use this page to start your new project from
scratch. This page gets rid of all links and provides the needed markup only.
-->
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>비밀번호 찾기</title>

</head>
<body>

  <form action="pwdFind.do" method="post"> <!-- action = "idFind" method="post" -->
	<input name="userId" class="form-control form-control-lg" type="text"
		placeholder="찾고자 하는 아이디를 입력하세요" style="margin: 30px auto; width: 500px;">
	<button onclick="pwdFind_go();" type="submit" class="btn btn-block btn-primary btn-lg"
		style="margin: 10px auto; width: 500px;">다음</button>
	</form>
	<div class="col-sm-4 col-md-2" style="margin: 10px auto; width: 500px; color:blue;">
		<span class="text-center bg-light" >아이디가 기억이 나지 않는다면 ?</span>
		<div class="color-palette-set">
			<p class="mb-1">
					<a href="IdFind.do">아이디 찾기</a>
				</p>
		</div>
	</div>
	<!-- jQuery -->
	<script
		src="<%=request.getContextPath()%>/resources/bootstrap/plugins/jquery/jquery.min.js"></script>
	<!-- Bootstrap 4 -->
	<script
		src="<%=request.getContextPath()%>/resources/bootstrap/plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
	<!-- AdminLTE App -->
	<script
		src="<%=request.getContextPath()%>/resources/bootstrap/dist/js/adminlte.min.js"></script>
	<script	>
		function pwdFind_go(){
			
			
			
		}
	</script>
</body>
</html>
