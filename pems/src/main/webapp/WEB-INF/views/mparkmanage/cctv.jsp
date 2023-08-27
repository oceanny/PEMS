<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<c:set var="cctvList" value="${dataMap.cctvList }" />
<c:set var="command" value="${dataMap.pageMaker.command }" />
<c:set var="pageMaker" value="${dataMap.pageMaker }" />

<head>
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
			<div class="card-header p-0 pt-1 border-bottom-0 tab_wrap">
				<ul class="nav nav-tabs tit_list" id="custom-tabs-three-tab" role="tablist">
					<li class="nav-item">
						<a class="nav-link active" id="custom-tabs-three-home-tab" data-toggle="pill" role="tab" href="#custom-tabs-three-home" aria-controls="custom-tabs-three-home" aria-selected="true">실시간CCTV</a>
					</li>
					<li class="nav-item">
						<a class="nav-link" id="custom-tabs-three-profile-tab" data-toggle="pill" role="tab" href="#custom-tabs-three-profile" aria-controls="custom-tabs-three-profile" aria-selected="false">CCTV녹화파일조회</a>
					</li>
				</ul>
			</div>
			<div class="card-body">
				<div class="tab-content tab_con" id="custom-tabs-three-tabContent">
					<div class="tab-pane fade active show tab_list" id="custom-tabs-three-home" role="tabpanel" aria-labelledby="custom-tabs-three-home-tab">
						<!-- 실시간CCTV -->
						<div class="card">
							<div class="card-header">
								<div class="row">
									<div class="col-11"></div>
									<div class="col-1">
										<div class="input-group">
											<select class="form-control " onchange="OpenWindow('cctvlivedetail.do?cctvFileNum=${cctv.cctvNum }', 'CCTV', 1600, 1000);">
												<option>전체보기</option>
												<option value="1A001" ${cctv.cctvNum == '1A001' ? 'selected':''}>1층A구역</option>
												<option value="1B001" ${cctv.cctvNum == '1B001' ? 'selected':''}>1층B구역</option>
												<option value="1C001" ${cctv.cctvNum == '1C001' ? 'selected':''}>1층C구역</option>
												<option value="1D001" ${cctv.cctvNum == '1D001' ? 'selected':''}>1층D구역</option>
												<option value="1E001" ${cctv.cctvNum == '1E001' ? 'selected':''}>1층E구역</option>
												<option value="1F001" ${cctv.cctvNum == '1F001' ? 'selected':''}>1층F구역</option>
												<option value="2A001" ${cctv.cctvNum == '2A001' ? 'selected':''}>2층A구역</option>
												<option value="2B001" ${cctv.cctvNum == '2B001' ? 'selected':''}>2층B구역</option>
												<option value="2C001" ${cctv.cctvNum == '2C001' ? 'selected':''}>2층C구역</option>
												<option value="2D001" ${cctv.cctvNum == '2D001' ? 'selected':''}>2층D구역</option>
												<option value="2E001" ${cctv.cctvNum == '2E001' ? 'selected':''}>2층E구역</option>
												<option value="2F001" ${cctv.cctvNum == '2F001' ? 'selected':''}>2층F구역</option>
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
					<div class="tab-pane fade tab_list" id="custom-tabs-three-profile" role="tabpanel" aria-labelledby="custom-tabs-three-profile-tab">
						<!-- CCTV녹화파일조회 -->
						<div class="card">
							<div class="card-header">
								<div class="row">
									<div class="col-8">
										<form class="form-inline">
											<div class="form-group">
												<button type="button" class="btn  btn-outline-light" onclick="OpenWindow('cctvlistregistForm.do','상세보기',700,700)">등록</button>
												&nbsp;&nbsp;&nbsp;
												<button type="button" class="btn  btn-outline-light" onclick="">다운로드</button>
												&nbsp;&nbsp;&nbsp;
												<button type="button" class="btn  btn-outline-light" onclick="">삭제</button>
											</div>
										</form>
									</div>
									<div class="col-4">
										<div class="input-group">
											<!-- 날짜선택 달력 -->
											<input type="date" class="form-control col-6" name="serchType" id="searchType">
											
											<!-- 구역선택 -->
											<select class="form-control col-6" name="searchType" id="searchType" >
												<option>전체보기</option>
												<option value="1A001" ${command.searchType eq '1A001' ? 'selected':'' }>1층A구역</option>
												<option value="1B001" ${command.searchType eq '1B001' ? 'selected':'' }>1층B구역</option>
												<option value="1C001" ${command.searchType eq '1C001' ? 'selected':'' }>1층C구역</option>
												<option value="1D001" ${command.searchType eq '1D001' ? 'selected':'' }>1층D구역</option>
												<option value="1E001" ${command.searchType eq '1E001' ? 'selected':'' }>1층E구역</option>
												<option value="1F001" ${command.searchType eq '1F001' ? 'selected':'' }>1층F구역</option>
												<option value="2A001" ${command.searchType eq '2A001' ? 'selected':'' }>2층A구역</option>
												<option value="2B001" ${command.searchType eq '2B001' ? 'selected':'' }>2층B구역</option>
												<option value="2C001" ${command.searchType eq '2C001' ? 'selected':'' }>2층C구역</option>
												<option value="2D001" ${command.searchType eq '2D001' ? 'selected':'' }>2층D구역</option>
												<option value="2E001" ${command.searchType eq '2E001' ? 'selected':'' }>2층E구역</option>
												<option value="2F001" ${command.searchType eq '2F001' ? 'selected':'' }>2층F구역</option>
											</select>
											<span class="input-group-append">
												<button class="btn btn-secondary" type="button" onclick="searchList_go(1);" data-card-widget="search">
													<i class="fa fa-fw fa-search"></i>
												</button>
											</span>
											
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
												<td><input type="checkbox" id="cctvCheck" name="cctvCheck" />
												<td>${cctv.cctvFileNum }</td>
												<td onclick="OpenWindow('cctvlistdetail.do?cctvFileNum=${cctv.cctvFileNum }&from=cctv','상세보기',700,700);" style="cursor: pointer; text-align: left; max-width: 100px; overflow: hidden; white-space: nowrap; text-overflow: ellipsis;">${cctv.cctvFileName }</td>
												<td><fmt:formatDate value="${cctv.cctvFileDate }" pattern="yyyy-MM-dd" /></td>
												<td>${cctv.cctvNum.replace('001','구역') }</td>
											</tr>
										</c:forEach>
									</table>
								</div>
							</div>
							<div class="card-footer">
								<%@ include file="/WEB-INF/views/mparkmanage/cctvpagination.jsp" %>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

<script>
$(document).ready(function(){
	var link = document.location.herf;
	vat tab = link.split('/').pop();
	$('a[href$=' + tab + ']').trigger('click');
});
</script>
