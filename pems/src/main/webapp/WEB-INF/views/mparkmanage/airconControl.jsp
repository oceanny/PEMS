<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>

<div style="margin:10px;">
	<select style="float:right;">
		<option>1층</option>
		<option>2층</option>
	</select>
	<table style=" border:4px solid #9AC5F4; background:#ECF9FF; height:50px;">
		<tr >
			<th style=" border:4px solid #9AC5F4; background:#ECF9FF; height:50px; width:120px; text-align:center; font-size:20px;"><p style="color:#0081C9; margin:0 auto;">온도/<br/>바람세기</p></th>
			<th style=" border:4px solid #9AC5F4; background:#ECF9FF; height:50px; width:120px; text-align:center; font-size:20px;"><p style="color:#0081C9; margin:0 auto;">기기 세팅값</p></th>
			<th style=" border:4px solid #9AC5F4; background:#ECF9FF; height:50px; width:120px; text-align:center; font-size:20px;"><p style="color:#0081C9; margin:0 auto;">현재 내부값</p></th>
			<th style=" border:4px solid #9AC5F4; background:#ECF9FF; height:50px; width:120px; text-align:center; font-size:20px;"><p style="color:#0081C9; margin:0 auto;">추천 값</p></th>
		</tr>
	</table>
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
					<input type="checkbox" id="AirconA1" value="1" name="AA" >
					<label for="AirconA1">1A001A</label>
					<input type="checkbox" id="AirconA2" value="1" name="AA" >
					<label for="AirconA2">1A002A</label>
					<input type="checkbox" id="AirconA3" value="1" name="AA" >
					<label for="AirconA3">1A003A</label>
				</fieldset>
			</div>
			<div class="col-1"></div>
			<div class="col-5">
				<fieldset data-role="controlgroup">
					<legend>B구역</legend>
					<input type="checkbox" id="AirconB1" value="1" name="AB" >
					<label for="AirconB1">1B001A</label>
					<input type="checkbox" id="AirconB2" value="1" name="AB" >
					<label for="AirconB2">1B002A</label>
					<input type="checkbox" id="AirconB3" value="1" name="AB" >
					<label for="AirconB3">1B003A</label>
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
					<input type="checkbox" id="AirconC1" value="1" name="AC" >
					<label for="AirconC1">1C001A</label>
					<input type="checkbox" id="AirconC2" value="1" name="AC" >
					<label for="AirconC2">1C002A</label>
					<input type="checkbox" id="AirconC3" value="1" name="AC" >
					<label for="AirconC3">1C003A</label>
				</fieldset>
			</div>
			<div class="col-1"></div>
			<div class="col-5">
				<fieldset data-role="controlgroup">
					<legend>D구역</legend>
					<input type="checkbox" id="AirconD1" value="1" name="AD" >
					<label for="AirconD1">1D001A</label>
					<input type="checkbox" id="AirconD2" value="1" name="AD" >
					<label for="AirconD2">1D002A</label>
					<input type="checkbox" id="AirconD3" value="1" name="AD" >
					<label for="AirconD3">1D003A</label>
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
					<input type="checkbox" id="AirconE1" value="1" name="AE" >
					<label for="AirconE1">1E001A</label>
					<input type="checkbox" id="AirconE2" value="1" name="AE" >
					<label for="AirconE2">1E002A</label>
					<input type="checkbox" id="AirconE3" value="1" name="AE" >
					<label for="AirconE3">1E003A</label>
				</fieldset>
			</div>
			<div class="col-1"></div>
			<div class="col-5">
				<fieldset data-role="controlgroup">
					<legend>F구역</legend>
					<input type="checkbox" id="AirconF1" value="1" name="AF" >
					<label for="AirconF1">1F001A</label>
					<input type="checkbox" id="AirconF2" value="1" name="AF" >
					<label for="AirconF2">1F002A</label>
					<input type="checkbox" id="AirconF3" value="1" name="AF" >
					<label for="AirconF3">1F003A</label>
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
		<input type="checkbox" name="section" value="A구역" id="AcheckA" onclick="selectA(this)" >
		<label for="AcheckA">A구역</label>
		&nbsp;&nbsp;<input type="number" id="AControl">&nbsp;&nbsp;<button id="submit" onclick="">적 용</button><br/>
		<input type="checkbox" name="section" value="B구역" id="AcheckB" onclick="selectB(this)" >
		<label for="AcheckB">B구역</label>
		&nbsp;&nbsp;<input type="number" id="BControl">&nbsp;&nbsp;<button id="submit" onclick="">적 용</button><br/>
		<input type="checkbox" name="section" value="C구역" id="AcheckC" onclick="selectC(this)" >
		<label for="AcheckC">C구역</label>
		&nbsp;&nbsp;<input type="number" id="CControl">&nbsp;&nbsp;<button id="submit" onclick="">적 용</button><br/>
		<input type="checkbox" name="section" value="D구역" id="AcheckD" onclick="selectD(this)" >
		<label for="AcheckD">D구역</label>
		&nbsp;&nbsp;<input type="number" id="DControl">&nbsp;&nbsp;<button id="submit" onclick="">적 용</button><br/>
		<input type="checkbox" name="section" value="E구역" id="AcheckE" onclick="selectE(this)" >
		<label for="AcheckE">E구역</label>
		&nbsp;&nbsp;<input type="number" id="EControl">&nbsp;&nbsp;<button id="submit" onclick="">적 용</button><br/>
		<input type="checkbox" name="section" value="F구역" id="AcheckF" onclick="selectF(this)" >
		<label for="AcheckF">F구역</label>		
		&nbsp;&nbsp;<input type="number" id="FControl">&nbsp;&nbsp;<button id="submit" onclick="">적 용</button>
	</fieldset>
</div>
<div class="col-4">
	<fieldset data-role="controlgroup" method="post" action="">
		<legend>내부 온도에 따른 온도, 바람세기 설정 변경</legend>
		<table>
			<tr>
				<td><label id="group" for="ACtrl" style="margin:0px;">영하</label>&nbsp;&nbsp;</td>
				<td><span id="groupCtrl" style="padding:5px;">25</span>&nbsp;&nbsp;<span id="groupCtrl" style="padding:5px;">3</span></td>
				<td><input type="number" id="ACtrl" value=""></td>
				<td><input type="number" id="ACtrl" value="">&nbsp;&nbsp;</td>
				<td><button id="submit" onclick="">변 경</button></td>
			</tr>
			<tr>
				<td><label id="group" for="BCtrl" style="margin:0px;">0~10</label></td>
				<td><span id="groupCtrl" style="padding:5px;">22</span>&nbsp;&nbsp;<span id="groupCtrl" style="padding:5px;">1</span></td>
				<td><input type="number" id="BCtrl" value=""></td>
				<td><input type="number" id="BCtrl" value=""></td>
				<td><button id="submit" onclick="">변 경</button></td>
			</tr>
			<tr>
				<td><label id="group" for="CCtrl" style="margin:0px;">11~25</label></td>
				<td>&nbsp;&nbsp;<span id="groupCtrl" style="padding:5px;">-</span>&nbsp;&nbsp;&nbsp;&nbsp;<span id="groupCtrl" style="padding:5px;">-</span></td>
				<td><input type="number" id="ECtrl" value=""></td>
				<td><input type="number" id="CCtrl" value=""></td>
				<td><button id="submit" onclick="">변 경</button></td>
			</tr>
			<tr>
				<td><label id="group" for="ECtrl" style="margin:0px;">26~30</label></td>
				<td><span id="groupCtrl" style="padding:5px;">23</span>&nbsp;&nbsp;<span id="groupCtrl" style="padding:5px;">2</span></td>
				<td><input type="number" id="ECtrl" value=""></td>
				<td><input type="number" id="ECtrl" value=""></td>
				<td><button id="submit" onclick="">변 경</button></td>
			</tr>
			<tr>
				<td><label id="group" for="FCtrl" style="margin:0px;">31 이상</label></td>
				<td><span id="groupCtrl" style="padding:5px;">20</span>&nbsp;&nbsp;<span id="groupCtrl" style="padding:5px;">3</span></td>
				<td><input type="number" id="ECtrl" value=""></td>
				<td><input type="number" id="FCtrl" value=""></td>
				<td><button id="submit" onclick="">변 경</button></td>
			<tr>
		</table>
	</fieldset>
</div>
<div class="col-4">
	<fieldset data-role="controlgroup" method="post" action="" >
		<legend>시간대별 온도 설정 변경</legend>
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
function selectA(selectA)  {
	const checkboxes = document.getElementsByName('AA');
	
	checkboxes.forEach((checkbox) => {
		checkbox.checked = selectA.checked;
	});
}

function selectB(selectB)  {
	const checkboxes = document.getElementsByName('AB');
	
	checkboxes.forEach((checkbox) => {
		checkbox.checked = selectB.checked;
	});
}

function selectC(selectC)  {
	const checkboxes = document.getElementsByName('AC');
	
	checkboxes.forEach((checkbox) => {
		checkbox.checked = selectC.checked;
	});
}

function selectD(selectD)  {
	const checkboxes = document.getElementsByName('AD');
	
	checkboxes.forEach((checkbox) => {
		checkbox.checked = selectD.checked;
	});
}

function selectE(selectE)  {
	const checkboxes = document.getElementsByName('AE');
	
	checkboxes.forEach((checkbox) => {
		checkbox.checked = selectE.checked;
	});
}

function selectF(selectF)  {
	const checkboxes = document.getElementsByName('AF');
	
	checkboxes.forEach((checkbox) => {
		checkbox.checked = selectF.checked;
	});
}
</script>