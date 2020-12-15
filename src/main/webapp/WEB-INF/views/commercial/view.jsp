<%@page import="com.ssafy.HappyHouse.dto.CommercialDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="root" value="${pageContext.request.contextPath}" />
<meta charset="UTF-8">
<title>상업 정보</title>
</head>
<script type ="text/javascript">
var dis = false;
function doDisplay(view){
	var con1 = document.getElementById("소매");
	var con2 = document.getElementById("생활서비스");
	var con3 = document.getElementById("부동산");
	var con4 = document.getElementById("관광/여가/오락");
	var con5 = document.getElementById("숙박");
	var con6 = document.getElementById("스포츠");
	var con7 = document.getElementById("음식");
	var con8 = document.getElementById("학문");
	var con9 = document.getElementById("의료");
	

		if (view == '소매') {
			var con = document.getElementById("소매");

			if (con.style.display == 'none') {
				con.style.display = 'block';
				con.style.width = '90%';
			} else
				con.style.display = 'none';
		}
		if (view == '생활서비스') {
			var con = document.getElementById("생활서비스");
			if (con.style.display == 'none') {
				con.style.display = 'block';
				con.style.width = '90%';
			} else
				con.style.display = 'none';
		}
		if (view == '부동산') {
			var con = document.getElementById("부동산");
			if (con.style.display == 'none') {
				con.style.display = 'block';
				con.style.width = '90%';
			} else
				con.style.display = 'none';
		}
		if (view == '관광/여가/오락') {
			var con = document.getElementById("관광/여가/오락");
			if (con.style.display == 'none') {
				con.style.display = 'block';
				con.style.width = '90%';
			} else
				con.style.display = 'none';
		}
		if (view == '숙박') {
			var con = document.getElementById("숙박");
			if (con.style.display == 'none') {
				con.style.display = 'block';
				con.style.width = '90%';
			} else
				con.style.display = 'none';
		}
		if (view == '스포츠') {
			var con = document.getElementById("스포츠");
			if (con.style.display == 'none') {
				con.style.display = 'block';
				con.style.width = '90%';
			} else
				con.style.display = 'none';
		}
		if (view == '음식') {
			var con = document.getElementById("음식");
			if (con.style.display == 'none') {
				con.style.display = 'block';
				con.style.width = '90%';
			} else
				con.style.display = 'none';
		}
		if (view == '학문/교육') {
			var con = document.getElementById("학문/교육");
			if (con.style.display == 'none') {
				con.style.display = 'block';
				con.style.width = '90%';
			} else
				con.style.display = 'none';
		}
		if (view == '의료') {
			var con = document.getElementById("의료");
			if (con.style.display == 'none') {
				con.style.display = 'block';
				con.style.width = '90%';
			} else
				con.style.display = 'none';
		}
	}
</script>
<body>
	<%@include file="../nav.jsp"%>
	<div class="container">
		<h1>' ${dongname } ' 상업 정보</h1>

		<div align = "center">

			<table class="pinktable2" id="com" style="width: 90%;" >
				<thead>
					<tr align="center">
						<th>분류</th>
						<td  style="cursor: pointer;" id="somae" onClick="javascript:doDisplay('소매')">소매</td>
						<td  style="cursor: pointer;" id="service" onClick="javascript:doDisplay('생활서비스')">생활서비스</td>
						<td  style="cursor: pointer;" id="budongsan" onClick="javascript:doDisplay('부동산')">부동산</td>
						<td  style="cursor: pointer;" id="gwan" onClick="javascript:doDisplay('관광/여가/오락')">관광/여가/오락</td>
						<td  style="cursor: pointer;" id="sukback" onClick="javascript:doDisplay('숙박')">숙박</td>
						<td  style="cursor: pointer;" id="sport" onClick="javascript:doDisplay('스포츠')">스포츠</td>
						<td  style="cursor: pointer;" id="food" onClick="javascript:doDisplay('음식')">음식</td>
						<td  style="cursor: pointer;" id="study" onClick="javascript:doDisplay('학문/교육')">학문/교육</td>
						<td  style="cursor: pointer;" id="medical" onClick="javascript:doDisplay('의료')">의료</td>
					</tr>
					<tr align="center">
						<th>개수</th>
						<c:forEach var="lists" items="${commlist }">
								<td>${lists.size() }</td>

						</c:forEach>
					</tr>

				</thead>
			</table>
		</div>


		<div id="divToggle"  align = "center"  >
			<c:forEach var="lists" items="${commlist }">
				<table class="pinktable"  id = "${lists[0].codename1 }" style = "display: none;">
					<thead>
						<tr class="table-info">
							<td width=50 style="word-break:break-all">분류</td>
							<td width=50>업종</td>
							<td width=50>상세 업종</td>
							<td width=50>상호명</td>
							<td width=50>주소</td>
						</tr>
						<c:forEach var="comm" items="${lists}">
							<tr>
								<td>${comm.codename1 }</td>
								<td>${comm.codename2 }</td>
								<td>${comm.codename3 }</td>
								<td>${comm.shopname }</td>
								<td>${comm.address }</td>
							</tr>
						</c:forEach>
					</thead>
				</table>
			</c:forEach>

		</div>
	</div>
	<%@include file="../footer.jsp"%>
</body>
</html>
