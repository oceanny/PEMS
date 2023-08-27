<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>

  <!-- Main Footer -->
  <footer class="main-footer">
    <!-- To the right -->
    <div class="float-right d-none d-sm-inline">
      Anything you want
    </div>
    <!-- Default to the left -->
    <strong>Copyright &copy; 2014-2021 <a href="https://adminlte.io">AdminLTE.io</a>.</strong> All rights reserved.
  </footer>
</div>
<!-- ./wrapper -->


<script src="https://cdnjs.cloudflare.com/ajax/libs/jqueryui/1.13.2/jquery-ui.min.js" integrity="sha512-57oZ/vW8ANMjR/KQ6Be9v/+/h6bq9/l3f0Oc7vn6qMqyhvPd1cvKBRWWpzu0QoneImqr2SkmO4MSqU+RpHom3Q==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
<!-- jQuery -->
<script src="<%=request.getContextPath() %>/resources/bootstrap/plugins/jquery/jquery.min.js"></script>
<!-- Bootstrap 4 -->
<script src="<%=request.getContextPath() %>/resources/bootstrap/plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
<!-- AdminLTE App -->
<script src="<%=request.getContextPath() %>/resources/bootstrap/dist/js/adminlte.min.js"></script>
<!-- common.js  -->
<script src="<%=request.getContextPath() %>/resources/js/common.js"></script>

<!-- handlebars  -->
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


