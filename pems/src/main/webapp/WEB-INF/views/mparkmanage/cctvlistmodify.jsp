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
					<h3 class="card-title text-center">CCTV파일수정</h3>
					<div class="card-tools">
				    </div>
				</div>
				<div class="card-body">
					<div class="row">
						<table class="table table-bordered text-center">
							<tr>
								<td style="width:15%"><b>파일번호</b></td>
								<td style="width:10%">${cctv.cctvFileNum }</td>
								<td style="width:15%"><b>파일날짜</b></td>
								<td style="width:25%"><fmt:formatDate value="${cctv.cctvFileDate }" pattern="yyyy-MM-dd" /></td>
								<td style="width:10%"><b>구역</b></td>
								<td style="width:25%">${cctv.cctvNum.replace('001','구역') }</td>
							</tr>
							<tr>
								<td><b>파일명</b></td>
								<td colspan="5" style="padding:0px;"><input type="text" class="form-control" style="height:49px;"></td>
							</tr>
							<tr>
								<td><b>파일수정</b></td>
								<td colspan="4" style="width:17%; padding:0px; text:right;">
									<div><input type="file" class="control-form" style="width:384.17px; height:49.11px;"></div>
								</td>
								<td style="width:17%; padding:0px;">
									<div><button type="button" class="btn  btn-outline-light" style="width:100%; height:49.11px;">등록</button></div>
								</td>
							</tr>
							<tr>
								<td colspan="6">
									<video controls="controls" width="100%" height="100%">
										<source src="<%=request.getContextPath()%>/resources/media/video.mp4" type="video/mp4">
									</video>
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



