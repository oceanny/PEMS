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
	  				<h1>사용자 정보 조회</h1>  				
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
						<th style="width:15%;">이름</th>
						<th style="width:20%;">아이디</th>
						<th style="width:20%;">차량번호</th>
						<th>전화번호</th>
						<th style="width:20%;">주차위치</th>
					</tr>	
					<c:if test="${empty dataMap.userList }" >
						<tr>
							<td colspan="5">
								<strong>등록된 사용자가 없습니다.</strong>
							</td>
						</tr>
					</c:if>			
					<c:forEach items="${dataMap.userList }" var="user">
						<tr>
							<td>${user.name }</td>
							<td>${user.userId}</td>
							<td><c:choose>
								<c:when test="${empty user.carNum }">-</c:when>
								<c:otherwise>${user.carNum }</c:otherwise>
							</c:choose></td>
							<td>${user.phone.substring(0,3) }-${user.phone.substring(3,7) }-${user.phone.substring(7) }</td>
							<td><c:choose>
								<c:when test="${empty user.areaNum }">-</c:when>
								<c:otherwise>${user.areaNum }</c:otherwise>
							</c:choose></td>
						</tr>
					</c:forEach>			
				</table>
			</div>
			<div class="card-footer">
				<%@ include file="/WEB-INF/views/module/pagination.jsp" %>
			</div>
		</div>
	</section>









