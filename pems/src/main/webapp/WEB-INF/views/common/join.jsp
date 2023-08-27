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
<title>회원가입</title>
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
	<!-- Content Header (Page header) -->
	<div class="col-sm-4" style="margin: 20px auto;">
		<h1>회원가입</h1>
	</div>
	<div class="col-sm-4" style="margin: 0 auto;">
		<form role="form" action="join.do" method="post"
			class="form-horizontal"
			style="padding: 20px; box-shadow: 5px 5px 5px 5px #B0C4DE; border-radius: 10px;">
			<div class="form-group row">
				<label for="userId" class="col-sm-3 col-form-label">아이디 <span
					style="color: red; font-weight: bold;">*</span></label>
				<div class="input-group mb-3">
					<div class="input-group-append">
						<div class="input-group-text">
							<span class="fas fa-user"> </span>
						</div>
					</div>
					<input
						onkeyup="this.value=this.value.replace(/[\ㄱ-ㅎㅏ-ㅣ가-힣]/g, &#39;&#39;);"
						name="userId" id="userId" type="text" class="form-control" placeholder="ID">
					<div class="input-group-append">
						<span class="input-group-append-sm">
							<button style="height: 38px;" type="button"
								onclick="idCheck_go();" class="btn btn-info btn-sm btn-append">중복확인</button>
						</span>
					</div>
				</div>
			</div>
			<div class="form-group row">
				<label for="userPwd" class="col-sm-3 col-form-label">비밀번호<span
					style="color: red; font-weight: bold;">*</span></label>
				<div class="input-group mb-3">
					<div class="input-group-append">
						<div class="input-group-text">
							<span class="fas fa-lock"></span>
						</div>
					</div>
					<input name="userPwd" id="userPwd" type="password" class="form-control"
						placeholder="Password" onkeyup="this.value=this.value.trim();">
				</div>
			</div>
			<div class="form-group row">
				<label for="pwdCheck" class="col-sm-3 col-form-label">비밀번호
					확인<span style="color: red; font-weight: bold;">*</span>
				</label>
				<div class="input-group mb-3">
					<div class="input-group-append">
						<div class="input-group-text">
							<span class="fas fa-lock"></span>
						</div>
					</div>
					<input name="pwdCheck"  type="password" class="form-control"
						placeholder="PasswordCheck"
						onkeyup="this.value=this.value.trim();">
				</div>
			</div>
			<div class="form-group row">
				<label for="name" class="col-sm-2 col-form-label">이름<span
					style="color: red; font-weight: bold;">*</span></label>
				<div class="input-group mb-3">
					<div class="input-group-append">
						<div class="input-group-text">
							<span class="fas fa-user"></span>
						</div>
					</div>
					<input name="name" id="name" type="text"
						onkeyup="this.value=this.value.trim();" class="form-control"
						placeholder="Name">
				</div>
			</div>
			<div class="form-group row">
				<label for="phone" class="col-sm-2 col-form-label">휴대번호<span
					style="color: red; font-weight: bold;">*</span></label>
				<div class="input-group mb-3">
					<div class="input-group-append">
						<div class="input-group-text">
							<i class="fas fa-phone"></i>
						</div>
					</div>
					<input name="phone" id="phone" type="text"
						onkeyup="this.value=this.value.trim('-');" class="form-control"
						placeholder="Phone(-없이 입력)">
				</div>
			</div>
			<div class="form-group row">
				<label for="mail" class="col-sm-2 col-form-label">이메일<span
					style="color: red; font-weight: bold;">*</span></label>
				<div class="input-group mb-3">
					<div class="input-group-append">
						<div class="input-group-text">
							<span class="fas fa-envelope"></span>
						</div>
					</div>
					<input name="mail" id="mail" type="email" class="form-control"
						placeholder="Email" onkeyup="this.value=this.value.trim();">
				</div>
			</div>
			<!-- /.card-body -->
			<div class="card-footer">
				<button type="button" id="registBtn" onclick="join_go();"
					class="btn btn-info">가입 신청</button>
				<button type="submit" onclick="history.go(-1)"
					class="btn btn-default float-right">취 소</button>
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
		function join_go() {
			if (!$('input[name="userId"]').val()) {
				alert("아이디는 필수입니다.");
				return;
			}
			  if($('input[name="userId"]').val() != checkedID){
			      alert("아이디는 중복 확인이 필요합니다.");
			      return;
			   }
			
			if (!$('input[name="userPwd"]').val()) {
				alert("패스워드는 필수입니다.");
				return;
			}
			if ($('input[name="userPwd"]').val() != $('input[name="pwdCheck"]').val()) {
				alert("비밀번호 확인이 되지 않았습니다.");
				return;
			}
			if (!$('input[name="name"]').val()) {
				alert("이름은 필수입니다.");
				return;
			}
			if (!$('input[name="mail"]').val()) {
				alert("이메일은 필수입니다.");
				return;
			}
			if (!$('input[name="phone"]').val()) {
				alert("휴대번호는 필수입니다.");
				return;
			}

			var form = $('form[role="form"]');
			form.submit();
		}
		var checkedID = "";
		function idCheck_go() {
			//alert("click idcheck btn");
			var input_ID = $('input[name="userId"]');

			if (!input_ID.val()) {
				alert("아이디를 입력하시오");
				input_ID.focus();
				return;
			}

			$.ajax({
				url : "idCheck.do?userId=" + input_ID.val().trim(),
				success : function(result) {
					if (result.toUpperCase() == "DUPLICATED") {
						alert("이미 등록된 아이디 입니다.");
						$('input[name="userId"]').focus();
					} else {
						alert("사용가능한 아이디 입니다.");
						checkedID = input_ID.val().trim();
						$('input[name="userId"]').val(input_ID.val().trim());
					}
				},
				error : function(error) {
					AjaxErrorSecurityRedirectHandler(error.status);
				}
			});
		}
	</script>
</body>
</html>
