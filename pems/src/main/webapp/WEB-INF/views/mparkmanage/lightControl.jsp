<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>

<style>
* {
	padding:0px;
	font-size: 0.7em;
	text-align: center;
}

table {
  width: 80%;
  border: 1px solid #444444;
  height: 500px;
}

tr {
	height:30px;
	padding:0px;
	border:hidden;
}

td {
	height:30px;
	width:50px;
	border:hidden;
}

td#white{
	width:50px;
}

td#car {
	border:0.5px;
	background-color:#AAC8A7;
	height:30px;
	width:212.5px;
}

input[type=checkbox] + label{
	display:inline-block;
	width:18%;
	height:25%;
	border:2px solid #FFD93D;
	cursor:pointer;
}

input[type=checkbox]:checked + label{
	background-color:#FCFFB2;
}

input[type=checkbox]{
	display: none;	
}

fieldset{
	width:30%;
}


input[name=section] + label{
	width:150px;
}

button#submit{
	background-color:#CEE6F3;
	border:1px solid #A1CCD1;
	width:40px;
	height:18px;
	border-radius:5px;
}

span#groupCtrl{
	display:inline-block;
	border:2px solid #FFD93D;
	width:60px;
	height:18px;
	background-color:#FFF8DE;
}

input[type=number]{
	border:2px solid #7C9D96;
	background-color:#F5F5F5;
	width:60px;
	height:18px;
}

label#group{
	border:2px solid #FFD93D;
	background-color:#FFF8DE;
	width:150px;
	height:18px;
}


td#timeSet{
	border:2px solid #F6BA6F;
	width:60px;
	height:18px;
	background-color:#FFF8DE;
}

td#time{
	border:2px solid #F6BA6F;
	width:60px;
	height:18px;
	background-color:#FFD93D;
}


</style>

     
<table class="table table-bordered dataTable dtr-inline" >
	<tr>
		<td id="white"></td>
		<td id="car" style="width:1000px;"></td>
		<td id="white">↓ 1층</td>
	</tr>
	<tr>
		<td id="white">입 구 -> </td>
		<td class="half" style="width:1000px;" style="border:hidden;">
			<fieldset class="A" data-role="controlgroup" style="float:left; border:2px groove(internal value);">
				<legend>A구역</legend>
				<input type="checkbox" id="lightA1" value="1" name="A" checked>
				<label for="lightA1">1A001L</label>
				<input type="checkbox" id="lightA2" value="1" name="A" checked>
				<label for="lightA2">1A002L</label>
				<input type="checkbox" id="lightA3" value="1" name="A" checked>
				<label for="lightA3">1A003L</label>
				<input type="checkbox" id="lightA4" value="1" name="A" checked>
				<label for="lightA4">1A004L</label>
				<input type="checkbox" id="lightA5" value="1" name="A" checked>
				<label for="lightA5">1A005L</label>
				<input type="checkbox" id="lightA6" value="1" name="A" checked>
				<label for="lightA6">1A006L</label>
				<input type="checkbox" id="lightA7" value="1" name="A" checked>
				<label for="lightA7">1A007L</label>
				<input type="checkbox" id="lightA8" value="1" name="A" checked>
				<label for="lightA8">1A008L</label>
				<input type="checkbox" id="lightA9" value="1" name="A" checked>
				<label for="lightA9">1A009L</label>
				<input type="checkbox" id="lightA10" value="1" name="A" checked>
				<label for="lightA10">1A010L</label>
			</fieldset>
			<fieldset data-role="controlgroup" style="float:right;">
				<legend>B구역</legend>
				<input type="checkbox" id="lightB1" value="1" name="B" checked>
				<label for="lightB1">1B001L</label>
				<input type="checkbox" id="lightB2" value="1" name="B" checked>
				<label for="lightB2">1B002L</label>
				<input type="checkbox" id="lightB3" value="1" name="B" checked>
				<label for="lightB3">1B003L</label>
				<input type="checkbox" id="lightB4" value="1" name="B" checked>
				<label for="lightB4">1B004L</label>
				<input type="checkbox" id="lightB5" value="1" name="B" checked>
				<label for="lightB5">1B005L</label>
				<input type="checkbox" id="lightB6" value="1" name="B" checked>
				<label for="lightB6">1B006L</label>
				<input type="checkbox" id="lightB7" value="1" name="B" checked>
				<label for="lightB7">1B007L</label>
				<input type="checkbox" id="lightB8" value="1" name="B" checked>
				<label for="lightB8">1B008L</label>
				<input type="checkbox" id="lightB9" value="1" name="B" checked>
				<label for="lightB9">1B009L</label>
				<input type="checkbox" id="lightB10" value="1" name="B" checked>
				<label for="lightB10">1B0010L</label>
			</fieldset>
		</td>
	</tr>
	<tr>
		<td id="white"></td>
		<td id="car" colspan="3"></td>
		<td rowspan="7" style="	border:hidden;"></td>
		<td id="car" colspan="3"></td>
		<td rowspan="7" style="	border:hidden;"></td>
		<td id="car" colspan="3"></td>
		<td rowspan="7" style="	border:hidden;"></td>
		<td id="car" colspan="3"></td>
	</tr>
	<tr style="height:1px;"></tr>
	<tr>
		<td id="white"></td>
		<td id="car" style="width:215.5px;"></td>
		<td id="car" colspan="3"></td>
		<td id="car" colspan="3"></td>
		<td id="car" colspan="3"></td>
	</tr>
	<tr>
		<td id="white"></td>
		<td colspan="22" style="border:hidden;">
			<fieldset data-role="controlgroup" style="float:left;">
				<legend>C구역</legend>
				<input type="checkbox" id="lightC1" value="1" name="C" checked>
				<label for="lightC1">1C001L</label>
				<input type="checkbox" id="lightC2" value="1" name="C" checked>
				<label for="lightC2">1C002L</label>
				<input type="checkbox" id="lightC3" value="1" name="C" checked>
				<label for="lightC3">1C003L</label>
				<input type="checkbox" id="lightC4" value="1" name="C" checked>
				<label for="lightC4">1C004L</label>
				<input type="checkbox" id="lightC5" value="1" name="C" checked>
				<label for="lightC5">1C005L</label>
				<input type="checkbox" id="lightC6" value="1" name="C" checked>
				<label for="lightC6">1C006L</label>
				<input type="checkbox" id="lightC7" value="1" name="C" checked>
				<label for="lightC7">1C007L</label>
				<input type="checkbox" id="lightC8" value="1" name="C" checked>
				<label for="lightC8">1C008L</label>
				<input type="checkbox" id="lightC9" value="1" name="C" checked>
				<label for="lightC9">1C009L</label>
				<input type="checkbox" id="lightC10" value="1" name="C" checked>
				<label for="lightC10">1C010L</label>
			</fieldset>
			<fieldset data-role="controlgroup" style="float:right;">
				<legend>D구역</legend>
				<input type="checkbox" id="lightD1" value="1" name="D" checked>
				<label for="lightD1">1D001L</label>
				<input type="checkbox" id="lightD2" value="1" name="D" checked>
				<label for="lightD2">1D002L</label>
				<input type="checkbox" id="lightD3" value="1" name="D" checked>
				<label for="lightD3">1D003L</label>
				<input type="checkbox" id="lightD4" value="1" name="D" checked>
				<label for="lightD4">1D004L</label>
				<input type="checkbox" id="lightD5" value="1" name="D" checked>
				<label for="lightD5">1D005L</label>
				<input type="checkbox" id="lightD6" value="1" name="D" checked>
				<label for="lightD6">1D006L</label>
				<input type="checkbox" id="lightD7" value="1" name="D" checked>
				<label for="lightD7">1D007L</label>
				<input type="checkbox" id="lightD8" value="1" name="D" checked>
				<label for="lightD8">1D008L</label>
				<input type="checkbox" id="lightD9" value="1" name="D" checked>
				<label for="lightD9">1D009L</label>
				<input type="checkbox" id="lightD10" value="1" name="D" checked>
				<label for="lightD10">1D0010L</label>
			</fieldset>
		</td>
	</tr>
	<tr>
		<td id="white"></td>
		<td id="car" colspan="3"></td>
		<td id="car" colspan="3"></td>
		<td id="car" colspan="3"></td>
		<td id="car" colspan="3"></td>
	</tr>
	<tr style="height:1px;"></tr>
	<tr>
		<td id="white"></td>
		<td id="car" colspan="3"></td>
		<td id="car" colspan="3"></td>
		<td id="car" colspan="3"></td>
		<td id="car" colspan="3"></td>
	</tr>
	<tr>
		<td id="white"></td>
		<td style="border:hidden; width:1000px;">
			<fieldset data-role="controlgroup" style="float:left;">
				<legend>E구역</legend>
				<input type="checkbox" id="lightE1" value="1" name="E" checked>
				<label for="lightE1">1E001L</label>
				<input type="checkbox" id="lightE2" value="1" name="E" checked>
				<label for="lightE2">1E002L</label>
				<input type="checkbox" id="lightE3" value="1" name="E" checked>
				<label for="lightE3">1E003L</label>
				<input type="checkbox" id="lightE4" value="1" name="E" checked>
				<label for="lightE4">1E004L</label>
				<input type="checkbox" id="lightE5" value="1" name="E" checked>
				<label for="lightE5">1E005L</label>
				<input type="checkbox" id="lightE6" value="1" name="E" checked>
				<label for="lightE6">1E006L</label>
				<input type="checkbox" id="lightE7" value="1" name="E" checked>
				<label for="lightE7">1E007L</label>
				<input type="checkbox" id="lightE8" value="1" name="E" checked>
				<label for="lightE8">1E008L</label>
				<input type="checkbox" id="lightE9" value="1" name="E" checked>
				<label for="lightE9">1E009L</label>
				<input type="checkbox" id="lightE10" value="1" name="E" checked>
				<label for="lightE10">1E010L</label>
			</fieldset>
			<fieldset data-role="controlgroup" style="float:right;">
				<legend>F구역</legend>
				<input type="checkbox" id="lightF1" value="1" name="F" checked>
				<label for="lightF1">1F001L</label>
				<input type="checkbox" id="lightF2" value="1" name="F" checked>
				<label for="lightF2">1F002L</label>
				<input type="checkbox" id="lightF3" value="1" name="F" checked>
				<label for="lightF3">1F003L</label>
				<input type="checkbox" id="lightF4" value="1" name="F" checked>
				<label for="lightF4">1F004L</label>
				<input type="checkbox" id="lightF5" value="1" name="F" checked>
				<label for="lightF5">1F005L</label>
				<input type="checkbox" id="lightF6" value="1" name="F" checked>
				<label for="lightF6">1F006L</label>
				<input type="checkbox" id="lightF7" value="1" name="F" checked>
				<label for="lightF7">1F007L</label>
				<input type="checkbox" id="lightF8" value="1" name="F" checked>
				<label for="lightF8">1F008L</label>
				<input type="checkbox" id="lightF9" value="1" name="F" checked>
				<label for="lightF9">1F009L</label>
				<input type="checkbox" id="lightF10" value="1" name="F" checked>
				<label for="lightF10">1F0010L</label>
			</fieldset>
		</td>
	</tr>
	<tr>
		<td id="white">↑ 2층</td>
		<td id="car" style="width:475px;"></td>
		<td id="white">E/V</td>
		<td id="car" style="width:475px;"></td>
		<td id="white">출 구</td>
	</tr>
</table>

<table style="height:250px;">
	<tr style="height:5px;"></tr>
	<tr style="">
		<td style="width:10%;">
		<td style="width:30%; float:left;">
			<fieldset data-role="controlgroup" style="width:350px;  margin:10px;">
				<legend>구역별 제어</legend>
				<input type="checkbox" name="section" value="A구역" id="checkA" onclick="selectA(this)" checked>
				<label for="checkA">A구역</label>
				&nbsp;&nbsp;<input type="number" id="AControl">&nbsp;&nbsp;<button id="submit" onclick="">적 용</button>
				<input type="checkbox" name="section" value="B구역" id="checkB" onclick="selectB(this)" checked>
				<label for="checkB">B구역</label>
				&nbsp;&nbsp;<input type="number" id="BControl">&nbsp;&nbsp;<button id="submit" onclick="">적 용</button>
				<input type="checkbox" name="section" value="C구역" id="checkC" onclick="selectC(this)" checked>
				<label for="checkC">C구역</label>
				&nbsp;&nbsp;<input type="number" id="CControl">&nbsp;&nbsp;<button id="submit" onclick="">적 용</button>
				<input type="checkbox" name="section" value="D구역" id="checkD" onclick="selectD(this)" checked>
				<label for="checkD">D구역</label>
				&nbsp;&nbsp;<input type="number" id="DControl">&nbsp;&nbsp;<button id="submit" onclick="">적 용</button>
				<input type="checkbox" name="section" value="E구역" id="checkE" onclick="selectE(this)" checked>
				<label for="checkE">E구역</label>
				&nbsp;&nbsp;<input type="number" id="EControl">&nbsp;&nbsp;<button id="submit" onclick="">적 용</button>
				<input type="checkbox" name="section" value="F구역" id="checkF" onclick="selectF(this)" checked>
				<label for="checkF">F구역</label>		
				&nbsp;&nbsp;<input type="number" id="FControl">&nbsp;&nbsp;<button id="submit" onclick="">적 용</button>
			</fieldset>
		</td>
		<td style="width:30%; float:left;">
			<fieldset data-role="controlgroup" method="post" action="" style="width:350px; float:left; margin:10px;">
				<legend>내부 조도에 따른 설정 변경</legend>
				<div><label id="group" for="ACtrl">매우어둡다 0~170</label><span id="groupCtrl">56</span>&nbsp;&nbsp;
				<input type="number" id="ACtrl" value="">&nbsp;&nbsp;<button id="submit" onclick="">변 경</button></div>
				<div><label id="group" for="BCtrl">어둡다 171~341</label><span id="groupCtrl">56</span>&nbsp;&nbsp;
				<input type="number" id="BCtrl" value="">&nbsp;&nbsp;<button id="submit" onclick="">변 경</button></div>
				<div><label id="group" for="CCtrl">조금어둡다 342~511</label><span id="groupCtrl">56</span>&nbsp;&nbsp;
				<input type="number" id="CCtrl" value="">&nbsp;&nbsp;<button id="submit" onclick="">변 경</button></div>
				<div><label id="group" for="DCtrl">조금밝다 512~682</label><span id="groupCtrl">56</span>&nbsp;&nbsp;
				<input type="number" id="DCtrl" value="">&nbsp;&nbsp;<button id="submit" onclick="">변 경</button></div>
				<div><label id="group" for="ECtrl">밝다 683~853</label><span id="groupCtrl">56</span>&nbsp;&nbsp;
				<input type="number" id="ECtrl" value="">&nbsp;&nbsp;<button id="submit" onclick="">변 경</button></div>
				<div><label id="group" for="FCtrl">매우밝다 854~1023</label><span id="groupCtrl">56</span>&nbsp;&nbsp;
				<input type="number" id="FCtrl" value="">&nbsp;&nbsp;<button id="submit" onclick="">변 경</button></div>
			</fieldset>
		</td>
		<td style="width:25%; float:left;">
			<div>
				<fieldset data-role="controlgroup" method="post" action="" style="width:350px; float:left; margin:10px;">
					<legend>시간대별 조도 설정 변경</legend>
					<form>
						<select name="time" style="	border:2px solid #FFD93D; background-color:#FFF8DE; width:70px; height:18px;">
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
				<table style="height:90px;">
					<tr style="height:20px;">
						<td id="time">1시</td>
						<td id="timeSet">57</td>
						<td id="time">2시</td>
						<td id="timeSet">57</td>
						<td id="time">3시</td>
						<td id="timeSet">57</td>
						<td id="time">4시</td>
						<td id="timeSet">57</td>
						<td id="time">5시</td>
						<td id="timeSet">57</td>
						<td id="time">6시</td>
						<td id="timeSet">57</td>
					</tr>
					<tr style="height:20px;">
						<td id="time">7시</td>
						<td id="timeSet">57</td>
						<td id="time">8시</td>
						<td id="timeSet">57</td>
						<td id="time">9시</td>
						<td id="timeSet">57</td>
						<td id="time">10시</td>
						<td id="timeSet">57</td>
						<td id="time">11시</td>
						<td id="timeSet">57</td>
						<td id="time">12시</td>
						<td id="timeSet">57</td>
					</tr>
					<tr style="height:20px;">
						<td id="time">13시</td>
						<td id="timeSet">57</td>
						<td id="time">14시</td>
						<td id="timeSet">57</td>
						<td id="time">15시</td>
						<td id="timeSet">57</td>
						<td id="time">16시</td>
						<td id="timeSet">57</td>
						<td id="time">17시</td>
						<td id="timeSet">57</td>
						<td id="time">18시</td>
						<td id="timeSet">57</td>
					</tr>
					<tr style="height:20px;">
						<td id="time">19시</td>
						<td id="timeSet">57</td>
						<td id="time">20시</td>
						<td id="timeSet">57</td>
						<td id="time">21시</td>
						<td id="timeSet">57</td>
						<td id="time">22시</td>
						<td id="timeSet">57</td>
						<td id="time">23시</td>
						<td id="timeSet">57</td>
						<td id="time">24시</td>
						<td id="timeSet">57</td>
					</tr>
				</table>
			</div>
		</td>
		<td style="width:5%;"></td>
	</tr>
</table>




<script>
function selectA(selectA)  {
	const checkboxes = document.getElementsByName('A');
	
	checkboxes.forEach((checkbox) => {
		checkbox.checked = selectA.checked;
	});
}

function selectB(selectB)  {
	const checkboxes = document.getElementsByName('B');
	
	checkboxes.forEach((checkbox) => {
		checkbox.checked = selectB.checked;
	});
}

function selectC(selectC)  {
	const checkboxes = document.getElementsByName('C');
	
	checkboxes.forEach((checkbox) => {
		checkbox.checked = selectC.checked;
	});
}

function selectD(selectD)  {
	const checkboxes = document.getElementsByName('D');
	
	checkboxes.forEach((checkbox) => {
		checkbox.checked = selectD.checked;
	});
}

function selectE(selectE)  {
	const checkboxes = document.getElementsByName('E');
	
	checkboxes.forEach((checkbox) => {
		checkbox.checked = selectE.checked;
	});
}

function selectF(selectF)  {
	const checkboxes = document.getElementsByName('F');
	
	checkboxes.forEach((checkbox) => {
		checkbox.checked = selectF.checked;
	});
}
</script>

</body>
</html>