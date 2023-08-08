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
	  				<h1>차량 정보 조회</h1>  				
	  			</div>
	  			<div>
	  			</div>
	  		</div>
	  	</div>
	</section>

	<section class="content">
		<div class="card">
			<div class="card-header with-border" style="display: flex; justify-content: space-between; align-items: center;">
				<div style="display: inline-block;"><h4 style="margin: 0;">user님의 차량 목록입니다.</h4></div>
				<div style="display: inline-block; margin-left: auto;"><button type="button" class="btn btn-primary" id="registBtn" onclick="OpenWindow('registForm.do','차량등록',500,800);">차량등록</button></div></div>
			<div class="card-body">
				<table class="table table-bordered text-center" >					
					<tr style="font-size:0.95em;">
						<th style="width:20%;">차량번호</th>
						<th style="width:15%;">차량종류</th>
						<th style="width:15%;">우대정보1</th>
						<th>입차시간</th>
						<th style="width:20%;">주차위치</th>
					</tr>	
					<c:if test="${empty carList }" >
						<tr>
							<td colspan="5">
								<strong>등록된 차량이 없습니다.</strong>
							</td>
						</tr>
					</c:if>			
					<c:forEach items="${carList }" var="car">
						<tr>
							<td>{car.carnum }</td>
							<td>{car.cTypeNum }</td>
							<td>{car.treatInfo1 }</td>
							<td>
								<fmt:formatDate value="입차시간"
								                pattern="yyyy-MM-dd hh:mm"/>
							</td>
							<td>주차위치</td>
						</tr>
					</c:forEach>			
				</table>
			</div>
			<div class="card-footer">
			</div>
		</div>
	</section>









