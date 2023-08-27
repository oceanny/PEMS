<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

	<section class="content-header">
	  	<div class="container-fluid">
	  		<div class="row md-2">
	  			<div class="col-sm-6">
	  				<h1>상세보기</h1>  				
	  			</div>
	  			<div class="col-sm-6">
	  				<ol class="breadcrumb float-sm-right">
			        <li class="breadcrumb-item">
			        	<a href="list.do">
				        	<i class="fa fa-dashnotice"></i>공지사항
				        </a>
			        </li>
			        <li class="breadcrumb-item active">
			        	상세보기
			        </li>		        
	    	  </ol>
	  			</div>
	  		</div>
	  	</div>
	</section>
	 
   
      <!-- Main content -->
    <section class="content container-fluid">
		<div class="row">
			<div class="col-md-12">
				
					<div class="card-header">

					
					</div>
					
	


<div class="card-body">
<table class="table table-bordered" >
<thead>
<tr>
<th style="width: 20%">제목</th>
<td class="lasttd title top_line" colspan="3">
	${notice.notiTitle }	</td>

</tr>
</thead>
<tbody>
<tr>
<td style="width: 15%">글쓴이</td>
<td class="lasttd title top_line" >
	${notice.adminId }	</td>
<td style="width: 15%">
작성일

</td>
<td><fmt:formatDate value="${notice.notiRegDate }"
								                pattern="yyyy-MM-dd"/></td>
</tr>
<tr>
<td style="width: 15%">조 회</td>
<td>${notice.notiCnt }</td>
<td style="width: 15%">
중 요
</td>

<td><i class="fas fa-star text-warning"></i></td>
</tr>

</tbody>
</table>
</div>


	
					
							
							
												
					</div>													
				</div><!-- end card -->				
			</div><!-- end col-md-12 -->
    </section>
    <!-- /.content -->
        
    
    <!-- Reply content -->
    <section class="content container-fluid">
    	<!-- reply component start --> 
		<div class="row">
			<div class="col-md-12">
				<div class="card card-info">					
					<div class="card-body">
						<!-- The time line -->
						<div class="timeline">
						
						<div id="content">${notice.notiCont }</div>	
						</div>
							
							
						</div>
						<div class='text-center'>
							<ul id="pagination" class="pagination justify-content-center m-0" >
								
							</ul>
						</div>
					</div>
					<div class="card-footer">
					<div class="row">
					<div class="col-11"></div>
					<div class="col-1"><button type="button" class="btn btn-primary" ><a href="list.do" style="color:white;">목록</a></button></div>				
					</div>			
					</div>
				
			</div><!-- end col-md-12 -->
		</div><!-- end row -->
    </section>
  
  <!-- /.content -->
  

<!-- Modal -->
<div id="modifyModal" class="modal modal-default fade" role="dialog">
  <div class="modal-dialog">
    <!-- Modal content-->
    <div class="modal-content">
      <div class="modal-header">
        <h4 class="modal-title" style="display:none;"></h4>
        <button type="button" class="close" data-dismiss="modal">&times;</button>        
      </div>
      <div class="modal-body" data-rno>
        <p><input type="text" id="replytext" class="form-control"></p>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-info" id="replyModBtn" onclick="replyModify_go();">Modify</button>
        <button type="button" class="btn btn-danger" id="replyDelBtn" onclick="replyRemove_go();">DELETE</button>
        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
      </div>
    </div>
  </div>
</div>  
  
  
<!-- REQUIRED SCRIPTS -->
<form role="form">
	<input type="hidden" name="bno" value="${notice.notiNum }" />
</form>




