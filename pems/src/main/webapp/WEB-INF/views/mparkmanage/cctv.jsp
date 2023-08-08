<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="decorator"
	uri="http://www.opensymphony.com/sitemesh/decorator"%>

<c:set var="command" value="${pageMaker.command }" />

<head>
  <!-- Date Picker -->
  <link rel="stylesheet" href="<%=request.getContextPath() %>/resources/bootstrap/plugins/daterangepicker/daterangepicker.css">
<style>
.nopadding {
	padding: 0px;
}
</style>
</head>
<body>
	<!-- Content Header (Page header) -->
	<section class="content-header">
		<div class="container-fluid">
			<div class="row mb-2">
				<div class="col-sm-6">
					<h1>CCTV</h1>
				</div>
				<div class="col-sm-6">
					<ol class="breadcrumb float-sm-right">
						<li class="breadcrumb-item"><a href="list.do"><i class="fa fa-dashboard"></i>주차장관리</a></li>
						<li class="breadcrumb-item active">CCTV</li>
					</ol>
				</div>
			</div>
		</div>
	</section>
	<!-- Main content -->
	<div class="col-12 ">
		<div class="card card-primary card-outline card-tabs">
			<div class="card-header p-0 pt-1 border-bottom-0">
				<ul class="nav nav-tabs" id="custom-tabs-three-tab" role="tablist">
					<li class="nav-item">
						<a class="nav-link active" id="custom-tabs-three-home-tab" data-toggle="tab" href="#custom-tabs-three-home" aria-controls="custom-tabs-three-home" aria-selected="true">실시간CCTV</a>
					</li>
					<li class="nav-item">
						<a class="nav-link" id="custom-tabs-three-profile-tab" data-toggle="tab" href="#custom-tabs-three-profile" aria-controls="custom-tabs-three-profile" aria-selected="false">CCTV녹화파일조회</a>
					</li>
				</ul>
			</div>
			<div class="card-body">
				<div class="tab-content" id="custom-tabs-three-tabContent">
					<div class="tab-pane fade active show" id="custom-tabs-three-home" role="tabpanel" aria-labelledby="custom-tabs-three-home-tab">
						<!-- 실시간CCTV -->
						<div class="card">
							<div class="card-header">
								<div class="row">
									<div class="col-11"></div>
									<div class="col-1">
										<div class="input-group">
											<select class="form-control " name="perPageNum" id="perPageNum" onchange="OpenWindow('<%=request.getContextPath() %>/WEB-INF/views/mparkmanage/cctvform.jsp', 'CCTV', 1000, 1000);">
												<option>전체보기</option>
												<option>1층A구역</option>
												<option>1층B구역</option>
												<option>1층C구역</option>
												<option>1층D구역</option>
												<option>1층E구역</option>
												<option>1층F구역</option>
												<option>2층A구역</option>
												<option>2층B구역</option>
												<option>2층C구역</option>
												<option>2층D구역</option>
												<option>2층E구역</option>
												<option>2층F구역</option>
											</select>
										</div>
									</div>
								</div>
							</div>
							<div class="card-body">
								<div class="row">
									<div class="col-3 nopadding">
										<video controls="controls" width="100%">
											<source src="<%=request.getContextPath()%>/resources/media/video.mp4" type="video/mp4">
										</video>
									</div>
									<div class="col-3 nopadding">
										<video controls="controls" width="100%">
											<source src="<%=request.getContextPath()%>/resources/media/video.mp4" type="video/mp4">
										</video>
									</div>
									<div class="col-3 nopadding">
										<video controls="controls" width="100%">
											<source src="<%=request.getContextPath()%>/resources/media/video.mp4" type="video/mp4">
										</video>
									</div>
									<div class="col-3 nopadding">
										<video controls="controls" width="100%">
											<source src="<%=request.getContextPath()%>/resources/media/video.mp4" type="video/mp4">
										</video>
									</div>
								</div>
								<div class="row">
									<div class="col-3 nopadding">
										<video controls="controls" width="100%">
											<source src="<%=request.getContextPath()%>/resources/media/video.mp4" type="video/mp4">
										</video>
									</div>
									<div class="col-3 nopadding">
										<video controls="controls" width="100%">
											<source src="<%=request.getContextPath()%>/resources/media/video.mp4" type="video/mp4">
										</video>
									</div>
									<div class="col-3 nopadding">
										<video controls="controls" width="100%">
											<source src="<%=request.getContextPath()%>/resources/media/video.mp4" type="video/mp4">
										</video>
									</div>
									<div class="col-3 nopadding">
										<video controls="controls" width="100%">
											<source src="<%=request.getContextPath()%>/resources/media/video.mp4" type="video/mp4">
										</video>
									</div>
								</div>
								<div class="row">
									<div class="col-3 nopadding">
										<video controls="controls" width="100%">
											<source src="<%=request.getContextPath()%>/resources/media/video.mp4" type="video/mp4">
										</video>
									</div>
									<div class="col-3 nopadding">
										<video controls="controls" width="100%">
											<source src="<%=request.getContextPath()%>/resources/media/video.mp4" type="video/mp4">
										</video>
									</div>
									<div class="col-3 nopadding">
										<video controls="controls" width="100%">
											<source src="<%=request.getContextPath()%>/resources/media/video.mp4" type="video/mp4">
										</video>
									</div>
									<div class="col-3 nopadding">
										<video controls="controls" width="100%">
											<source src="<%=request.getContextPath()%>/resources/media/video.mp4" type="video/mp4">
										</video>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="tab-pane fade" id="custom-tabs-three-profile" role="tabpanel" aria-labelledby="custom-tabs-three-profile-tab">
						<!-- CCTV녹화파일조회 -->
						<div class="card">
							<div class="card-header">
								<div class="row">
									<div class="col-8">
										<form class="form-inline">
											<div class="form-group">
												<button type="button" class="btn  btn-outline-light">다운로드</button>
												&nbsp;&nbsp;&nbsp;
												<button type="button" class="btn  btn-outline-light">삭제</button>
											</div>
										</form>
									</div>
									<div class="col-4">
										<div class="input-group">
											<!-- 날짜선택 달력 -->
											<input type="date" class="form-control col-6" />
												
											<!-- 구역선택 -->
											<select class="form-control col-6" name="perPageNum" id="perPageNum" onchange="searchList_go(1);">
												<option>전체보기</option>
												<option>1층A구역</option>
												<option>1층B구역</option>
												<option>1층C구역</option>
												<option>1층D구역</option>
												<option>1층E구역</option>
												<option>1층F구역</option>
												<option>2층A구역</option>
												<option>2층B구역</option>
												<option>2층C구역</option>
												<option>2층D구역</option>
												<option>2층E구역</option>
												<option>2층F구역</option>
											</select>
										</div>
									</div>
								</div>
							</div>
							<div class="card-body">
								<div class="row">
									<table class="table table-bordered text-center">
										<tr style="font-size: 0.95em;">
											<th style="width: 5%;">선택</th>
											<th style="width: 10%;">파일번호</th>
											<th style="width: 50%;">파일이름</th>
											<th>등록일</th>
											<th style="width:10%">구역</th>
										</tr>
										<c:if test="${empty cctvList }">
											<tr>
												<td colspan="5"><strong>해당 내용이 없습니다.</strong></td>
											</tr>
										</c:if>
										<c:forEach items="${cctvList }" var="cctv">
											<tr style='font-size: 0.85em;'>
												<td><input type="checkbox" id="" name="" />
												<td>${cctv.cctvFileNum }</td>
												<td onclick="OpenWindow('detail.do?cctvFileNum=${cctv.cctvFileNum }&from=list','상세보기',700,800);"style="cursor: pointer; text-align: left; max-width: 100px; overflow: hidden; white-space: nowrap; text-overflow: ellipsis;">${cctv.cctvFileName }</td>
												<td><fmt:formatDate value="${cctv.cctvFileDate }" pattern="yyyy-MM-dd" /></td>
												<td>${cctv.cctvNum }</td>
											</tr>
										</c:forEach>
									</table>
								</div>
							</div>
							<div class="card-footer">
								<%@ include file="/WEB-INF/views/module/pagination.jsp" %>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
<!-- date picker -->
<script src="<%=request.getContextPath() %>/resources/bootstrap/plugins/daterangepicker/daterangepicker.js"></script>

<script>

</script>
