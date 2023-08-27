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
<title>내 정보</title>

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

	<!-- Navbar -->
	<nav class="main-header navbar navbar-expand navbar-white navbar-light">
		<!-- Left navbar links -->
		<ul class="navbar-nav">
			<li class="nav-item"><a class="nav-link" data-widget="pushmenu"
				href="#" role="button"><i class="fas fa-bars"></i></a></li>
			<li class="nav-item d-none d-sm-inline-block"><a
				href="index3.html" class="nav-link">Home</a></li>
			<li class="nav-item d-none d-sm-inline-block"><a href="#"
				class="nav-link">menu1</a></li>
			<li class="nav-item d-none d-sm-inline-block"><a href="#"
				class="nav-link">menu2</a></li>
			<li class="nav-item d-none d-sm-inline-block"><a href="#"
				class="nav-link">menu3</a></li>
			<li class="nav-item d-none d-sm-inline-block"><a href="#"
				class="nav-link">menu4</a></li>
			<li class="nav-item d-none d-sm-inline-block"><a href="#"
				class="nav-link">menu5</a></li>
		</ul>

		<!-- Right navbar links -->
		<ul class="navbar-nav ml-auto">
			<!-- Navbar Search -->
			<li class="nav-item"><a class="nav-link"
				data-widget="navbar-search" href="#" role="button"> <i
					class="fas fa-search"></i>
			</a>
				<div class="navbar-search-block">
					<form class="form-inline">
						<div class="input-group input-group-sm">
							<input class="form-control form-control-navbar" type="search"
								placeholder="Search" aria-label="Search">
							<div class="input-group-append">
								<button class="btn btn-navbar" type="submit">
									<i class="fas fa-search"></i>
								</button>
								<button class="btn btn-navbar" type="button"
									data-widget="navbar-search">
									<i class="fas fa-times"></i>
								</button>
							</div>
						</div>
					</form>
				</div></li>

			<!-- Messages Dropdown Menu -->
			<li class="nav-item dropdown"><a class="nav-link"
				data-toggle="dropdown" href="#"> <i class="far fa-comments"></i>
					<span class="badge badge-danger navbar-badge">3</span>
			</a>
				<div class="dropdown-menu dropdown-menu-lg dropdown-menu-right">
					<a href="#" class="dropdown-item"> <!-- Message Start -->
						<div class="media">
							<img src="dist/img/user1-128x128.jpg" alt="User Avatar"
								class="img-size-50 mr-3 img-circle">
							<div class="media-body">
								<h3 class="dropdown-item-title">
									Brad Diesel <span class="float-right text-sm text-danger"><i
										class="fas fa-star"></i></span>
								</h3>
								<p class="text-sm">Call me whenever you can...</p>
								<p class="text-sm text-muted">
									<i class="far fa-clock mr-1"></i> 4 Hours Ago
								</p>
							</div>
						</div> <!-- Message End -->
					</a>
					<div class="dropdown-divider"></div>
					<a href="#" class="dropdown-item"> <!-- Message Start -->
						<div class="media">
							<img src="dist/img/user8-128x128.jpg" alt="User Avatar"
								class="img-size-50 img-circle mr-3">
							<div class="media-body">
								<h3 class="dropdown-item-title">
									John Pierce <span class="float-right text-sm text-muted"><i
										class="fas fa-star"></i></span>
								</h3>
								<p class="text-sm">I got your message bro</p>
								<p class="text-sm text-muted">
									<i class="far fa-clock mr-1"></i> 4 Hours Ago
								</p>
							</div>
						</div> <!-- Message End -->
					</a>
					<div class="dropdown-divider"></div>
					<a href="#" class="dropdown-item"> <!-- Message Start -->
						<div class="media">
							<img src="dist/img/user3-128x128.jpg" alt="User Avatar"
								class="img-size-50 img-circle mr-3">
							<div class="media-body">
								<h3 class="dropdown-item-title">
									Nora Silvester <span class="float-right text-sm text-warning"><i
										class="fas fa-star"></i></span>
								</h3>
								<p class="text-sm">The subject goes here</p>
								<p class="text-sm text-muted">
									<i class="far fa-clock mr-1"></i> 4 Hours Ago
								</p>
							</div>
						</div> <!-- Message End -->
					</a>
					<div class="dropdown-divider"></div>
					<a href="#" class="dropdown-item dropdown-footer">See All
						Messages</a>
				</div></li>
			<!-- Notifications Dropdown Menu -->
			<li class="nav-item dropdown"><a class="nav-link"
				data-toggle="dropdown" href="#"> <i class="far fa-bell"></i> <span
					class="badge badge-warning navbar-badge">15</span>
			</a>
				<div class="dropdown-menu dropdown-menu-lg dropdown-menu-right">
					<span class="dropdown-header">15 Notifications</span>
					<div class="dropdown-divider"></div>
					<a href="#" class="dropdown-item"> <i
						class="fas fa-envelope mr-2"></i> 4 new messages <span
						class="float-right text-muted text-sm">3 mins</span>
					</a>
					<div class="dropdown-divider"></div>
					<a href="#" class="dropdown-item"> <i class="fas fa-users mr-2"></i>
						8 friend requests <span class="float-right text-muted text-sm">12
							hours</span>
					</a>
					<div class="dropdown-divider"></div>
					<a href="#" class="dropdown-item"> <i class="fas fa-file mr-2"></i>
						3 new reports <span class="float-right text-muted text-sm">2
							days</span>
					</a>
					<div class="dropdown-divider"></div>
					<a href="#" class="dropdown-item dropdown-footer">See All
						Notifications</a>
				</div></li>
			<li class="nav-item"><a class="nav-link"
				data-widget="fullscreen" href="#" role="button"> <i
					class="fas fa-expand-arrows-alt"></i>
			</a></li>
			<li class="nav-item"><a class="nav-link"
				data-widget="control-sidebar" data-slide="true" href="#"
				role="button"> <i class="fas fa-th-large"></i>
			</a></li>
		</ul>
	</nav>
	<!-- /.navbar -->

	<!-- Main Sidebar Container -->
	<aside class="main-sidebar sidebar-light-primary elevation-4">
		<!-- Sidebar user panel (optional) -->

		<!-- Brand Logo -->
		<div class="card">
			<div class="card-body login-card-body" style="padding-bottom: 5px;">
				<p class="login-box-msg">PEMS</p>
				<form action="../../index3.html" method="post">
					<div class="input-group mb-3">
						<input type="text" name="num" class="form-control"
							placeholder="Number">
						<div class="input-group-append">
							<div class="input-group-text">
								<span class="fas fa-user"></span>
							</div>
						</div>
					</div>
					<div class="input-group mb-3">
						<input type="password" name="pwd" class="form-control"
							placeholder="Password">
						<div class="input-group-append">
							<div class="input-group-text">
								<span class="fas fa-lock"></span>
							</div>
						</div>
					</div>
					<div class="row">


						<div class="col-12">
							<button type="submit" class="btn btn-primary btn-block">로그인</button>
						</div>

					</div>
				</form>
				<div class="row text-center" style="padding-top: 5px;">
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					<p class="mb-1 text-xs">
						<a href="forgot-password.html">아이디 /</a>
					</p>

					<p class="mb-1 text-xs">
						<a href="forgot-password.html"> 비밀번호 찾기</a>
					</p>
					&nbsp;&nbsp;
					<p class="mb-1 text-xs">
						<a href="forgot-password.html">회원가입</a>
					</p>
				</div>
			</div>

		</div>

		<!-- Sidebar -->
		<div class="sidebar">



			<!-- Sidebar Menu -->
			<nav class="mt-2">
				<ul class="nav nav-pills nav-sidebar flex-column"
					data-widget="treeview" role="menu" data-accordion="false">
					<!-- Add icons to the links using the .nav-icon class with font-awesome or any other icon font library -->

					<li class="nav-item"><a href="#" class="nav-link"> <i
							class="nav-icon fas fa-th"></i>
							<p>
								side menu 1 <span class="right badge badge-danger"></span>
							</p>
					</a></li>
					<li class="nav-item"><a href="#" class="nav-link"> <i
							class="nav-icon fas fa-th"></i>
							<p>
								side menu 2 <span class="right badge badge-danger"></span>
							</p>
					</a></li>
					<li class="nav-item"><a href="#" class="nav-link"> <i
							class="nav-icon fas fa-th"></i>
							<p>
								side menu 3 <span class="right badge badge-danger"></span>
							</p>
					</a></li>
					<li class="nav-item"><a href="#" class="nav-link"> <i
							class="nav-icon fas fa-th"></i>
							<p>
								side menu 4 <span class="right badge badge-danger"></span>
							</p>
					</a></li>
					<li class="nav-item"><a href="#" class="nav-link"> <i
							class="nav-icon fas fa-th"></i>
							<p>
								side menu 5 <span class="right badge badge-danger"></span>
							</p>
					</a></li>
				</ul>
			</nav>
			<!-- /.sidebar-menu -->
		</div>
		<!-- /.sidebar -->
	</aside>
	<!-- /.container-fluid -->
	<div class="col-sm-4" style="margin: 20px auto;">
		<h1>내 정보</h1>
	</div>
	<div class="col-sm-4" style="margin: 0 auto;">
		<form class="form-horizontal" style="padding: 20px; box-shadow: 5px 5px 5px 5px #B0C4DE; border-radius: 10px;">
			<div class="form-group row">
				<label for="inputEmail3" class="col-sm-2 col-form-label">아이디</label>
				<div class="input-group mb-3">
					<div class="input-group-append">
						<div class="input-group-text">
							<span class="fas fa-user"></span>
						</div>
					</div>
					<input type="text" class="form-control" readonly value="">
				</div>
			</div>
			<div class="form-group row">
				<label for="inputEmail3" class="col-sm-2 col-form-label">이름</label>
				<div class="input-group mb-3">
					<div class="input-group-append">
						<div class="input-group-text">
							<span class="fas fa-user"></span>
						</div>
					</div>
					<input name="name" type="text"
						onkeyup="this.value=this.value.trim();" class="form-control"
						value="" readonly>
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
					<input type="text" class="form-control" readonly
						value="${user.phone }">
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
					<input type="text" class="form-control" readonly value="">
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
					<input type="email" class="form-control" readonly value="">
				</div>
			</div>
			<!-- /.card-body -->
			<div class="card-footer">
				<button onclick="modify_go()" class="btn btn-info">변경하기</button>
				<button onclick="delete_go()" class="btn btn-default float-right">탈퇴하기</button>
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
		function modify_go() {
			if (!confirm("이메일 인증이 필요 합니다")) {
				// 취소(아니오) 버튼 클릭 시 이벤트
			} else {
				// 확인(예) 버튼 클릭 시 이벤트
				// 인증 번호 확인 창 열기 추가 
				alert("가입한 이메일로 인증번호를 보냈습니다.");
				window.open('certification.jsp', 'window_name',
								'width=430,height=500,location=no,status=no,scrollbars=yes');

			}
		}
	</script>
	<script>
		function delete_go() {
			if (!confirm("정말로 탈퇴 하시겠습니까?")) {
				// 취소(아니오) 버튼 클릭 시 이벤트
			} else {
				// 확인(예) 버튼 클릭 시 이벤트
				// 비밀번호 입력창 나오고 맞게 입력하면 가입 상태 바꾸고 탈퇴하고 메인화면으로 이동하는 메소드 추가
				window.open('withdraw.jsp', 'window_name',
				'width=430,height=500,location=no,status=no,scrollbars=yes');
			}
		}
	</script>

</body>
</html>
