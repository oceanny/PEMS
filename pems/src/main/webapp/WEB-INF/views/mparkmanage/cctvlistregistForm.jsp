<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!-- Main content -->
<section class="content container-fluid">
	<div class="row">
		<div class="col-md-12">
			<div class="card card-outline card-info">
				<div class="card-header">
					<h3 class="card-title text-center">CCTV파일조회</h3>
					<div class="card-tools">
				    </div>
				</div>
				<div class="card-body">
					<div class="row">
						<table class="table table-bordered text-center">
							<tr>
								<td style="width:15%"><b>파일번호</b></td>
								<td style="width:10%"></td>
								<td style="width:15%"><b>파일날짜</b></td>
								<td style="width:25%; padding:0px;"><input type="date" id="today_date" style="width:100%; height:50px;"/></td>
								<td style="width:10%"><b>구역</b></td>
								<td style="width:25%; padding:0px;">
									<select class="form-control" name="sectionselect" id="sectionselect" style="width:100%; height:49px;">
										<option value="1A001">1층A구역</option>
										<option value="1B001">1층B구역</option>
										<option value="1C001">1층C구역</option>
										<option value="1D001">1층D구역</option>
										<option value="1E001">1층E구역</option>
										<option value="1F001">1층F구역</option>
										<option value="2A001">2층A구역</option>
										<option value="2B001">2층B구역</option>
										<option value="2C001">2층C구역</option>
										<option value="2D001">2층D구역</option>
										<option value="2E001">2층E구역</option>
										<option value="2F001">2층F구역</option>
									</select>
								</td>
							</tr>
							<tr>
								<td><b>파일명</b></td>
								<td colspan="5" style="padding:0px;"><input type="text" class="form-control" style="height:49px;"></td>
							</tr>
							<tr>
								<td><b>첨부파일</b></td>
								<td colspan="3">${cctv.cctvFilePath }</td>
								<td style="width:17%; padding:0px;'">
									<div><button type="button" class="btn  btn-outline-light" style="width:100%; height:49.11px;" onclick="upload_go();" id="addFIleBtn">파일선택</button></div>
									<div class="fileInput"></div>
								</td>
								<td style="width:17%; padding:0px;">
									<div><button type="button" class="btn  btn-outline-light" style="width:100%; height:49.11px;">등록</button></div>
								</td>
							</tr>
							<tr>
								<td colspan="6">
									
								</td>
							</tr>
						</table>
					</div>	
				</div>
				<div class="card-footer">
					<div class="row">
						<div class="col-5"></div>
						<div class="col-2"><button type="button" class="btn  btn-outline-light" style="width:100%; height:49.11px;" onclick="CloseWindow();">나가기</button></div>
						<div class="col-5"></div>
					</div>
				</div>													
			</div><!-- end card -->				
		</div><!-- end col-md-12 -->
	</div><!-- end row  -->
</section>
  <!-- /.content -->
<!-- REQUIRED SCRIPTS -->
<form role="form">
	<input type="hidden" name="cctvFileNum" value="${cctv.cctvFileNum }" />
</form>
<script>
document.getElementById('today_date').valueAsDate = new Date();
</script>
<script>
var dataNum = 0;
function upload_go(){
	//alert("upload");
	if($('input[name="uploadFile"]').length >= 1}){
		alert("파일은 1개만 등록 가능합니다.");
		return;
	}
	var div = $('<div>').addClass("inputRow").attr("data-no", dataNum);
	var input = $('<input>').attr({"type":"file", "name":"uploadFile", "onchange":"fileChange_go("+dataNum+");"}).css("display","inline");
	div.append(input).append("<button onclick='remove_go("+dataNum+");' style='border:0; outline:0;' class='badge bg-red' type='button'>X</button>");
	$('.fileInput').append(div);
	
	dataNum++;
}

function remove_go(dataNum){
	$('div[data-no="'+dataNum+'"]').remove();
}

function fileChange_go(dataNum){
	let input = $('div[data-no="'+dataNum'"] input[type="file"]')[0];
	let file = input.files[0];
}
</script>



