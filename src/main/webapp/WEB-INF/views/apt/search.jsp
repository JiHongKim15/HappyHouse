<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<style>
	.ablack{
		color:black;
	}
	
	
</style>
<title>조건 부 검색 페이지</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.6/umd/popper.min.js"></script>
</head>
<body>
	<%@include file="../nav.jsp"%>
	<div align="center" style="width: 98%; height: 100%; margin: 1% 1% 1% 1%;">
	<h2>검색 결과</h2>
	<table class="pinktable">
		<thead>
			<tr>
				<th>식별번호</th>
				<th>법적동명</th>
				<th>아파트 이름</th>
				<th>거래금액</th>
				<th>건축년도</th>
				<th>거래 년</th>
				<th>거래 월</th>
				<th>거래 일</th>
				<th>전용 면적</th>
				<th></th>
			</tr>
		</thead>
		<c:if test="${aptlist.size() != 0}">

			<c:forEach var="apt" items="${aptlist}">
				<tr style="cursor: pointer;"
					onClick="location.href='${root }/apt.do/detail/${apt.no}'">
					<td>${apt.no}</td>
					<td>${apt.dong}</td>
					<td>${apt.aptName}</td>
					<td>${apt.dealAmount}</td>
					<td>${apt.buildYear}</td>
					<td>${apt.dealYear}</td>
					<td>${apt.dealMonth}</td>
					<td>${apt.dealDay}</td>
					<td>${apt.area}</td>
					<td><a href="${root}/comm.do/list/${apt.dong}" class="button button--itzel">
					
					<i class="button__icon icon icon-forward"></i><span> 상업정보</span></a>
					</td>
					
				</tr>
			</c:forEach>
		</c:if>
	</table>
	<c:if test="${aptlist.size() == 0}">
		<table class="table table-active">
			<tbody>
				<tr class="table-info" align="center">
					<td>해당되는 검색결과가 없습니다.</td>
				</tr>
			</tbody>
		</table>
	</c:if>
	</div>
	<%@include file="../footer.jsp"%>
</body>
</html>