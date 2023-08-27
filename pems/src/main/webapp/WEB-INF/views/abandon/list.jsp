<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<c:set var="command" value="${pageMaker.command }" />

<head>
  <!-- board style by oceanny -->
  <link rel="stylesheet" href="<%=request.getContextPath() %>/resources/style/board.css">
</head>

 <!-- Main content -->
	<section class="content-header">
	  	<div class="container-fluid">
	  		<div class="row md-2">
	  			<div class="col-sm-6">
	  				<h1>방치 차량 조회</h1>  				
	  			</div>
	  			<div>
	  			</div>
	  		</div>
	  	</div>
	</section>

	<section class="content">
		<div class="card">
			<div class="card-header with-border">
				<div id="keyword" class="card-tools" >
					<div class="input-group row">
						<select class="form-control col-md-4" name="searchType" id="searchType">
							<option value="c" ${command.searchType eq 'c' ? 'selected':'' }>차량번호</option>
						</select>					
						<input  class="form-control" type="text" name="keyword" placeholder="차량번호를 입력하세요." value="${command.keyword }"/>
						<span class="input-group-append">
							<button class="btn btn-primary" type="button" onclick="searchList_go(1);" data-card-widget="search">
								<i class="fa fa-fw fa-search"></i>
							</button>
						</span>
					</div>
				</div>			
			</div>
			<div class="card-body">
				<table class="table table-bordered text-center" >					
					<tr style="font-size:0.95em;">
						<th style="width:20%;">아이디</th>
						<th style="width:20%;">차량번호</th>
						<th style="width:25%;">방치번호</th>
						<th>방치기간</th>
					</tr>	
					<c:if test="${empty dataMap.abanList }" >
						<tr>
							<td colspan="5">
								<strong>방치 차량이 없습니다.</strong>
							</td>
						</tr>
					</c:if>			
					<c:forEach items="${dataMap.abanList }" var="aban">
						<tr>
							<td>${aban.userId }</td>
							<td>${aban.carNum }</td>
							<td>${aban.abanCarListNum }</td>
							<td><fmt:formatDate value="${aban.entDate }" pattern="yyyy-MM-dd"/> ~ <fmt:formatDate value="${aban.outDate }" pattern="yyyy-MM-dd"/></td>
						</tr>
					</c:forEach>			
				</table>
			</div>
			<div class="card-footer">
				<%@ include file="/WEB-INF/views/abandon/pagination.jsp" %>
			</div>
		</div>
	</section>









