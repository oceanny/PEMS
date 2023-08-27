<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="decorator" uri="http://www.opensymphony.com/sitemesh/decorator" %>

<!DOCTYPE html>
<!--
This is a starter template page. Use this page to start your new project from
scratch. This page gets rid of all links and provides the needed markup only.
-->
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>아이디 찾기</title>

<!-- Google Font: Source Sans Pro -->
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700&display=fallback">
<!-- Font Awesome Icons -->
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/bootstrap/plugins/fontawesome-free/css/all.min.css">
<!-- Theme style -->
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/bootstrap/dist/css/adminlte.min.css">
</head>
<body>

  	<div class="col-sm-4" style="margin: 20px auto;">
		<h1>아이디 찾기</h1>
	</div>
			
	<div class="col-sm-4" style="margin: 0 auto;">
		<form action="idFind.do" method="post" class="form-horizontal" style="padding: 20px; box-shadow: 5px 5px 5px 5px #B0C4DE; border-radius: 10px;">

			<div class="card-body">
				<div class="form-group row">
					<label for="name" class="col-sm-2 col-form-label">이 름</label>
					<div class="col-sm-10">
						<input name="name" type="text" class="form-control" id="name" placeholder="가입 시 등록한 이름을 입력하세요.">
					</div>
				</div>
				<div class="form-group row">
					<label for="mail"  class="col-sm-2 col-form-label">이메일</label>
					<div class="col-sm-10">
						<input name="mail" type="text" class="form-control" id="mail"
							placeholder="가입 시 등록한 이메일을 입력 하세요.">
					</div>
				</div>
			<div class="card-footer">
				<div style="margin:3px auto;">가입 시 등록한 이름,이메일 일치 시 아이디 확인 가능합니다. </div>
				<button onclick="idFind();" type="submit" class="btn btn-info">아이디 확인 </button>
			</div>
			</div>
			<!-- /.card-body -->
			<!-- /.card-footer -->
		</form>
	</div>
	
	<!-- jQuery -->
	<script
		src="<%=request.getContextPath()%>/resources/bootstrap/plugins/jquery/jquery.min.js"></script>
	<!-- Bootstrap 4 -->
	<script
		src="<%=request.getContextPath()%>/resources/bootstrap/plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
	<!-- AdminLTE App -->
	<script
		src="<%=request.getContextPath()%>/resources/bootstrap/dist/js/adminlte.min.js"></script>
	<script>
		function idFind(){
			if(${'val.userService.idFind'})
			alert("$('input[name=name]')님의 아이디는 ${'val.userService.idFind'}입니다.")
		}
	</script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/handlebars.js/4.7.7/handlebars.min.js"></script>
<script type="text/x-handlebars-template"  id="subMenu-list-template" >
{{#each .}}		
<li class="nav-item subMenu" >
	<a href="javascript:goPage('<%=request.getContextPath() %>{{menuUrl}}','{{menuCode}}');"	class="nav-link">
		<p>{{menuName}}</p>
	</a>
</li>
{{/each}}
</script>

<script>
	var sub_func= Handlebars.compile($("#subMenu-list-template").html());
	
</script>


<script>
function subMenu_go(menuCode){
	//alert(mCode);
	if(menuCode == "MM000000") {
		$('.subMenuList').html("");
		return;
	}
	if(menuCode == "UM000000") {
		$('.subMenuList').html("");
		return;
	}
	
	$.ajax({
		url:"<%=request.getContextPath()%>/subMenu.do?menuCode="+ menuCode,
		method:"get",
		success:function(data){
			//zconsole.log(data);		
			$('.subMenuList').html(sub_func(data));
		}
	});
}

function goPage(url,menuCode){
	$('iframe[name="ifr"]').attr("src",url);
	
	//alert(mCode);
	 var renewURL = location.href;
    //현재 주소 중 .do 뒤 부분이 있다면 날려버린다.
    renewURL = renewURL.substring(0, renewURL.indexOf(".do")+3);
    
    if (menuCode != 'MM000000' || 'UM000000') {
        renewURL += "?menuCode="+menuCode;
    }
    //페이지를 리로드하지 않고 페이지 주소만 변경할 때 사용
    history.pushState(menuCode, null, renewURL);
}

goPage('<%=request.getContextPath()%>${menu.menuUrl}','${menu.menuCode}');
subMenu_go('${menu.menuCode}'.substring(0,4)+"0000");
</script>
</body>
</html>
