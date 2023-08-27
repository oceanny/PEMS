<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<link rel="stylesheet" href="<%=request.getContextPath() %>/resources/style/charge.css" />
	<title>전기차 충전기</title>
</head>
<body>
	<!-- 메뉴 제목 -->
	<div class="menu-title">
		<h1>전기차 충전기</h1>
	</div>
	
	<!-- 주차층 선택 -->
	<div class="parking-container">
		<div class="floor-info">
			<div class="floor-select">
				<select class="custom-select" onchange="if(this.value) location.href=(this.value);">
					<option value="<%=request.getContextPath() %>/WEB-INF/views/charge/first_floor.jsp">1층</option>
					<option value="<%=request.getContextPath() %>/WEB-INF/views/charge/second_floor.jsp" selected>2층</option>
				</select>
			</div>
			<h3 class="current-floor">&nbsp;&nbsp;&nbsp;&nbsp; * 2층</h3>
		</div>
	</div>
	
	<!-- 주차도 화면 -->
	<div class="center-container">
		<div class="parking-map">
		<table class="table table-bordered dataTable dtr-inline" >
			<tr>
				<td class="blank" colspan="2"></td>
				<td class="seat" colspan="5">A</td>
				<td><div><button style="background-color: red;" onclick="OpenWindow('/midterm_project/parkmanage.jsp','전기차충전기',700,500);">F01A001</button></div></td>
				<td><div><button style="background-color: red;" onclick="OpenWindow('/midterm_project/parkmanage.jsp','전기차충전기',700,500);">F01A002</button></div></td>
				<td class="seat" colspan="5">A</td>
				<td><div><button style="background-color: red;" onclick="OpenWindow('/midterm_project/parkmanage.jsp','전기차충전기',700,500);">F01A003</button></div></td>
				<td><div><button style="background-color: red;" onclick="OpenWindow('/midterm_project/parkmanage.jsp','전기차충전기',700,500);">F01B001</button></div></td>
				<td class="seat" colspan="5">B</td>
				<td><div><button style="background-color: red;" onclick="OpenWindow('/midterm_project/parkmanage.jsp','전기차충전기',700,500);">F01B002</button></div></td>
				<td><div><button style="background-color: red;" onclick="OpenWindow('/midterm_project/parkmanage.jsp','전기차충전기',700,500);">F01B003</button></div></td>
				<td class="seat" colspan="5">B</td>
				<td class="blank" colspan="2"></td>
			</tr>
			<tr class="even">
				<td colspan="2">입 구 -> </td>
			</tr>
			<tr>
				<td class="blank" colspan="2"></td>
				<td class="seat" colspan="5">A</td>
				<td rowspan="5" colspan="2"></td>
				<td class="seat" colspan="5">A</td>
				<td rowspan="5" colspan="2"></td>
				<td class="seat" colspan="5">B</td>
				<td rowspan="5" colspan="2"></td>
				<td class="seat" colspan="5">B</td>
			</tr>
			<tr>
				<td class="blank" colspan="2"></td>
				<td class="seat" colspan="5">C</td>
				<td class="seat" colspan="5">C</td>
				<td class="seat" colspan="5">D</td>
				<td class="seat" colspan="5">D</td>
			</tr>
			<tr class="even">
			</tr>
			<tr>
				<td class="blank" colspan="2"></td>
				<td class="seat" colspan="5">C</td>
				<td class="seat" colspan="5">C</td>
				<td class="seat" colspan="5">D</td>
				<td class="seat" colspan="5">D</td>
			</tr>
			<tr>
				<td class="blank" colspan="2"></td>
				<td class="seat" colspan="5">E</td>
				<td class="seat" colspan="5">E</td>
				<td class="seat" colspan="5">F</td>
				<td class="seat" colspan="5">F</td>
			</tr>
			<tr class="even">
			</tr>
			<tr>
				<td colspan="2">↑ 2층</td>
				<td class="seat" colspan="5">E</td>
				<td><div><button style="background-color: red;" onclick="OpenWindow('/midterm_project/parkmanage.jsp','전기차충전기',700,500);">F001E001</button></div></td>
				<td><div><button style="background-color: red;" onclick="OpenWindow('/midterm_project/parkmanage.jsp','전기차충전기',700,500);">F001E002</button></div></td>
				<td class="seat" colspan="5">E</td>
				<td colspan="2">E/V</td>
				<td class="seat" colspan="5">F</td>
				<td><div><button style="background-color: red;" onclick="OpenWindow('/midterm_project/parkmanage.jsp','전기차충전기',700,500);">F001F001</button></div></td>
				<td><div><button style="background-color: red;" onclick="OpenWindow('/midterm_project/parkmanage.jsp','전기차충전기',700,500);">F001F002</button></div></td>
				<td class="seat" colspan="5">F</td>
				<td class="blank" colspan="2"></td>
				</tr>
			</table>
		</div>
	</div>
	
	<script>
		function assign(seat){
			if (seat == "")){
				!confirm("충전기 배정이 완료되었습니다.\n 위치 : 2F");
			}
		}
	</script>
</body>
</html>