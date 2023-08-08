<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<c:set var="pdsList" value="${dataMap.pdsList }" />
<c:set var="command" value="${dataMap.pageMaker.command }" />
<c:set var="pageMaker" value="${dataMap.pageMaker }" />
<%@ taglib prefix="decorator"
	uri="http://www.opensymphony.com/sitemesh/decorator"%>

<head>
<style>
.parking-map {
	width: 1300px;
	height: 350px;
	font-size: 8pt;
	text-align: center;
	display: flex;
	align-items: center;
	overflow: hidden;
	flex-grow: 1;
}
tr {
	height:25px;
	padding:0px;
}

tr#even {
	border-right:none;
}

td {
	padding:0px;
}

td#blank {
	border-right:none;
}
</style>
</head>
<body>
	<!-- Content Header (Page header) -->
	<section class="content-header">
		<div class="container-fluid">
			<div class="row mb-2">
				<div class="col-sm-6">
					<h1>HOME</h1>
				</div>
				<div class="col-sm-6">
					<ol class="breadcrumb float-sm-right">
						<li class="breadcrumb-item"><a href="list.do"><i
								class="fa fa-dashboard"></i>HOME</a></li>
						<li class="breadcrumb-item active">대시보드</li>
					</ol>
				</div>
			</div>
		</div>
	</section>

	<!-- Main content -->
	<section class="content">
		<div class="card">
			<div class="card-body">
				<div class="row">
					<!-- 주차도 화면 -->
					<div class="col-10">
						<div class="center-container">
							<div class="card" style="heingt:350;">
								<div class="card-header">
									<h3 class="card-title">주차도</h3><a class="float-sm-right" style="font-size: 8pt;">자세히보기+</a>
								</div>
								<div class="card-body parking-map">
								<table class="table table-bordered dataTable dtr-inline" >
									<tr>
										<td class="blank" colspan="2"></td>
										<td style="background-color:green; width:20px;">A01</td>
										<td style="background-color:green;">A02</td>
										<td style="background-color:green;">A03</td>
										<td style="background-color:green;">A04</td>
										<td style="background-color:blue;">[전]</td>
										<td style="background-color:red;"></td>
										<td style="background-color:red;"></td>
										<td style="background-color:blue;">[전]</td>
										<td style="background-color:green;">B02</td>
										<td style="background-color:green;">B03</td>
										<td style="background-color:green;">B04</td>
										<td style="background-color:blue;">[전]</td>
										<td style="background-color:red;"></td>
										<td style="background-color:red;"></td>
										<td style="background-color:blue;">[전]</td>
										<td style="background-color:green;">C02</td>
										<td style="background-color:green;">C03</td>
										<td style="background-color:green;">C04</td>
										<td style="background-color:blue;">[전]</td>
										<td style="background-color:red;"></td>
										<td style="background-color:red;"></td>
										<td style="background-color:blue;">[전]</td>
										<td style="background-color:pink;">[경]</td>
										<td style="background-color:pink;">[경]</td>
										<td style="background-color:pink;">[경]</td>
										<td style="background-color:pink;">[경]</td>
										<td class="blank" colspan="2">↓</td>
									</tr>
									<tr class="even">
										<td colspan="2">입구></td>
									</tr>
									<tr>
										<td class="blank" colspan="2"></td>
										<!-- <td rowspan="7" colspan="2"></td> -->
										<td style="background-color:green; width:20px;">A06</td>
										<td style="background-color:green;">A07</td>
										<td style="background-color:green;">A08</td>
										<td style="background-color:green;">A09</td>
										<td style="background-color:green;">A10</td>
										<td rowspan="5" colspan="2"></td>
										<td style="background-color:green;">B06</td>
										<td style="background-color:green;">B07</td>
										<td style="background-color:green;">B08</td>
										<td style="background-color:green;">B09</td>
										<td style="background-color:green;">B10</td>
										<td rowspan="5" colspan="2"></td>
										<td style="background-color:green;">C06</td>
										<td style="background-color:green;">C07</td>
										<td style="background-color:green;">C08</td>
										<td style="background-color:green;">C09</td>
										<td style="background-color:green;">C10</td>
										<td rowspan="5" colspan="2"></td>
										<td style="background-color:green;">D06</td>
										<td style="background-color:green;">D07</td>
										<td style="background-color:green;">D08</td>
										<td style="background-color:green;">D09</td>
										<td style="background-color:green;">D10</td>
									</tr>
									<tr>
										<td class="blank" colspan="2"></td>
										<td style="background-color:green; width:20px;">E01</td>
										<td style="background-color:green;">E02</td>
										<td style="background-color:green;">E03</td>
										<td style="background-color:green;">E04</td>
										<td style="background-color:green;">E05</td>
										<td style="background-color:green;">F01</td>
										<td style="background-color:green;">F02</td>
										<td style="background-color:green;">F03</td>
										<td style="background-color:green;">F04</td>
										<td style="background-color:green;">F05</td>
										<td style="background-color:green;">G01</td>
										<td style="background-color:green;">G02</td>
										<td style="background-color:green;">G03</td>
										<td style="background-color:green;">G04</td>
										<td style="background-color:green;">G05</td>
										<td style="background-color:green;">H01</td>
										<td style="background-color:green;">H02</td>
										<td style="background-color:green;">H03</td>
										<td style="background-color:green;">H04</td>
										<td style="background-color:green;">H05</td>
									</tr>
									<tr class="even">
									</tr>
									<tr>
										<td class="blank" colspan="2"></td>
										<td style="background-color:green; width:20px;">E06</td>
										<td style="background-color:green;">E07</td>
										<td style="background-color:green;">E08</td>
										<td style="background-color:green;">E09</td>
										<td style="background-color:green;">E10</td>
										<td style="background-color:green;">F06</td>
										<td style="background-color:green;">F07</td>
										<td style="background-color:green;">F08</td>
										<td style="background-color:green;">F09</td>
										<td style="background-color:green;">F10</td>
										<td style="background-color:green;">G06</td>
										<td style="background-color:green;">G07</td>
										<td style="background-color:green;">G08</td>
										<td style="background-color:green;">G09</td>
										<td style="background-color:green;">G10</td>
										<td style="background-color:green;">H06</td>
										<td style="background-color:green;">H07</td>
										<td style="background-color:green;">H08</td>
										<td style="background-color:green;">H09</td>
										<td style="background-color:green;">H10</td>
									</tr>
									<tr>
										<td class="blank" colspan="2"></td>
										<td style="background-color:green; width:20px;">I01</td>
										<td style="background-color:green;">I02</td>
										<td style="background-color:green;">I03</td>
										<td style="background-color:green;">I04</td>
										<td style="background-color:green;">I05</td>
										<td style="background-color:green;">J01</td>
										<td style="background-color:green;">J02</td>
										<td style="background-color:green;">J03</td>
										<td style="background-color:green;">J04</td>
										<td style="background-color:green;">J05</td>
										<td style="background-color:green;">K01</td>
										<td style="background-color:green;">K02</td>
										<td style="background-color:green;">K03</td>
										<td style="background-color:green;">K04</td>
										<td style="background-color:green;">K05</td>
										<td style="background-color:green;">L01</td>
										<td style="background-color:green;">L02</td>
										<td style="background-color:green;">L03</td>
										<td style="background-color:green;">L04</td>
										<td style="background-color:green;">L05</td>
									</tr>
									<tr class="even">
									</tr>
									<tr>
										<td colspan="2">↑</td>
										<td style="background-color:pink; width:20px;">[경]</td>
										<td style="background-color:pink;">[경]</td>
										<td style="background-color:pink;">[경]</td>
										<td style="background-color:pink;">[경]</td>
										<td style="background-color:blue;">[전]</td>
										<td style="background-color:red;"></td>
										<td style="background-color:red;"></div></td>
										<td style="background-color:blue;">[전]</td>
										<td style="background-color:lightblue;">[장]</td>
										<td style="background-color:lightblue;">[장]</td>
										<td style="background-color:lightblue;">[장]</td>
										<td style="background-color:lightblue;">[장]</td>
										<!-- <td><div style="visibility: hidden;"><button onclick=""></div></td> -->
										<td colspan="2">E/V</td>
										<td style="background-color:green;">K06</td>
										<td style="background-color:green;">K07</td>
										<td style="background-color:green;">K08</td>
										<td style="background-color:green;">K09</td>
										<td style="background-color:blue;">[전]</td>
										<td style="background-color:red;"></td>
										<td style="background-color:red;"></td>
										<td style="background-color:blue;">[전]</td>
										<td style="background-color:green;">L07</td>
										<td style="background-color:green;">L08</td>
										<td style="background-color:green;">L09</td>
										<td style="background-color:green;">L10</td>
										<td class="blank" colspan="2">↓</td>
										</tr>
									</table>
								</div>
							</div>
						</div>
					</div>
					<div class="col-2">
					<!-- 전기차충전량 -->
						<div class="card" style="width:250px; height:150px;">
							<div class="card-header">
								<h3 class="card-title">전기차충전기</h3><a class="float-sm-right" style="font-size: 8pt;">자세히보기+</a>
							</div>
							<div class="card-body p-0">
								<table class="table text-center">
									<thead>
										<tr>
											<th style="width:45%;">시작시간</th>
											<th style="width:55%;">충전량</th>
										</tr>
									</thead>
									<tbody>
										<tr style="border:0;">
											<th style="padding-left:12px; padding-right:12px;">13:50</th>
											<td style="padding-left:12px;">
												<div class="progress progress-xs progress-striped active" style="width: 100%; height: 20px;">
													<div class="progress-bar bg-primary" style="width: 30%; height: 20px;"><span class="badge bg-primary">30%</span></div>
												</div>
											</td>
										</tr>
									</tbody>
								</table>
							</div>
						</div>
					<!-- 내차량정보 -->
						<div class="card" style="width:250px; height:202px;">
							<div class="card-header">
								<h3 class="card-title">내차량정보</h3><a class="float-sm-right" style="font-size: 8pt;">자세히보기+</a>
							</div>
							<div class="card-body p-0">
								<table class="table text-center">
									<tr>
										<td><b>차량번호</b></td>
										<td>123가1234</td>
									</tr>
									<tr>
										<td><b>주차위치</b></td>
										<td>A06</td>
									</tr>
									<tr>
										<td><b>입차시간</b></td>
										<td>13:36</td>
									</tr>
								</table>
							</div>
						</div>
					</div>
				</div>
				<div class="row">
					<!-- 공지사항 -->
					<div class="col-6">
						<div class="card">
							<div class="card-header">
								<h3 class="card-title">공지사항</h3><a class="float-sm-right" style="font-size: 8pt;">자세히보기+</a>
							</div>
							<div class="card-body">
								<table class="table table-bordered text-center" >					
									<tr style="font-size:0.95em;">
										<th style="width:10%;">번 호</th>
										<th style="width:50%;">제 목</th>
										<th style="width:15%;">작성자</th>
										<th>등록일</th>
										<th style="width:10%;">조회수</th>
									</tr>	
									<c:if test="${empty noticeList }" >
										<tr>
											<td colspan="5">
												<strong>해당 내용이 없습니다.</strong>
											</td>
										</tr>
									</c:if>			
									<c:forEach items="${noticeList }" var="notice">
										<tr style='font-size:0.85em;cursor:pointer;' 
											onclick="OpenWindow('detail.do?nno=${notice.nno }&from=list','상세보기',700,800);">
											<td>${notice.nno }</td>
											<td style="text-align:left;
													   max-width:100px;
											           overflow: hidden; 
													   white-space: nowrap; 
													   text-overflow: ellipsis;">${notice.title }</td>
											<td>${notice.writer }</td>
											<td>
												<fmt:formatDate value="${notice.regDate }"
												                pattern="yyyy-MM-dd"/>
											</td>
											<td>${notice.viewcnt }</td>
										</tr>
									</c:forEach>			
								</table>
							</div>
						</div>
					</div>
					<!-- 문의사항 -->
					<div class="col-6">
						<div class="card">
							<div class="card-header">
								<h3 class="card-title">문의사항</h3><a class="float-sm-right" style="font-size: 8pt;">자세히보기+</a>
							</div>
							<div class="card-body">
								<table class="table table-bordered text-center" >					
									<tr style="font-size:0.95em;">
										<th style="width:10%;">번 호</th>
										<th style="width:50%;">제 목</th>
										<th style="width:15%;">작성자</th>
										<th>등록일</th>
										<th style="width:10%;">조회수</th>
									</tr>	
									<c:if test="${empty noticeList }" >
										<tr>
											<td colspan="5">
												<strong>해당 내용이 없습니다.</strong>
											</td>
										</tr>
									</c:if>			
									<c:forEach items="${noticeList }" var="notice">
										<tr style='font-size:0.85em;cursor:pointer;' 
											onclick="OpenWindow('detail.do?nno=${notice.nno }&from=list','상세보기',700,800);">
											<td>${notice.nno }</td>
											<td style="text-align:left;
													   max-width:100px;
											           overflow: hidden; 
													   white-space: nowrap; 
													   text-overflow: ellipsis;">${notice.title }</td>
											<td>${notice.writer }</td>
											<td>
												<fmt:formatDate value="${notice.regDate }"
												                pattern="yyyy-MM-dd"/>
											</td>
											<td>${notice.viewcnt }</td>
										</tr>
									</c:forEach>			
								</table>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>