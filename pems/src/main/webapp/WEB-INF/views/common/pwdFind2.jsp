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
<title>비밀번호 찾기2</title>

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
<body>

	<div class="col-sm-4" style="margin: 20px auto;">
		<h1>비밀번호 찾기</h1>
	</div>

	<div class="col-sm-4" style="margin: 0 auto;">
		<form action="pwdFind2.do" class="form-horizontal"
			style="padding: 20px; box-shadow: 5px 5px 5px 5px #B0C4DE; border-radius: 10px;">

			<div class="card-body">
				<div class="form-group row">

					<label for="inputEmail3" class="col-sm-2 col-form-label">이	름</label>
					<div class="col-sm-10">
						<input type="text" class="form-control" id="id"
							placeholder="가입시 등록한 이름을 입력하세요.">
					</div>
				</div>
				<div class="form-group row">

					<div class="form-group email-form" style ="width: 600px;">
						<label for="email">&nbsp;&nbsp;이메일</label>
						<div class="input-group">
							<input type="text" class="form-control" name="userEmail1"
								id="userEmail1" placeholder="가입시 등록한 이메일을 입력하세요."> <select
								class="form-control" name="userEmail2" id="userEmail2">
								<option>@naver.com</option>
								<option>@daum.net</option>
								<option>@gmail.com</option>
								<option>@hanmail.com</option>
								<option>@yahoo.co.kr</option>
							</select>
						</div>
						<div>
							<button style= "margin:7px 7px 7px 0;"type="button" class="btn btn-primary" id="mail-Check-Btn">본인인증</button>
						</div>
						<div class="mail-check-box">
							<input class="form-control mail-check-input"
								placeholder="인증번호 6자리를 입력해주세요!" disabled="disabled"
								maxlength="6">
						</div>


					</div>
				</div>
				<!-- /.card-body -->
				<!-- /.card-footer -->
			</div>
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
		$('#mail-Check-Btn').click(function() {
			const eamil = $('#userEmail1').val() + $('#userEmail2').val(); // 이메일 주소값 얻어오기!
			console.log('완성된 이메일 : ' + eamil); // 이메일 오는지 확인
			const checkInput = $('.mail-check-input') // 인증번호 입력하는곳 

			$.ajax({
				type : 'get',
				url : '<c:url value ="/common/pwdFind.do?email="/>' + eamil, // GET방식이라 Url 뒤에 email을 뭍힐수있다.
				success : function(data) {
					console.log("data : " + data);
					checkInput.attr('disabled', false);
					code = data;
					alert('인증번호가 전송되었습니다.')
				}
			}); // end ajax
		}); // end send eamil
	</script>




</body>
</html>
