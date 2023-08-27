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
	  				<h1>충전기 정보 조회</h1>  				
	  			</div>
	  			<div>
	  			</div>
	  		</div>
	  	</div>
	</section>

	<section class="content">
		<div class="card">
			<div class="card-header with-border" style="display: flex; justify-content: space-between; align-items: center;">
				<div style="display: inline-block;"><h4 style="margin: 0;">사용 중인 충전기 목록입니다.</h4></div></div>
			<div class="card-body">
				<table class="table table-bordered text-center" >					
					<tr style="font-size:0.95em;">
						<th style="width:25%;">충전기 번호</th>
						<th style="width:25%;">차량 번호</th>
						<th style="width:25%;">시작 시간</th>
						<th>종료 시간</th>
					</tr>
					<c:if test="${empty dataMap.usingList }" >
						<tr>
							<td colspan="4">
								<strong>사용 중인 충전기가 없습니다.</strong>
							</td>
						</tr>
					</c:if>			
					<c:forEach items="${dataMap.usingList }" var="charger">
						<tr>
							<td>${charger.charNum }</td>
							<td>${charger.carNum }</td>
							<td><fmt:formatDate value="${charger.charStartTime }" pattern="yyyy-MM-dd HH:mm"/></td>
							<td>${charger.leftHour }시간 ${charger.leftMinute }분 남음</td>
						</tr>
					</c:forEach>			
				</table>
			</div>
			<div class="card-header with-border" style="display: flex; justify-content: space-between; align-items: center;">
				<div style="display: inline-block;"><h4 style="margin: 0;">사용하지 않는 충전기 목록입니다.</h4></div></div>
			<div class="card-body">
				<table class="table table-bordered text-center" >					
					<tr style="font-size:0.95em;">
						<th colspan="4">충전기 번호</th>
					</tr>
					<c:if test="${empty dataMap.emptyList }" >
						<tr>
							<td colspan="4">
								<strong>사용하지 않는 충전기가 없습니다.</strong>
							</td>
						</tr>
					</c:if>			
					<c:forEach items="${dataMap.emptyList}" var="emptyItem" varStatus="loop">
				        <c:if test="${loop.index % 4 == 0}">
		            		<tr>
			        	</c:if>
				        	<td>${emptyItem}</td>
				        <c:if test="${(loop.index + 1) % 4 == 0 || loop.last}">
			            	</tr>
				        </c:if>
				    </c:forEach>			
				</table>
			</div>
			<div class="card-footer">
			</div>
		</div>
	</section>









