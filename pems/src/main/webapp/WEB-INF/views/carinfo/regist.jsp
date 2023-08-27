<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>

<!-- Main content -->
<div class="">
	<section class="content-header">
		<div class="container-fluid">
			<div class="row md-2">
				<div class="col-sm-6">
					<h1>차량등록</h1>
				</div>
			</div>
		</div>
	</section>
	<!-- Main content -->
	<section class="content register-page">
		<div class="register-box">
			<div class="login-logo">
				<a href=""><b>차량 등록</b></a>
			</div>
			<!-- form start -->
			<div class="card">
				<div class="register-card-body">
					<form role="form" class="form-horizontal" action="regist.do"
						method="post">
						<div class="form-group row">
							<label for="carNum" class="col-sm-3" style="font-size: 0.9em;">
								<span style="color: red; font-weight: bold;">*</span>차량번호
							</label>
							<div class="col-sm-9 input-group input-group-sm">
								<input name="carNum" onkeyup="" type="text" class="form-control"
									id="carNum" placeholder="00가0000"> <span
									class="input-group-append-sm">
									<button type="button" onclick="carNumCheck_go();"
										class="btn btn-info btn-sm btn-append">중복확인</button>
								</span>
							</div>
						</div>
						<div class="form-group row">
							<label for="cType" class="col-sm-3" style="font-size:0.9em;">
								<span style="color:red;font-weight:bold;">*</span>차량종류</label>
							<div class="col-sm-9 input-group-sm">
								<select class="form-control col-md-3" name="cType" id="cType"
									onchange="searchList_go(1);">
									<option value="1">승용차</option>
									<option value="2" ${car.ctypenum == 2 ? 'selected':''}>승합차</option>
									<option value="3" ${car.ctypenum == 3 ? 'selected':''}>화물차</option>
									<option value="4" ${car.ctypenum == 4 ? 'selected':''}>특수차</option>
								</select>
							</div>
						</div>
						<div class="form-group row">
							<label for="treatInfo1" class="col-sm-3" style="font-size:0.9em;">
								<span style="color:red;font-weight:bold;">*</span>우대정보 1</label>
							<div class="col-sm-9 input-group-sm">
								<select class="form-control col-md-3" name="treatInfo1"
									id="treatInfo1" onchange="searchList_go(1);">
									<option value="4" ${car.treatinfo1 == 4 ? 'selected':''}>일반</option>
									<option value="1" ${car.treatinfo1 == 1 ? 'selected':''}>경차</option>
									<option value="2" ${car.treatinfo1 == 2 ? 'selected':''}>전기차</option>
									<option value="3" ${car.treatinfo1 == 3 ? 'selected':''}>장애인</option>
								</select>
							</div>
						</div>
						<div class="form-group row">
							<label for="treatInfo2" class="col-sm-3" style="font-size:0.9em;">
								<span style="color:black;font-weight:bold;"> </span>우대정보 2</label>
							<div class="col-sm-9 input-group-sm">
								<select class="form-control col-md-3" name="treatInfo2"
									id="treatInfo2" onchange="searchList_go(1);">
									<option value="4" ${car.treatinfo1 == 4 ? 'selected':''}>일반</option>
									<option value="1" ${car.treatinfo1 == 1 ? 'selected':''}>경차</option>
									<option value="2" ${car.treatinfo1 == 2 ? 'selected':''}>전기차</option>
									<option value="3" ${car.treatinfo1 == 3 ? 'selected':''}>장애인</option>
								</select>
							</div>
						</div>
						<div class="form-group row">
							<label for="treatInfo3" class="col-sm-3" style="font-size:0.9em;">
								<span style="color:black;font-weight:bold;"> </span>우대정보 3</label>
							<div class="col-sm-9 input-group-sm">
								<select class="form-control col-md-3" name="treatInfo1"
									id="treatInfo3" onchange="searchList_go(1);">
									<option value="4" ${car.treatinfo1 == 4 ? 'selected':''}>일반</option>
									<option value="1" ${car.treatinfo1 == 1 ? 'selected':''}>경차</option>
									<option value="2" ${car.treatinfo1 == 2 ? 'selected':''}>전기차</option>
									<option value="3" ${car.treatinfo1 == 3 ? 'selected':''}>장애인</option>
								</select>
							</div>
						</div>
						<div class="form-group row">
							<label for="lotColor" class="col-sm-3" style="font-size:0.9em;">
								<span style="color:red;font-weight:bold;">*</span>주차석 색상</label>
							<div class="col-sm-9 input-group-sm">
								<select class="form-control col-md-3" name="lotColor"
									id="lotColor" onchange="searchList_go(1);">
									<option value="1">빨강</option>
									<option value="2" ${car.lotcolor == 2 ? 'selected':''}>파랑</option>
									<option value="3" ${car.lotcolor == 3 ? 'selected':''}>초록</option>
									<option value="4" ${car.lotcolor == 4 ? 'selected':''}>노랑</option>
									<option value="4" ${car.lotcolor == 5 ? 'selected':''}>주황</option>
								</select>
							</div>
						</div>
					</form>
				</div>
				<!--end card-body  -->
				<div class="card-footer" style="display: none"></div>
				<!--end card-footer  -->
			</div>
			<!-- end card -->
		</div>
		<!-- end col-md-12 -->
	</section>
</div>
<!-- end row -->



<script>
	function regist_go() {
		if (!$('input[name="carNum"]').val()) {
			alert("차량번호는 필수입니다.");
			return;
		}
		if ($('input[name="carNum"]').val() != checkedID) {
			alert("차량번호는 중복 확인이 필요합니다.");
			return;
		}
		if (!$('input[name="cType"]').val()) {
			alert("차량종류는 필수입니다.");
			return;
		}
		if (!$('input[name="treatInfo1"]').val()) {
			alert("우대정보 1은 필수입니다.");
			return;
		}
		if (!$('input[name="lotColor"]').val()) {
			alert("주차석 색상은 필수입니다.");
			return;
		}

		var form = $('form[role="form"]');
		form.submit();
	}
</script>

<script>
	var checkedID = "";
	function carNumCheck_go() {
		//alert("click idcheck btn");
		var input_carNum = $('input[name="carNum"]');

		if (!input_carNum.val()) {
			alert("차량번호를 입력하시오");
			input_carNum.focus();
			return;
		}

		$.ajax({
			url : "carNumCheck.do?carNum=" + input_carNum.val().trim(),
			success : function(result) {
				if (result.toUpperCase() == "DUPLICATED") {
					alert("중복된 차량번호 입니다.");
					$('input[name="carNum"]').focus();
				} else {
					alert("사용가능한 차량번호 입니다.");
					checkedID = input_carNum.val().trim();
					$('input[name="carNum"]').val(input_carNum.val().trim());
				}
			},
			error : function(error) {
				AjaxErrorSecurityRedirectHandler(error.status);
			}
		});
	}
</script>
</body>

