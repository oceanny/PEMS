<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>

	<script>
	    function submitForm() {
	        var checkboxes = document.querySelectorAll('input[type="checkbox"]');
	        checkboxes.forEach(function(checkbox) {
	            checkbox.value = checkbox.checked ? 1 : 0;
	        });
	        return true;
	    }
	</script>

<div style=" margin:10px;">
	<select style="float:right;">
		<option>1층</option>
		<option>2층</option>
	</select>
	<table style=" border:4px solid #9AC5F4; background:#white; height:50px;">
		<tr>
			<th style=" border:4px solid #9AC5F4; background:#ECF9FF; height:50px; width:120px; text-align:center; font-size:20px;"><p style="color:#0081C9; margin:0 auto;">조도</p></th>
			<th style=" border:4px solid #9AC5F4; background:#ECF9FF; height:50px; width:120px; text-align:center; font-size:20px;"><p style="color:#0081C9; margin:0 auto;">기기 세팅값</p></th>
			<th style=" border:4px solid #9AC5F4; background:#ECF9FF; height:50px; width:120px; text-align:center; font-size:20px;"><p style="color:#0081C9; margin:0 auto;">${lightData.lDataNum }</p></th>
			<th style=" border:4px solid #9AC5F4; background:#ECF9FF; height:50px; width:120px; text-align:center; font-size:20px;"><p style="color:#0081C9; margin:0 auto;">추천 값</p></th>
			<td style="padding:10px; border-top:hidden; border-right:hidden; border-bottom:hidden; background-color:white;"><div><button style ="background-color:#CEE6F3; border:1px solid #A1CCD1; width:60px; height:25px; border-radius:5px;" onclick="getSelectedlights()">전송</button></div></td>
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
				    <c:forEach var="i" begin="1" end="10">
				        <c:set var="id" value="lightA${i}" />
				        <c:set var="label" value="1A${i < 10 ? '00' : '0'}${i}L" />
				        <input type="checkbox" id="${id}" value="1" name="A">
				        <label for="${id}">${label}</label>
				        <c:if test="${i % 5 == 0}"><br/></c:if>
				    </c:forEach>
				</fieldset>
			</div>
			<div class="col-1"></div>
			<div class="col-5">
				<fieldset class="B" data-role="controlgroup">
				    <legend>B구역</legend>
				    <c:forEach var="i" begin="1" end="10">
				        <c:set var="id" value="lightB${i}" />
				        <c:set var="label" value="1B${i < 10 ? '00' : '0'}${i}L" />
				        <input type="checkbox" id="${id}" value="1" name="B">
				        <label for="${id}">${label}</label>
				        <c:if test="${i % 5 == 0}"><br/></c:if>
				    </c:forEach>
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
				<fieldset class="C" data-role="controlgroup">
				    <legend>C구역</legend>
				    <c:forEach var="i" begin="1" end="10">
				        <c:set var="id" value="lightC${i}" />
				        <c:set var="label" value="1C${i < 10 ? '00' : '0'}${i}L" />
				        <input type="checkbox" id="${id}" value="1" name="C">
				        <label for="${id}">${label}</label>
				        <c:if test="${i % 5 == 0}"><br/></c:if>
				    </c:forEach>
				</fieldset>
			</div>
			<div class="col-1"></div>
			<div class="col-5">
				<fieldset class="D" data-role="controlgroup">
				    <legend>D구역</legend>
				    <c:forEach var="i" begin="1" end="10">
				        <c:set var="id" value="lightD${i}" />
				        <c:set var="label" value="1D${i < 10 ? '00' : '0'}${i}L" />
				        <input type="checkbox" id="${id}" value="1" name="D">
				        <label for="${id}">${label}</label>
				        <c:if test="${i % 5 == 0}"><br/></c:if>
				    </c:forEach>
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
				<fieldset class="E" data-role="controlgroup">
				    <legend>E구역</legend>
				    <c:forEach var="i" begin="1" end="10">
				        <c:set var="id" value="lightE${i}" />
				        <c:set var="label" value="1E${i < 10 ? '00' : '0'}${i}L" />
				        <input type="checkbox" id="${id}" value="1" name="E">
				        <label for="${id}">${label}</label>
				        <c:if test="${i % 5 == 0}"><br/></c:if>
				    </c:forEach>
				</fieldset>
			</div>
			<div class="col-1"></div>
			<div class="col-5">
				<fieldset class="F" data-role="controlgroup">
				    <legend>F구역</legend>
				    <c:forEach var="i" begin="1" end="10">
				        <c:set var="id" value="lightF${i}" />
				        <c:set var="label" value="1F${i < 10 ? '00' : '0'}${i}L" />
				        <input type="checkbox" id="${id}" value="1" name="F">
				        <label for="${id}">${label}</label>
				        <c:if test="${i % 5 == 0}"><br/></c:if>
				    </c:forEach>
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

<% 
    for (char letter = 'A'; letter <= 'F'; letter++) {
        for (int number = 1; number <= 10; number++) {
            String paramName = "light" + letter + number;
            String checkboxValue = request.getParameter(paramName);
            int checkboxInt = 0;
            if (checkboxValue != null && !checkboxValue.isEmpty()) {
                try {
                    checkboxInt = Integer.parseInt(checkboxValue);
                } catch (NumberFormatException e) {
                    // 예외 처리
                }
            }
%>
    체크박스 <%= letter %><%= number %> 값: <%= checkboxInt %><br>
<%
        }
    }
%>

<script>
function getSelectedlights(masterId)

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