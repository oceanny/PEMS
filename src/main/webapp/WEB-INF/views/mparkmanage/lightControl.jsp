<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>

<div style="float:right; margin:10px;">
	<select>
		<option>1층</option>
		<option>2층</option>
	</select>
</div>

<table class="table table-bordered dataTable dtr-inline" >
<tr>
	<td id="white" style="border-bottom:hidden;"></td>
	<td class="car" colspan="7"></td>
	<td id="white" style="border-bottom:hidden;">↓ 1층</td>
</tr>
<tr>
	<td id="white" style="border-right:hidden;">입 구 → </td>
	<td class="half" colspan="7">
		<div class="row">
			<div class="col-6">
				<fieldset class="A" data-role="controlgroup">
					<legend>A구역</legend>
					<input type="checkbox" id="lightA1" value="${light.workYn }" name="A" >
					<label for="lightA1">1A001L</label>
					<input type="checkbox" id="lightA2" value="${light.workYn }" name="A" >
					<label for="lightA2">1A002L</label>
					<input type="checkbox" id="lightA3" value="${light.workYn }" name="A" >
					<label for="lightA3">1A003L</label>
					<input type="checkbox" id="lightA4" value="${light.workYn }" name="A" >
					<label for="lightA4">1A004L</label>
					<input type="checkbox" id="lightA5" value="${light.workYn }" name="A" >
					<label for="lightA5">1A005L</label>
					<br/>
					<input type="checkbox" id="lightA6" value="${light.workYn }" name="A" >
					<label for="lightA6">1A006L</label>
					<input type="checkbox" id="lightA7" value="${light.workYn }" name="A" >
					<label for="lightA7">1A007L</label>
					<input type="checkbox" id="lightA8" value="${light.workYn }" name="A" >
					<label for="lightA8">1A008L</label>
					<input type="checkbox" id="lightA9" value="${light.workYn }" name="A" >
					<label for="lightA9">1A009L</label>
					<input type="checkbox" id="lightA10" value="${light.workYn }" name="A" >
					<label for="lightA10">1A010L</label>
				</fieldset>
			</div>
			<div class="col-1"></div>
			<div class="col-5">
				<fieldset data-role="controlgroup">
					<legend>B구역</legend>
					<input type="checkbox" id="lightB1" value="${light.workYn }" name="B" >
					<label for="lightB1">1B001L</label>
					<input type="checkbox" id="lightB2" value="${light.workYn }" name="B" >
					<label for="lightB2">1B002L</label>
					<input type="checkbox" id="lightB3" value="${light.workYn }" name="B" >
					<label for="lightB3">1B003L</label>
					<input type="checkbox" id="lightB4" value="${light.workYn }" name="B" >
					<label for="lightB4">1B004L</label>
					<input type="checkbox" id="lightB5" value="${light.workYn }" name="B" >
					<label for="lightB5">1B005L</label>
					<br/>
					<input type="checkbox" id="lightB6" value="${light.workYn }" name="B" >
					<label for="lightB6">1B006L</label>
					<input type="checkbox" id="lightB7" value="${light.workYn }" name="B" >
					<label for="lightB7">1B007L</label>
					<input type="checkbox" id="lightB8" value="${light.workYn }" name="B" >
					<label for="lightB8">1B008L</label>
					<input type="checkbox" id="lightB9" value="${light.workYn }" name="B" >
					<label for="lightB9">1B009L</label>
					<input type="checkbox" id="lightB10" value="${light.workYn }" name="B" >
					<label for="lightB10">1B0010L</label>
				</fieldset>
			</div>
		</div>
	</td>
	<td style="border-left:hidden;"></td>
</tr>
<tr>
	<td id="white" style="border-top:hidden; border-bottom:hidden;"></td>
	<td class="car"></td>
	<td id="path" style="border-top:hidden;"></td>
	<td class="car"></td>
	<td id="path" style="border-top:hidden;"></td>
	<td class="car"></td>
	<td id="path" style="border-top:hidden;"></td>
	<td class="car"></td>
	<td id="path" style="border-top:hidden;"></td>
</tr>
<tr>
	<td id="white" style="border-top:hidden; border-bottom:hidden;"></td>
	<td class="car" style="border-top:hidden;"></td>
	<td id="path" style="border-top:hidden; border-bottom:hidden;"></td>
	<td class="car"style="border-top:hidden;"></td>
	<td id="path" style="border-top:hidden; border-bottom:hidden;"></td>
	<td class="car" style="border-top:hidden;"></td>
	<td id="path" style="border-top:hidden; border-bottom:hidden;"></td>
	<td class="car" style="border-top:hidden;"></td>
	<td id="path" style="border-top:hidden; border-bottom:hidden;"></td>
</tr>
<tr>
	<td id="white" style="border-right:hidden;"></td>
	<td colspan="7">
		<div class="row">
			<div class="col-6">
				<fieldset data-role="controlgroup"> 
					<legend>C구역</legend>
					<input type="checkbox" id="lightC1" value="${light.workYn }" name="C" >
					<label for="lightC1">1C001L</label>
					<input type="checkbox" id="lightC2" value="${light.workYn }" name="C" >
					<label for="lightC2">1C002L</label>
					<input type="checkbox" id="lightC3" value="${light.workYn }" name="C" >
					<label for="lightC3">1C003L</label>
					<input type="checkbox" id="lightC4" value="${light.workYn }" name="C" >
					<label for="lightC4">1C004L</label>
					<input type="checkbox" id="lightC5" value="${light.workYn }" name="C" >
					<label for="lightC5">1C005L</label>
					<br/>
					<input type="checkbox" id="lightC6" value="${light.workYn }" name="C" >
					<label for="lightC6">1C006L</label>
					<input type="checkbox" id="lightC7" value="${light.workYn }" name="C" >
					<label for="lightC7">1C007L</label>
					<input type="checkbox" id="lightC8" value="${light.workYn }" name="C" >
					<label for="lightC8">1C008L</label>
					<input type="checkbox" id="lightC9" value="${light.workYn }" name="C" >
					<label for="lightC9">1C009L</label>
					<input type="checkbox" id="lightC10" value="${light.workYn }" name="C" >
					<label for="lightC10">1C010L</label>
				</fieldset>
			</div>
			<div class="col-1"></div>
			<div class="col-5">
				<fieldset data-role="controlgroup">
					<legend>D구역</legend>
					<input type="checkbox" id="lightD1" value="${light.workYn }" name="D" >
					<label for="lightD1">1D001L</label>
					<input type="checkbox" id="lightD2" value="${light.workYn }" name="D" >
					<label for="lightD2">1D002L</label>
					<input type="checkbox" id="lightD3" value="${light.workYn }" name="D" >
					<label for="lightD3">1D003L</label>
					<input type="checkbox" id="lightD4" value="${light.workYn }" name="D" >
					<label for="lightD4">1D004L</label>
					<input type="checkbox" id="lightD5" value="${light.workYn }" name="D" >
					<label for="lightD5">1D005L</label>
					<br/>
					<input type="checkbox" id="lightD6" value="${light.workYn }" name="D" >
					<label for="lightD6">1D006L</label>
					<input type="checkbox" id="lightD7" value="${light.workYn }" name="D" >
					<label for="lightD7">1D007L</label>
					<input type="checkbox" id="lightD8" value="${light.workYn }" name="D" >
					<label for="lightD8">1D008L</label>
					<input type="checkbox" id="lightD9" value="${light.workYn }" name="D" >
					<label for="lightD9">1D009L</label>
					<input type="checkbox" id="lightD10" value="${light.workYn }" name="D" >
					<label for="lightD10">1D0010L</label>
				</fieldset>
			</div>
		</div>
	</td>
	<td style="border-left:hidden;"></td>
</tr>
<tr>
	<td id="white" style="border-top:hidden; border-bottom:hidden;"></td>
	<td class="car"></td>
	<td id="path" style="border-top:hidden;"></td>
	<td class="car"></td>
	<td id="path" style="border-top:hidden;"></td>
	<td class="car"></td>
	<td id="path" style="border-top:hidden;"></td>
	<td class="car"></td>
	<td id="path" style="border-top:hidden;"></td>
</tr>
<tr>
	<td id="white" style="border-top:hidden; border-bottom:hidden;"></td>
	<td class="car" style="border-top:hidden;"></td>
	<td id="path" style="border-top:hidden; border-bottom:hidden;"></td>
	<td class="car"style="border-top:hidden;"></td>
	<td id="path" style="border-top:hidden; border-bottom:hidden;"></td>
	<td class="car" style="border-top:hidden;"></td>
	<td id="path" style="border-top:hidden; border-bottom:hidden;"></td>
	<td class="car" style="border-top:hidden;"></td>
	<td id="path" style="border-top:hidden; border-bottom:hidden;"></td>
</tr>
<tr>
	<td id="white" style="border-right:hidden;"></td>
	<td colspan="7">
		<div class="row">
			<div class="col-6">
				<fieldset data-role="controlgroup">
					<legend>E구역</legend>
					<input type="checkbox" id="lightE1" value="${light.workYn }" name="E" >
					<label for="lightE1">1E001L</label>
					<input type="checkbox" id="lightE2" value="${light.workYn }" name="E" >
					<label for="lightE2">1E002L</label>
					<input type="checkbox" id="lightE3" value="${light.workYn }" name="E" >
					<label for="lightE3">1E003L</label>
					<input type="checkbox" id="lightE4" value="${light.workYn }" name="E" >
					<label for="lightE4">1E004L</label>
					<input type="checkbox" id="lightE5" value="${light.workYn }" name="E" >
					<label for="lightE5">1E005L</label>
					<br/>
					<input type="checkbox" id="lightE6" value="${light.workYn }" name="E" >
					<label for="lightE6">1E006L</label>
					<input type="checkbox" id="lightE7" value="${light.workYn }" name="E" >
					<label for="lightE7">1E007L</label>
					<input type="checkbox" id="lightE8" value="${light.workYn }" name="E" >
					<label for="lightE8">1E008L</label>
					<input type="checkbox" id="lightE9" value="${light.workYn }" name="E" >
					<label for="lightE9">1E009L</label>
					<input type="checkbox" id="lightE10" value="${light.workYn }" name="E" >
					<label for="lightE10">1E010L</label>
				</fieldset>
			</div>
			<div class="col-1"></div>
			<div class="col-5">
				<fieldset data-role="controlgroup">
					<legend>F구역</legend>
					<input type="checkbox" id="lightF1" value="${light.workYn }" name="F" >
					<label for="lightF1">1F001L</label>
					<input type="checkbox" id="lightF2" value="${light.workYn }" name="F" >
					<label for="lightF2">1F002L</label>
					<input type="checkbox" id="lightF3" value="${light.workYn }" name="F" >
					<label for="lightF3">1F003L</label>
					<input type="checkbox" id="lightF4" value="${light.workYn }" name="F" >
					<label for="lightF4">1F004L</label>
					<input type="checkbox" id="lightF5" value="${light.workYn }" name="F" >
					<label for="lightF5">1F005L</label>
					<br/>
					<input type="checkbox" id="lightF6" value="${light.workYn }" name="F" >
					<label for="lightF6">1F006L</label>
					<input type="checkbox" id="lightF7" value="${light.workYn }" name="F" >
					<label for="lightF7">1F007L</label>
					<input type="checkbox" id="lightF8" value="${light.workYn }" name="F" >
					<label for="lightF8">1F008L</label>
					<input type="checkbox" id="lightF9" value="${light.workYn }" name="F" >
					<label for="lightF9">1F009L</label>
					<input type="checkbox" id="lightF10" value="${light.workYn }" name="F" >
					<label for="lightF10">1F0010L</label>
				</fieldset>
			</div>
		</div>
	</td>
	<td style="border-left:hidden;"></td>
</tr>
<tr>
	<td id="white" style="border-top:hidden;">↑ 2층</td>
	<td class="car" colspan="3"></td>
	<td id="white" style="border-top:hidden;">E/V</td>
	<td class="car" colspan="3"></td>
	<td id="white" style="border-top:hidden;">출 구↓</td>
	</tr>
</table>
<div class="row">
	<div class="col-4">
		<fieldset data-role="controlgroup">
		<legend>구역별 제어</legend>
		<input type="checkbox" name="section" value="A구역" id="checkA" onclick="LselectA(this)">
		<label for="checkA">A구역</label>
		&nbsp;&nbsp;<input type="number" id="AControl">&nbsp;&nbsp;<button id="submit" onclick="">적 용</button><br/>
		<input type="checkbox" name="section" value="B구역" id="checkB" onclick="LselectB(this)">
		<label for="checkB">B구역</label>
		&nbsp;&nbsp;<input type="number" id="BControl">&nbsp;&nbsp;<button id="submit" onclick="">적 용</button><br/>
		<input type="checkbox" name="section" value="C구역" id="checkC" onclick="LselectC(this)">
		<label for="checkC">C구역</label>
		&nbsp;&nbsp;<input type="number" id="CControl">&nbsp;&nbsp;<button id="submit" onclick="">적 용</button><br/>
		<input type="checkbox" name="section" value="D구역" id="checkD" onclick="LselectD(this)">
		<label for="checkD">D구역</label>
		&nbsp;&nbsp;<input type="number" id="DControl">&nbsp;&nbsp;<button id="submit" onclick="">적 용</button><br/>
		<input type="checkbox" name="section" value="E구역" id="checkE" onclick="LselectE(this)">
		<label for="checkE">E구역</label>
		&nbsp;&nbsp;<input type="number" id="EControl">&nbsp;&nbsp;<button id="submit" onclick="">적 용</button><br/>
		<input type="checkbox" name="section" value="F구역" id="checkF" onclick="LselectF(this)">
		<label for="checkF">F구역</label>		
		&nbsp;&nbsp;<input type="number" id="FControl">&nbsp;&nbsp;<button id="submit" onclick="">적 용</button>
	</fieldset>
</div>
<div class="col-4">
	<fieldset data-role="controlgroup" method="post" action="">
		<legend>내부 조도에 따른 설정 변경</legend>
		<table>
			<tr>
				<td><label id="group" for="ACtrl" style="margin:0px;">매우어둡다 0~170</label>&nbsp;&nbsp;</td>
				<td><span id="groupCtrl" style="padding:5px;">56</span></td>
				<td><input type="number" id="ACtrl" value="">&nbsp;&nbsp;</td>
				<td><button id="submit" onclick="">변 경</button></td>
			</tr>
			<tr>
				<td><label id="group" for="BCtrl" style="margin:0px;">어둡다 171~341</label></td>
				<td><span id="groupCtrl" style="padding:5px;">56</span></td>
				<td><input type="number" id="BCtrl" value=""></td>
				<td><button id="submit" onclick="">변 경</button></td>
			</tr>
			<tr>
				<td><label id="group" for="CCtrl" style="margin:0px;">조금어둡다 342~511</label></td>
				<td><span id="groupCtrl" style="padding:5px;">56</span></td>
				<td><input type="number" id="CCtrl" value=""></td>
				<td><button id="submit" onclick="">변 경</button></td>
			</tr>
			<tr>
				<td><label id="group" for="DCtrl" style="margin:0px;">조금밝다 512~682</label></td>
				<td><span id="groupCtrl" style="padding:5px;">56</span></td>
				<td><input type="number" id="DCtrl" value=""></td>
				<td><button id="submit" onclick="">변 경</button></td>
			</tr>
			<tr>
				<td><label id="group" for="ECtrl" style="margin:0px;">밝다 683~853</label></td>
				<td><span id="groupCtrl" style="padding:5px;">56</span></td>
				<td><input type="number" id="ECtrl" value=""></td>
				<td><button id="submit" onclick="">변 경</button></td>
			</tr>
			<tr>
				<td><label id="group" for="FCtrl" style="margin:0px;">매우밝다 854~1023</label></td>
				<td><span id="groupCtrl" style="padding:5px;">56</span></td>
				<td><input type="number" id="FCtrl" value=""></td>
				<td><button id="submit" onclick="">변 경</button></td>
			<tr>
		</table>
	</fieldset>
</div>
<div class="col-4">
	<fieldset data-role="controlgroup" method="post" action="" >
		<legend>시간대별 조도 설정 변경</legend>
		<form>
			<select name="time">
				<option>시간선택</option>
				<option>1시</option>
				<option>2시</option>
				<option>3시</option>
				<option>4시</option>
				<option>5시</option>
				<option>6시</option>
				<option>7시</option>
				<option>8시</option>
				<option>9시</option>
				<option>10시</option>
				<option>11시</option>
				<option>12시</option>
				<option>13시</option>
				<option>14시</option>
				<option>15시</option>
				<option>16시</option>
				<option>17시</option>
				<option>18시</option>
				<option>19시</option>
				<option>20시</option>
				<option>21시</option>
				<option>22시</option>
				<option>23시</option>
				<option>24시</option>
			</select>
			&nbsp;&nbsp;<input type="number" id="ACtrl" value="">&nbsp;&nbsp;<button id="submit" onclick="">변 경</button>
		</form>
	</fieldset>
		<table class="table">
			<tr style="font-size:11px;">
				<td id="time"><b>1시</b></td>
				<td id="timeSet">1000</td>
				<td id="time"><b>2시</b></td>
				<td id="timeSet">1000</td>
				<td id="time"><b>3시</b></td>
				<td id="timeSet">1000</td>
				<td id="time"><b>4시</b></td>
				<td id="timeSet">1000</td>
				<td id="time"><b>5시</b></td>
				<td id="timeSet">1000</td>
				<td id="time"><b>6시</b></td>
				<td id="timeSet">1000</td>
			</tr>
			<tr style="font-size:11px;">
				<td id="time"><b>7시</b></td>
				<td id="timeSet">1000</td>
				<td id="time"><b>8시</b></td>
				<td id="timeSet">1000</td>
				<td id="time"><b>9시</b></td>
				<td id="timeSet">1000</td>
				<td id="time"><b>10시</b></td>
				<td id="timeSet">1000</td>
				<td id="time"><b>11시</b></td>
				<td id="timeSet">1000</td>
				<td id="time"><b>12시</b></td>
				<td id="timeSet">1000</td>
			</tr>
			<tr style="font-size:11px;">
				<td id="time"><b>13시</b></td>
				<td id="timeSet">1000</td>
				<td id="time"><b>14시</b></td>
				<td id="timeSet">1000</td>
				<td id="time"><b>15시</b></td>
				<td id="timeSet">1000</td>
				<td id="time"><b>16시</b></td>
				<td id="timeSet">1000</td>
				<td id="time"><b>17시</b></td>
				<td id="timeSet">1000</td>
				<td id="time"><b>18시</b></td>
				<td id="timeSet">1000</td>
			</tr>
			<tr style="font-size:11px;">
				<td id="time"><b>19시</b></td>
				<td id="timeSet">1000</td>
				<td id="time"><b>20시</b></td>
				<td id="timeSet">1000</td>
				<td id="time"><b>21시</b></td>
				<td id="timeSet">1000</td>
				<td id="time"><b>22시</b></td>
				<td id="timeSet">1000</td>
				<td id="time"><b>23시</b></td>
				<td id="timeSet">1000</td>
				<td id="time"><b>24시</b></td>
				<td id="timeSet">1000</td>
			</tr>
		</table>
	</div>
</div>

<c:if test="${from eq 'regist'}">
<script>
	alert("정상 등록되었습니다.");
	window.close();
	window.opener.location.reload();
</script>
</c:if>

<script>
function LselectA(selectA)  {
	const checkboxes = document.getElementsByName('A');
	
	checkboxes.forEach((checkbox) => {
		checkbox.checked = selectA.checked;
	});
}

function LselectB(selectB)  {
	const checkboxes = document.getElementsByName('B');
	
	checkboxes.forEach((checkbox) => {
		checkbox.checked = selectB.checked;
	});
}

function LselectC(selectC)  {
	const checkboxes = document.getElementsByName('C');
	
	checkboxes.forEach((checkbox) => {
		checkbox.checked = selectC.checked;
	});
}

function LselectD(selectD)  {
	const checkboxes = document.getElementsByName('D');
	
	checkboxes.forEach((checkbox) => {
		checkbox.checked = selectD.checked;
	});
}

function LselectE(selectE)  {
	const checkboxes = document.getElementsByName('E');
	
	checkboxes.forEach((checkbox) => {
		checkbox.checked = selectE.checked;
	});
}

function LselectF(selectF)  {
	const checkboxes = document.getElementsByName('F');
	
	checkboxes.forEach((checkbox) => {
		checkbox.checked = selectF.checked;
	});
}
</script>