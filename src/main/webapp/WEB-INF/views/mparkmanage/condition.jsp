<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="decorator" uri="http://www.opensymphony.com/sitemesh/decorator" %>

<c:set var="pdsList" value="${dataMap.pdsList }" />
<c:set var="command" value="${dataMap.pageMaker.command }" />
<c:set var="pageMaker" value="${dataMap.pageMaker }" />

<head>
	<link rel="stylesheet" href="<%=request.getContextPath() %>/resources/conditionStyle.css">
</head>

<body>
  
    <!-- Content Header (Page header) -->
    <section class="content-header">
    	<div class="container-fluid">
    		<div class="row mb-2">
    			<div class="col-sm-6">
	      			<h1>실내외 환경제어</h1>
	      		</div>	      		
	    	
	       		
	       		<div class="col-sm-6">
			      <ol class="breadcrumb float-sm-right">
			        <li class="breadcrumb-item"><a href="/WEB-INF/views/mparkmanage/condition2.jsp"><i class="fa fa-dashboard"></i>실내외 환경제어</a></li>
			        <li class="breadcrumb-item active">HOME</li>		        
			      </ol>
		      	</div>
	     	</div>	     	
      	</div>
    </section>

    <!-- Main content -->
    <section class="content">
            <div class="container-fluid">
            <div class="card card-primary card-outline card-tabs">
				<div class="card-header p-0 pt-1 border-bottom-0">
					<ul class="nav nav-tabs" id="custom-tabs-three-tab" role="tablist">
						<li class="nav-item">
							<a class="nav-link active" id="custom-tabs-three-home-tab" data-toggle="tab" href="#custom-tabs-three-home" role="tab" aria-controls="custom-tabs-three-home" aria-selected="true">조명</a>
						</li>
							<li class="nav-item">
							<a class="nav-link" id="custom-tabs-three-profile-tab" data-toggle="tab" href="#custom-tabs-three-profile" role="tab" aria-controls="custom-tabs-three-profile" aria-selected="false">에어컨</a>
						</li>
							<li class="nav-item">
							<a class="nav-link" id="custom-tabs-three-messages-tab" data-toggle="tab" href="#custom-tabs-three-messages" role="tab" aria-controls="custom-tabs-three-messages" aria-selected="false">유인팬</a>
					</ul>
				</div>
				<div class="card-body">
					<div class="tab-content" id="custom-tabs-three-tabContent">
						<div class="tab-pane fade active show" id="custom-tabs-three-home" role="tabpanel" aria-labelledby="custom-tabs-three-home-tab">
							<%@ include file="/WEB-INF/views/mparkmanage/lightControl.jsp" %>
						</div>
						<div class="tab-pane fade" id="custom-tabs-three-profile" role="tabpanel" aria-labelledby="custom-tabs-three-profile-tab">
							<%@ include file="/WEB-INF/views/mparkmanage/airconControl.jsp" %>
						</div>
						<div class="tab-pane fade" id="custom-tabs-three-messages" role="tabpanel" aria-labelledby="custom-tabs-three-messages-tab">
							<%@ include file="/WEB-INF/views/mparkmanage/fanControl.jsp" %>
						</div>
					</div>
				</div>
            </div>
            </div>
	</section>
	
<script>
$('#custom-tabs-three-tab a:first').tab('show');
$('a[data-toggle="tab"]').on('shown.bs.tab',function(e){
	localStorage.setItem('selectedTab',$(e.target).attr('id'));
});

var selectedTab = localStorage.getItem('selectedTab');
if(selectedTab){
	$('#'+selectedTab).tab('show');
}

</script>