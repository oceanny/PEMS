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
					<input type="checkbox" id="fanA1" value="1" name="FA" >
					<label for="fanA1">1A001F</label>
					<input type="checkbox" id="fanA2" value="1" name="FA" >
					<label for="fanA2">1A002F</label>
					<input type="checkbox" id="fanA3" value="1" name="FA" >
					<label for="fanA3">1A003F</label>
					<input type="checkbox" id="fanA4" value="1" name="FA" >
					<label for="fanA4">1A004F</label>
				</fieldset>
			</div>
			<div class="col-1"></div>
			<div class="col-5">
				<fieldset data-role="controlgroup">
					<legend>B구역</legend>
					<input type="checkbox" id="fanB1" value="1" name="FB" >
					<label for="fanB1">1B001F</label>
					<input type="checkbox" id="fanB2" value="1" name="FB" >
					<label for="fanB2">1B002F</label>
					<input type="checkbox" id="fanB3" value="1" name="FB" >
					<label for="fanB3">1B003F</label>
					<input type="checkbox" id="fanB4" value="1" name="FB" >
					<label for="fanB4">1B004F</label>
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
					<input type="checkbox" id="fanC1" value="1" name="FC" >
					<label for="fanC1">1C001F</label>
					<input type="checkbox" id="fanC2" value="1" name="FC" >
					<label for="fanC2">1C002F</label>
					<input type="checkbox" id="fanC3" value="1" name="FC" >
					<label for="fanC3">1C003F</label>
					<input type="checkbox" id="fanC4" value="1" name="FC" >
					<label for="fanC4">1C004F</label>
				</fieldset>
			</div>
			<div class="col-1"></div>
			<div class="col-5">
				<fieldset data-role="controlgroup">
					<legend>D구역</legend>
					<input type="checkbox" id="fanD1" value="1" name="FD" >
					<label for="fanD1">1D001F</label>
					<input type="checkbox" id="fanD2" value="1" name="FD" >
					<label for="fanD2">1D002F</label>
					<input type="checkbox" id="fanD3" value="1" name="FD" >
					<label for="fanD3">1D003F</label>
					<input type="checkbox" id="fanD4" value="1" name="FD" >
					<label for="fanD4">1D004F</label>
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
					<input type="checkbox" id="fanE1" value="1" name="FE" >
					<label for="fanE1">1E001F</label>
					<input type="checkbox" id="fanE2" value="1" name="FE" >
					<label for="fanE2">1E002F</label>
					<input type="checkbox" id="fanE3" value="1" name="FE" >
					<label for="fanE3">1E003F</label>
					<input type="checkbox" id="fanE4" value="1" name="FE" >
					<label for="fanE4">1E004F</label>
				</fieldset>
			</div>
			<div class="col-1"></div>
			<div class="col-5">
				<fieldset data-role="controlgroup">
					<legend>F구역</legend>
					<input type="checkbox" id="fanF1" value="1" name="FF" >
					<label for="fanF1">1F001F</label>
					<input type="checkbox" id="fanF2" value="1" name="FF" >
					<label for="fanF2">1F002F</label>
					<input type="checkbox" id="fanF3" value="1" name="FF" >
					<label for="fanF3">1F003F</label>
					<input type="checkbox" id="fanF4" value="1" name="FF" >
					<label for="fanF4">1F004F</label>
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
		<input type="checkbox" name="section" value="A구역" id="FcheckA" onclick="FselectA(this)">
		<label for="FcheckA">A구역</label>
		&nbsp;&nbsp;<input type="number" id="AControl">&nbsp;&nbsp;<button id="submit" onclick="">적 용</button><br/>
		<input type="checkbox" name="section" value="B구역" id="FcheckB" onclick="FselectB(this)">
		<label for="FcheckB">B구역</label>
		&nbsp;&nbsp;<input type="number" id="BControl">&nbsp;&nbsp;<button id="submit" onclick="">적 용</button><br/>
		<input type="checkbox" name="section" value="C구역" id="FcheckC" onclick="FselectC(this)">
		<label for="FcheckC">C구역</label>
		&nbsp;&nbsp;<input type="number" id="CControl">&nbsp;&nbsp;<button id="submit" onclick="">적 용</button><br/>
		<input type="checkbox" name="section" value="D구역" id="FcheckD" onclick="FselectD(this)">
		<label for="FcheckD">D구역</label>
		&nbsp;&nbsp;<input type="number" id="DControl">&nbsp;&nbsp;<button id="submit" onclick="">적 용</button><br/>
		<input type="checkbox" name="section" value="E구역" id="FcheckE" onclick="FselectE(this)">
		<label for="FcheckE">E구역</label>
		&nbsp;&nbsp;<input type="number" id="EControl">&nbsp;&nbsp;<button id="submit" onclick="">적 용</button><br/>
		<input type="checkbox" name="section" value="F구역" id="FcheckF" onclick="FselectF(this)">
		<label for="FcheckF">F구역</label>		
		&nbsp;&nbsp;<input type="number" id="FControl">&nbsp;&nbsp;<button id="submit" onclick="">적 용</button>
	</fieldset>
</div>
<div class="col-4">
	<fieldset data-role="controlgroup" method="post" action="">
		<legend>공기질에 따른 속도 설정 변경</legend>
		<table>
			<tr>
				<td><label id="group" for="ACtrl" style="margin:0px;">좋음 0~50</label>&nbsp;&nbsp;</td>
				<td>&nbsp;<span id="groupCtrl" style="padding:5px;">-</span></td>
				<td><input type="number" id="ACtrl" value="">&nbsp;&nbsp;</td>
				<td><button id="submit" onclick="">변 경</button></td>
			</tr>
			<tr>
				<td><label id="group" for="BCtrl" style="margin:0px;">보통 51~100</label></td>
				<td><span id="groupCtrl" style="padding:5px;">1</span></td>
				<td><input type="number" id="BCtrl" value=""></td>
				<td><button id="submit" onclick="">변 경</button></td>
			</tr>
			<tr>
				<td><label id="group" for="CCtrl" style="margin:0px;">나쁨 101~250</label></td>
				<td><span id="groupCtrl" style="padding:5px;">2</span></td>
				<td><input type="number" id="CCtrl" value=""></td>
				<td><button id="submit" onclick="">변 경</button></td>
			</tr>
			<tr>
				<td><label id="group" for="DCtrl" style="margin:0px;">매우나쁨 251~500</label></td>
				<td><span id="groupCtrl" style="padding:5px;">3</span></td>
				<td><input type="number" id="DCtrl" value=""></td>
				<td><button id="submit" onclick="">변 경</button></td>
			</tr>
		</table>
	</fieldset>
</div>
<div class="col-4">
	<fieldset data-role="controlgroup" method="post" action="" >
		<legend>시간대별 속도 설정 변경</legend>
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
function FselectA(selectA)  {
	const checkboxes = document.getElementsByName('FA');
	
	checkboxes.forEach((checkbox) => {
		checkbox.checked = selectA.checked;
	});
}

function FselectB(selectB)  {
	const checkboxes = document.getElementsByName('FB');
	
	checkboxes.forEach((checkbox) => {
		checkbox.checked = selectB.checked;
	});
}

function FselectC(selectC)  {
	const checkboxes = document.getElementsByName('FC');
	
	checkboxes.forEach((checkbox) => {
		checkbox.checked = selectC.checked;
	});
}

function FselectD(selectD)  {
	const checkboxes = document.getElementsByName('FD');
	
	checkboxes.forEach((checkbox) => {
		checkbox.checked = selectD.checked;
	});
}

function FselectE(selectE)  {
	const checkboxes = document.getElementsByName('FE');
	
	checkboxes.forEach((checkbox) => {
		checkbox.checked = selectE.checked;
	});
}

function FselectF(selectF)  {
	const checkboxes = document.getElementsByName('FF');
	
	checkboxes.forEach((checkbox) => {
		checkbox.checked = selectF.checked;
	});
}
</script>