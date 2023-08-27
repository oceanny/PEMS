<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>


<c:set var="command" value="${pageMaker.command }" />
<head>
</head>
<body>

	<!-- Content Header (Page header) -->
	<section class="content-header">
		<div class="container-fluid">
			<div class="row mb-2">
				<div class="col-sm-6">
					<h1>공지사항</h1>
				</div>
				<div class="col-sm-6">
					<ol class="breadcrumb float-sm-right">
						<li class="breadcrumb-item"><a href="list.do"><i
								class="fa fa-dashboard"></i>HOME</a></li>
						<li class="breadcrumb-item active">공지사항</li>
					</ol>
				</div>
			</div>
		</div>
	</section>
	
	



		<blockquote  class="quote-primary" >
<h5 id="tip">공지사항</h5>
<p>			<p>이곳은 주차장이용 관련된 각종 공지사항을 제공하는 곳입니다.<br>문의사항은 고객센터의 1:1문의와 자주묻는 질문 (FAQ)를 이용해주세요.</p>
 <a href="https://adminlte.io/themes/v3/starter.html">문의사항 바로가기</a>

</blockquote>
		
	<div class="card-header with-border">
		<div id="keyword" class="card-tools">
			<div class="input-group row">
				<select class="form-control col-md-3" name="perPageNum"
					id="perPageNum" onchange="searchList_go(1);">
					<option value="10">정렬개수</option>
					<option value="20" ${command.perPageNum == 20 ? 'selected':''}>20개씩</option>
					<option value="50" ${command.perPageNum == 50 ? 'selected':''}>50개씩</option>
					<option value="100" ${command.perPageNum == 100 ? 'selected':''}>100개씩</option>

				</select> <select class="form-control col-md-4" name="searchType"
					id="searchType">
					<option value="tcw" ${command.searchType eq 'tcw' ? 'selected':'' }>전
						체</option>
					<option value="t" ${command.searchType eq 't' ? 'selected':'' }>제
						목</option>
					<option value="w" ${command.searchType eq 'w' ? 'selected':'' }>작성자</option>
					<option value="c" ${command.searchType eq 'c' ? 'selected':'' }>내
						용</option>
					<option value="tc" ${command.searchType eq 'tc' ? 'selected':'' }>제목+내용</option>
					<option value="cw" ${command.searchType eq 'cw' ? 'selected':'' }>작성자+내용</option>
					<option value="tcw" ${command.searchType eq 'tcw' ? 'selected':'' }>작성자+제목+내용</option>
				</select> <input class="form-control" type="text" name="keyword"
					placeholder="검색어를 입력하세요." value="${command.keyword }" /> <span
					class="input-group-append">
					<button class="btn btn-primary" type="button"
						onclick="searchList_go(1);" data-card-widget="search">
						<i class="fa fa-fw fa-search"></i>
					</button>
				</span>
			</div>
		</div>
	</div>

	<div class="card-body">
		<table class="table table-bordered table-hover text-center">
			<thead>
				<tr style>
					<th width=7%>NO.</th>
					<th width=60%>제목</th>
					<th width=13%>글쓴이</th>
					<th width=13%>날짜</th>
					<th width=7%>조회수</th>
				</tr>
			</thead>
			<tbody>
								<c:if test="${empty noticeList }" >
						<tr>
							<td colspan="5">
								<strong>해당 내용이 없습니다.</strong>
							</td>
						</tr>
					</c:if>			
					<c:forEach items="${noticeList }" var="notice">
						<tr style='font-size:0.85em;cursor:pointer;'> 
							<td>${notice.notiNum }</td>
							<td style="text-align:left;
									   max-width:100px;
							           overflow: hidden; 
									   white-space: nowrap; 
									   text-overflow: ellipsis;">
							<a href="detail.do?notiNum=${notice.notiNum}">
									   ${notice.notiTitle }
							 </a>
              </td>
							<td>${notice.adminId }</td>
							<td>
								<fmt:formatDate value="${notice.notiRegDate }"
								                pattern="yyyy-MM-dd"/>
							</td>
							<td>${notice.notiCnt }</td>
						</tr>
					</c:forEach>



			</tbody>
		</table>
	</div>




	<div class="card-footer">
		<%@ include file="/WEB-INF/views/module/pagination.jsp"%>
	</div>

	</div>