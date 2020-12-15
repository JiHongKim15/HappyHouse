<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="root" value="${ pageContext.request.contextPath }" />
<c:set var="imgsource" value="${apt.aptName}" />
<!DOCTYPE html>
<html>
<head>

<style>


select {
	width: 150px;
	height: 59px;
	padding: .8em .5em;
	margin: 1px;
	border: 1px solid #fff;
	border-bottom: 1px solid #f82a6c;
	font-family: inherit;
	background-color: #fff;
	border-radius: 0px;
	-webkit-appearance: none;
	-moz-appearance: none;
	appearance: none;
}

select::-ms-expand {
	display: none;
}


@import url(https://fonts.googleapis.com/css?family=Open+Sans);

/*Page styles*/
html { height: 100%; }

body {
  height: 100%;
  margin: 0;
  align-items: center;
}

.boxes {
  margin: auto;
  padding: 50px;
}

/*Checkboxes styles*/
input[type="checkbox"] { display: none; }

input[type="checkbox"] + label {
  display: block;
  position: relative;
  padding-left: 35px;
  font: 14px/20px 'Open Sans', Arial, sans-serif;
  color: gray;
  cursor: pointer;
  -webkit-user-select: none;
  -moz-user-select: none;
  -ms-user-select: none;
}

input[type="checkbox"] + label:last-child { margin-bottom: 0; }

input[type="checkbox"] + label:before {
  content: '';
  display: block;
  width: 20px;
  height: 20px;
  border: 1px solid #f82a6c;
  position: absolute;
  left: 0;
  top: 0;
  opacity: .6;
  -webkit-transition: all .12s, border-color .08s;
  transition: all .12s, border-color .08s;
}

input[type="checkbox"]:checked + label:before {
  width: 10px;
  top: -5px;
  left: 5px;
  border-radius: 0;
  opacity: 1;
  border-top-color: transparent;
  border-left-color: transparent;
  -webkit-transform: rotate(45deg);
  transform: rotate(45deg);
}
</style>
<script>
	function search() {

		if ($("#userid").val() == "") {
			alert("검색기능은 로그인 후 이용하실 수 있습니다.");
		} else {
			if (document.getElementById("word").value == "") {
				alert("내용을 입력하세요.");
			} else {
				document.getElementById("searchform").action = "${root}/apt.do/search";
				document.getElementById("searchform").submit();
			}
		}
	}
</script>
</head>
<body>


	<%@include file="nav.jsp"%>
	<!-- Search form -->


	<div align="center" class="back" style="width: 100%; height: 200px;">
		<form id="searchform" method="post" action="">
			<div class="boxes" style="width: 100%;" align = "center">
			
			<table>
			<tr>
			<td style="width: 200px; word-break:break-all;table-layout:fixed;">
				<input class = "custom-style" type="checkbox" id="box-1" checked="checked" name="type"
					value="1"> <label for="box-1" style="margin: 1%"> <span>아파트매매</span>
				</label> 
				</td>
				<td style="width: 200px; word-break:break-all;table-layout:fixed;">
				<input  class = "custom-style" type="checkbox" id="box-2" name="type" value="2"> 
				<label
					for="box-2" style="margin: 1%"> <span>아파트 전월세</span>
				</label>
				</td>
				<td style="width: 200px; word-break:break-all;table-layout:fixed;">
				 <input  class = "custom-style" type="checkbox" id="box-3" name="type" value="3"> 
				 <label for="box-3" class = "custom-style" style="margin: 1%"> <span>다세대, 주택 매매</span>
				</label>
				</td>
				<td style="width: 200px; word-break:break-all;table-layout:fixed;">
				 <input class = "custom-style" type="checkbox" id="box-4" name="type" value="4"> 
				<label	for="box-4" style="margin: 1%"> <span>다세대, 주택전월세</span>
				</label>
				</td>
				</tr>
			</table>

			</div>


			<div class="input-group mb-3" align="center"
				style="margin: 0 0 0 15%">
				<div class="select-form">
					<div class="select-itms">
						<select name="key" id="key">
							<option value="" disabled>Option</option>
							<option value="dong">동</option>
							<option value="name">아파트</option>
						</select>
					</div>
				</div>


				<div style="width: 50%">
					<input class="myinput" type="text" placeholder="Search"
						aria-label="Search" id="word" name="word" style="width: 100%; height:59px;">

				</div>

				<div style="width: 15%">
					<button
						class="button rounded-0 primary-bg text-white w-100 btn_1 boxed-btn"
						type="submit" onclick="javascript:search();"
						style="width: 500px; margin-left: 3px; margin-top: 1px">
						<i style="display: inline;" class="fas fa-search"
							aria-hidden="true"></i>Search
					</button>
				</div>
			</div>
			</form>
	</div>

	<!--  table start -->
	<div id="aptlist" style="width: 98%; margin: 1%" align="center">
		<h2 class="h2mid">아파트 실거래 정보</h2>
		<input type="hidden" name="userid" id="userid" value="${userinfo}">
		<table class="pinktable">
			<thead>
				<tr class="table-info">
					<td>식별번호</td>
					<td>법적동명</td>
					<td>아파트 이름</td>
					<td>거래금액</td>
					<td>건축년도</td>
					<td>거래 년</td>
					<td>거래 월</td>
					<td>거래 일</td>
					<td>전용 면적</td>
				</tr>
			</thead>
			<c:if test="${aptlist != null}">
				<c:forEach var="apt" items="${aptlist}">
					<tr>
						<td>${apt.no}</td>
						<td>${apt.dong}</td>
						<td>${apt.aptName}</td>
						<td>${apt.dealAmount}</td>
						<td>${apt.buildYear}</td>
						<td>${apt.dealYear}</td>
						<td>${apt.dealMonth}</td>
						<td>${apt.dealDay}</td>
						<td>${apt.area}</td>
					</tr>
				</c:forEach>
			</c:if>

			</tbody>
		</table>

	</div>
	<%@include file="footer.jsp"%>

</body>
</html>