<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!-- Main content -->
<section class="content container-fluid">
	<div class="row">
		<div class="col-md-12">
			<div class="card card-outline card-info">
				<div class="card-header">
					<h3 class="card-title">실시간 CCTV</h3>
				</div>
				<div class="card-body">
					<a onclick="CloseWindow()">
						<video controls="controls" width="100%" height="100%">
							<source src="<%=request.getContextPath()%>/resources/media/video.mp4" type="video/mp4">
						</video>
					</a>	
				</div>													
			</div><!-- end card -->				
		</div><!-- end col-md-12 -->
	</div><!-- end row  -->
</section>
  <!-- /.content -->
<!-- REQUIRED SCRIPTS -->
<form role="form">
	<input type="hidden" name="nno" value="${notice.nno }" />
</form>




