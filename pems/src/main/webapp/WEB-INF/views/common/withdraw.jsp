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
<title>인증 번호 입력</title>

<!-- Google Font: Source Sans Pro -->
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700&display=fallback">
<!-- Font Awesome Icons -->
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/bootstrap/plugins/fontawesome-free/css/all.min.css">
<!-- Theme style -->
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/bootstrap/dist/css/adminlte.min.css">
</head>
<body class="hold-transition sidebar-mini">

	<!-- /.container-fluid -->
	<div class="col-sm-4" style="margin: 15px auto;">
		<h1 style="font-size: 24pt;">회원 탈퇴</h1>
	</div>

	<form class="form-horizontal">
		<div class="col-sm-4" style="margin: 0 auto;">

			<div class="form-group row">
				<label for="inputPassword3" class="col-sm-2 col-form-label"
					style="margin: 0px 10px 0px 0px;">비밀번호</label>
				<div class="col-sm-10">
					<input type="text" class="form-control" id="inputPassword3"
						placeholder="비밀번호를 입력해주세요.">
				</div>
			</div>
			<div class="card-footer">
				<button onclick="validation_go();" type="submit"
					class="btn btn-info">탈 퇴</button>
				<button onclick="cancel_go();" class="btn btn-default float-right">취
					소</button>
			</div>
		</div>

	</form>

	<!-- jQuery -->
	<script
		src="<%=request.getContextPath()%>/resources/bootstrap/plugins/jquery/jquery.min.js"></script>
	<!-- Bootstrap 4 -->
	<script
		src="<%=request.getContextPath()%>/resources/bootstrap/plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
	<!-- AdminLTE App -->
	<script
		src="<%=request.getContextPath()%>/resources/bootstrap/dist/js/adminlte.min.js"></script>
	<script>
		function validation_go() {
			//인증번호 확인 후 닫고 연 화면에서 정보 변경 화면으로 이동
			window.close();
			window.open('Practice_changeInfo.jsp', 'window_name',
							'width=430,height=500,location=no,status=no,scrollbars=yes');
			Window.opener.location.href = "Practie_myInfo";
		}
	</script>
	<script>
		function cancel_go(){
			window.close();
		}
	</script>
</body>
</html>
