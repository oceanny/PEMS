<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>

<!-- Main content -->
<div class="">
	<section class="content-header">
		<div class="container-fluid">
			<div class="row md-2">
				<div class="col-sm-6">
					<h1>전기차 충전기 예약</h1>
				</div>
			</div>
		</div>
	</section>
	<!-- Main content -->
	<section class="content register-page">
		<div class="register-box">
			<!-- form start -->
			<div class="card">
				<div class="register-card-body">
					<form role="form" class="form-horizontal" action="reserve.do" method="post">
						<div class="form-group row">
							<label for="carNum" class="col-sm-3" style="font-size: 0.9em;">
								<span style="color: red; font-weight: bold;">*</span>차량번호
							</label>
							<div class="col-sm-9 input-group input-group-sm">
							</div>
							<div class="col-sm-9 input-group input-group-sm">
								<input name="carNum" onkeyup="" type="text" class="form-control"
									id="carNum" placeholder="00가0000"> <span
									class="input-group-append-sm">
									<button type="button" onclick="carTypeCheck_go();"
										class="btn btn-info btn-sm btn-append">차종확인</button>
									<button type="button" onclick="carNumCheck_go();"
										class="btn btn-info btn-sm btn-append">중복확인</button>
								</span>
							</div>
						</div>
						<div class="form-group row">
							<label for="charNum" class="col-sm-3" style="font-size:0.9em;">
								<span style="color:red;font-weight:bold;">*</span>충전기 번호</label>
							<div class="col-sm-9 input-group-sm">
									<input type="text" name="charNum" value="${charge.charNum }" readonly />
							</div>
						</div>
						<div class="form-group row">
							<label for="charTime" class="col-sm-3" style="font-size:0.9em;">
								<span style="color:red;font-weight:bold;">*</span>사용 시간</label>
							<div class="col-sm-9 input-group-sm">
								<input type="date" name="charTime" />
							</div>
						</div>
					</form>
				</div>
				<!--end card-body  -->
				<div class="card-footer" style="display: none"></div>
				<div class="login-logo">
					<div class="card-tools">
						<button type="button" id="modifyBtn" class="btn btn-warning" onclick="reserve_go();">예약</button>
					    <button type="button" id="listBtn" class="btn btn-primary" onclick="CloseWindow();">취소</button>
				    </div>	
				</div>
				<!--end card-footer  -->
			</div>
			<!-- end card -->
		</div>
		<!-- end col-md-12 -->
	</section>
</div>
<!-- end row -->



<script>
	function reserve_go() {
		if (!$('input[name="carNum"]').val()) {
			alert("차량번호는 필수입니다.");
			return;
		}
		if ($('input[name="carNum"]').val() != checkedID) {
			alert("차량번호는 중복 확인이 필요합니다.");
			return;
		}
		if (!$('input[name="charNum"]').val()) {
			alert("충전기 번호는 필수입니다.");
			return;
		}
		if (!$('input[name="charTime"]').val()) {
			alert("사용 시간은 필수입니다.");
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
	
	function carTypeCheck_go() {
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
					alert("전기차가 아닙니다.");
					$('input[name="carNum"]').focus();
				} else {
					alert("충전가능한 차량입니다.");
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

