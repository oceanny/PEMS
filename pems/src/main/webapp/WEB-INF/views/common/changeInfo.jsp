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
<title>내 정보 변경</title>

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
	<div class="col-sm-4" style="margin: 20px auto;">
		<h1>내 정보 변경</h1>
	</div>

	<div class="col-sm-4" style="margin: 0 auto;">
		<form action="modify.do" method="post" class="form-horizontal" style="padding: 20px; box-shadow: 5px 5px 5px 5px #B0C4DE; border-radius: 10px;">
			<div class="form-group row">
				<label for="inputEmail3" class="col-sm-2 col-form-label">아이디</label>
				<div class="input-group mb-3">
					<div class="input-group-append">
						<div class="input-group-text">
							<span class="fas fa-user"></span>
						</div>
					</div>
					<input type="text" class="form-control" placeholder="ID" readonly value="">
				</div>
			</div>
			<div class="form-group row">
				<label for="inputEmail3" class="col-sm-2 col-form-label">비밀번호</label>
				<div class="input-group mb-3">
					<div class="input-group-append">
						<div class="input-group-text">
							<span class="fas fa-lock"></span>
						</div>
					</div>
					<input type="password" class="form-control" placeholder="Password" value="">
				</div>
			</div>
			<div class="form-group row">
				<label for="inputEmail3" class="col-sm-3 col-form-label">비밀번호
					확인 </label>
				<div class="input-group mb-3">
					<div class="input-group-append">
						<div class="input-group-text">
							<span class="fas fa-lock"></span>
						</div>
					</div>
					<input name="pwdCheck" type="password" class="form-control"
						placeholder="PasswordCheck" value=""
						onkeyup="this.value=this.value.trim();">
				</div>
			</div>
			<div class="form-group row">
				<label for="inputEmail3" class="col-sm-2 col-form-label">전화번호</label>
				<div class="input-group mb-3">
					<div class="input-group-append">
						<div class="input-group-text">
							<i class="fas fa-phone"></i>
						</div>
					</div>
					<input type="text" class="form-control" placeholder="Phone"value="">
				</div>
			</div>
			<div class="form-group row">
				<label for="inputEmail3" class="col-sm-2 col-form-label">주소</label>
				<div class="input-group mb-3">
					<div class="input-group-append">
						<div class="input-group-text">
							<i class="fas fa-map-marker-alt mr-1"></i>
						</div>
					</div>
					<input type="text" class="form-control" placeholder="Address"value="">
				</div>
			</div>
			<div class="form-group row">
				<label for="inputEmail3" class="col-sm-2 col-form-label">이메일</label>
				<div class="input-group mb-3">
					<div class="input-group-append">
						<div class="input-group-text">
							<span class="fas fa-envelope"></span>
						</div>
					</div>
					<input type="email" class="form-control" placeholder="Email" value="">
				</div>
			</div>
			<!-- /.card-body -->
			<div class="card-footer">
				<button onclick="modify_go()" type="submit" class="btn btn-info">변경하기</button>
				<button onclick="cancel_go()"  class="btn btn-default float-right">취 소</button>
			</div>
			<!-- /.card-footer -->
		</form>
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
	<script>
	function modify_go(){
		alert("click");
		//입력 양식 확인 후 변경 
	}
	function cancel_go(){
		alert("메인으로이동");
		//입력 양식 확인 후 변경 
	}
	
	</script>

</body>
</html>
