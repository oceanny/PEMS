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
	font-size: 8pt;
	text-align: center;
	display: flex;
	align-items: center;
	overflow: hidden;
	flex-grow: 1;
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
						<div class="col-9">
							<div class="center-container">
								<div class="card" style="heingt:350;">
									<div class="card-header">
										<h3 class="card-title">주차도</h3><a class="float-sm-right" style="font-size: 8pt;">자세히보기+</a>
									</div>
									<div class="card-body parking-map">
									<table class="table table-bordered dataTable dtr-inline" style="width:1600px;">
										<tr>
											<td colspan="2" style=" width:6%; border-bottom:hidden;"></td>
											<td style="background-color:green; width:3%;">A01</td>
											<td style="background-color:green; width:3%;">A02</td>
											<td style="background-color:green; width:3%;">A03</td>
											<td style="background-color:green; width:3%;">A04</td>
											<td style="background-color:blue; width:3%;">[전]</td>
											<td style="background-color:red; width:3%;"></td>
											<td style="background-color:red; width:3%;"></td>
											<td style="background-color:blue; width:3%;">[전]</td>
											<td style="background-color:green; width:3%;">B02</td>
											<td style="background-color:green; width:3%;">B03</td>
											<td style="background-color:green; width:3%;">B04</td>
											<td style="background-color:blue; width:3%;">[전]</td>
											<td style="background-color:red; width:3%;"></td>
											<td style="background-color:red; width:3%;"></td>
											<td style="background-color:blue; width:3%;">[전]</td>
											<td style="background-color:green; width:3%;">C02</td>
											<td style="background-color:green; width:3%;">C03</td>
											<td style="background-color:green; width:3%;">C04</td>
											<td style="background-color:blue; width:3%;">[전]</td>
											<td style="background-color:red; width:3%;"></td>
											<td style="background-color:red; width:3%;"></td>
											<td style="background-color:blue; width:3%;">[전]</td>
											<td style="background-color:pink; width:3%;">[경]</td>
											<td style="background-color:pink; width:3%;">[경]</td>
											<td style="background-color:pink; width:3%;">[경]</td>
											<td style="background-color:pink; width:3%;">[경]</td>
											<td class="blank" colspan="2" style=" width:6%; border-bottom:hidden;">↓</td>
										</tr>
										<tr>
											<td colspan="2" style="border-right:hidden; border-bottom:hidden;">입구></td>
											<td colspan="28"></td>
										</tr>
										<tr>
											<td colspan="2" style="border-bottom:hidden;"></td>
											<td style="background-color:green;">A06</td>
											<td style="background-color:green;">A07</td>
											<td style="background-color:green;">A08</td>
											<td style="background-color:green;">A09</td>
											<td style="background-color:green;">A10</td>
											<td colspan="2"  style="border-bottom:hidden; border-top:hidden;"></td>
											<td style="background-color:green;">B06</td>
											<td style="background-color:green;">B07</td>
											<td style="background-color:green;">B08</td>
											<td style="background-color:green;">B09</td>
											<td style="background-color:green;">B10</td>
											<td colspan="2" style="border-bottom:hidden; border-top:hidden;"></td>
											<td style="background-color:green;">C06</td>
											<td style="background-color:green;">C07</td>
											<td style="background-color:green;">C08</td>
											<td style="background-color:green;">C09</td>
											<td style="background-color:green;">C10</td>
											<td colspan="2" style="border-bottom:hidden; border-top:hidden;"></td>
											<td style="background-color:green;">D06</td>
											<td style="background-color:green;">D07</td>
											<td style="background-color:green;">D08</td>
											<td style="background-color:green;">D09</td>
											<td style="background-color:green;">D10</td>
											<td colspan="2" style="border-bottom:hidden; border-top:hidden;"></td>
										</tr>
										<tr>
											<td colspan="2" style="border-bottom:hidden;"></td>
											<td style="background-color:green;">E01</td>
											<td style="background-color:green;">E02</td>
											<td style="background-color:green;">E03</td>
											<td style="background-color:green;">E04</td>
											<td style="background-color:green;">E05</td>
											<td colspan="2" style="border-bottom:hidden;"></td>
											<td style="background-color:green;">F01</td>
											<td style="background-color:green;">F02</td>
											<td style="background-color:green;">F03</td>
											<td style="background-color:green;">F04</td>
											<td style="background-color:green;">F05</td>
											<td colspan="2" style="border-bottom:hidden;"></td>
											<td style="background-color:green;">G01</td>
											<td style="background-color:green;">G02</td>
											<td style="background-color:green;">G03</td>
											<td style="background-color:green;">G04</td>
											<td style="background-color:green;">G05</td>
											<td colspan="2" style="border-bottom:hidden;"></td>
											<td style="background-color:green;">H01</td>
											<td style="background-color:green;">H02</td>
											<td style="background-color:green;">H03</td>
											<td style="background-color:green;">H04</td>
											<td style="background-color:green;">H05</td>
											<td colspan="2" style="border-bottom:hidden;"></td>
										</tr>
										<tr>
											<td colspan="30" style="height:41px;"></td>
										</tr>
										<tr>
											<td colspan="2" style="border-bottom:hidden; border-top:hidden;"></td>
											<td style="background-color:green;">E06</td>
											<td style="background-color:green;">E07</td>
											<td style="background-color:green;">E08</td>
											<td style="background-color:green;">E09</td>
											<td style="background-color:green;">E10</td>
											<td colspan="2" style="border-bottom:hidden; border-top:hidden;"></td>
											<td style="background-color:green;">F06</td>
											<td style="background-color:green;">F07</td>
											<td style="background-color:green;">F08</td>
											<td style="background-color:green;">F09</td>
											<td style="background-color:green;">F10</td>
											<td colspan="2" style="border-bottom:hidden; border-top:hidden;"></td>
											<td style="background-color:green;">G06</td>
											<td style="background-color:green;">G07</td>
											<td style="background-color:green;">G08</td>
											<td style="background-color:green;">G09</td>
											<td style="background-color:green;">G10</td>
											<td colspan="2" style="border-bottom:hidden; border-top:hidden;"></td>
											<td style="background-color:green;">H06</td>
											<td style="background-color:green;">H07</td>
											<td style="background-color:green;">H08</td>
											<td style="background-color:green;">H09</td>
											<td style="background-color:green;">H10</td>
											<td colspan="2" style="border-bottom:hidden; border-top:hidden;"></td>
										</tr>
										<tr>
											<td colspan="2" style="border-bottom:hidden;"></td>
											<td style="background-color:green;">I01</td>
											<td style="background-color:green;">I02</td>
											<td style="background-color:green;">I03</td>
											<td style="background-color:green;">I04</td>
											<td style="background-color:green;">I05</td>
											<td colspan="2" style="border-bottom:hidden;"></td>
											<td style="background-color:green;">J01</td>
											<td style="background-color:green;">J02</td>
											<td style="background-color:green;">J03</td>
											<td style="background-color:green;">J04</td>
											<td style="background-color:green;">J05</td>
											<td colspan="2" style="border-bottom:hidden;"></td>
											<td style="background-color:green;">K01</td>
											<td style="background-color:green;">K02</td>
											<td style="background-color:green;">K03</td>
											<td style="background-color:green;">K04</td>
											<td style="background-color:green;">K05</td>
											<td colspan="2" style="border-bottom:hidden;"></td>
											<td style="background-color:green;">L01</td>
											<td style="background-color:green;">L02</td>
											<td style="background-color:green;">L03</td>
											<td style="background-color:green;">L04</td>
											<td style="background-color:green;">L05</td>
											<td colspan="2" style="border-bottom:hidden;"></td>
										</tr>
										<tr>
											<td colspan="30" style="height:41px;"></td>
										</tr>
										<tr>
											<td colspan="2" style="border-top:hidden;">↑</td>
											<td style="background-color:pink; width:20px;">[경]</td>
											<td style="background-color:pink;">[경]</td>
											<td style="background-color:pink;">[경]</td>
											<td style="background-color:pink;">[경]</td>
											<td style="background-color:blue;">[전]</td>
											<td style="background-color:red;"></td>
											<td style="background-color:red;"></td>
											<td style="background-color:blue;">[전]</td>
											<td style="background-color:lightblue;">[장]</td>
											<td style="background-color:lightblue;">[장]</td>
											<td style="background-color:lightblue;">[장]</td>
											<td style="background-color:lightblue;">[장]</td>
											<td colspan="2" style="border-top:hidden;">E/V</td>
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
											<td colspan="2" style="border-top:hidden;">↓</td>
											</tr>
										</table>
									</div>
								</div>
							</div>
						</div>
						<div class="col-3">
							<!-- 내차량정보 -->
							<div class="card" >
								<div class="card-header">
									<h3 class="card-title">내차량정보</h3><a class="float-sm-right" style="font-size: 8pt;">자세히보기+</a>
								</div>
								<div class="card-body">
									<table class="table text-center table-bordered">
										<tr>
											<td style="background-color:#6c757d1a; whidth:70%"><b>차량번호</b></td>
											<td style="whidth:30%">123가1234</td>
										</tr>
										<tr>
											<td style="background-color:#6c757d1a;"><b>주차위치</b></td>
											<td>A06</td>
										</tr>
										<tr>
											<td style="background-color:#6c757d1a;"><b>입차시간</b></td>
											<td >13:36</td>
										</tr>
									</table>
								</div>
							</div>
							
							<!-- 주차장통계 -->
							<div class="card" >
								<div class="card-header">
									<h3 class="card-title">주차장통계</h3><a class="float-sm-right" style="font-size: 8pt;">자세히보기+</a>
								</div>
								<div class="card-body">
									<table class="table text-center table-bordered">
										<tr>
											<td style="background-color:#6c757d1a;"><b>자주주차한주차석</b></td>
											<td style="">F08</td>
										</tr>
										<tr>
											<td style="background-color:#6c757d1a;"><b>이용많은시간</b></td>
											<td style="">19:03</td>
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