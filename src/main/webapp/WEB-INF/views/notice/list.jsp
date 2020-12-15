<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="root" value="${pageContext.request.contextPath}" />
<c:if test="${userinfo == null}">
	<c:redirect url="/" />
</c:if>
<c:if test="${userinfo != null}">
	<!DOCTYPE html>
	<html lang="ko">
<head>
<title>공지사항 목록</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.6/umd/popper.min.js"></script>
<script type="text/javascript">
	function mvwrite() {
		location.href = "${root}/notice.do/mvwrite";
	}
</script>
<style>
.button-wrapper {
	display: inline-block;
	padding: 40px;
}

.dark-button, .dark-button-2 {
	background: #333;
}

.button {
	background: #fff;
	border: none;
	padding: 2px;
	cursor: pointer;
	display: block;
	position: relative;
	overflow: hidden;
	transition: all .35s ease-in-out .35s;
	margin: 0;
	width: 150px;
	text-align: center;
}

.dark-button .button, .dark-button .button span {
	background: #f82a6c;
	color: #fff;
}

.dark-button .button:after, .dark-button .button:before, .dark-button .button:hover span
	{
	background: #fff;
	color: #444;
}

.dark-button-2 .button, .dark-button-2 .button span {
	background: #333;
	color: #fff;
}

.dark-button-2 .button:after, .dark-button-2 .button:before,
	.dark-button-2 .button:hover span {
	background: #fff;
	color: #444;
}

span {
	display: block;
	padding: 15px 30px;
	background: #fff;
	z-index: 100;
	position: relative;
	transition: all .35s ease-in-out .35s;
}

.button:hover span {
	background: #f82a6c;
	color: #fff;
	transition: all .35s ease-in-out .35s;
}

.button:after {
	bottom: -100%;
	right: -100%;
	content: "";
	width: 100%;
	height: 100%;
	position: absolute;
	background: #f82a6c;
	transition: all .35s ease-in-out .5s;
}

.button:hover:after {
	right: 0;
	bottom: 0;
	transition: all ease-in-out .35s;
}

.button:before {
	top: -100%;
	left: -100%;
	content: "";
	width: 100%;
	height: 100%;
	position: absolute;
	background: #f82a6c;
	transition: all .35s ease-in-out .5s;
}

.button:hover:before {
	left: 0;
	top: 0;
	transition: all ease-in-out .35s;
}

.mybutton {
	padding: 0 2em;
	border: none;
	color: gray;
	overflow: hidden;
	background-color:inherit;
}

.mybutton.button--inverted {
}

.mybutton>span {
	display: inline-block;
	padding: 1em 0;
	opacity: 0;
	color: #fff;
	-webkit-transform: translate3d(0, -10px, 0);
	transform: translate3d(0, -10px, 0);
	-webkit-transition: -webkit-transform 0.3s, opacity 0.3s;
	transition: transform 0.3s, opacity 0.3s;
	-webkit-transition-timing-function: cubic-bezier(0.75, 0, 0.125, 1);
	transition-timing-function: cubic-bezier(0.75, 0, 0.125, 1);
}

.mybutton::before {
	content: attr(data-text);
	position: absolute;
	top: 0;
	left: 0;
	width: 150px;
	height: 100%;
	padding: 1em 0;
	background-color:inherit;
	-webkit-transition: -webkit-transform 0.3s, opacity 0.3s;
	transition: transform 0.3s, opacity 0.3s;
	-webkit-transition-timing-function: cubic-bezier(0.75, 0, 0.125, 1);
	transition-timing-function: cubic-bezier(0.75, 0, 0.125, 1);
}

.mybutton:hover {
	color: #f82a6c;
	background-color:inherit;
}

.mybutton:hover::before {
	opacity: 0;
	-webkit-transform: translate3d(0, 100%, 0);
	transform: translate3d(0, 100%, 0);
}

.mybutton:hover>span {
	opacity: 1;
	-webkit-transform: translate3d(0, 0, 0);
	transform: translate3d(0, 0, 0);
}

.mybutton:hover>span:nth-child(1) {
	-webkit-transition-delay: 0.045s;
	transition-delay: 0.045s;
}

.mybutton:hover>span:nth-child(2) {
	-webkit-transition-delay: 0.09s;
	transition-delay: 0.09s;
}

.mybutton:hover>span:nth-child(3) {
	-webkit-transition-delay: 0.135s;
	transition-delay: 0.135s;
}

.mybutton:hover>span:nth-child(4) {
	-webkit-transition-delay: 0.18s;
	transition-delay: 0.18s;
}

.mybutton:hover>span:nth-child(5) {
	-webkit-transition-delay: 0.225s;
	transition-delay: 0.225s;
}

.mybutton:hover>span:nth-child(6) {
	-webkit-transition-delay: 0.27s;
	transition-delay: 0.27s;
}

.mybutton:hover>span:nth-child(7) {
	-webkit-transition-delay: 0.315s;
	transition-delay: 0.315s;
}

.mybutton:hover>span:nth-child(8) {
	-webkit-transition-delay: 0.36s;
	transition-delay: 0.36s;
}

.mybutton:hover>span:nth-child(9) {
	-webkit-transition-delay: 0.405s;
	transition-delay: 0.405s;
}

.mybutton:hover>span:nth-child(10) {
	-webkit-transition-delay: 0.45s;
	transition-delay: 0.45s;
}
</style>
</head>
<body>
	<%@include file="../nav.jsp"%>
	<div align="center">
		<div align="center">
			<h1>공지사항</h1>
			<p>공지사항을 확인하시고 이용에 참고해주세요.</p>

			<table>
				<c:if test="${userinfo == 'admin'}">
					<tr>

						<td align="right">
							<div class="light-button button-wrapper">
								<div class="button" id="interest_add"
									onclick="javascript:mvwrite();">
									<span>WRITE</span>
								</div>
							</div>
						</td>
					</tr>
				</c:if>
			</table>
		</div>
	</div>

	<div align="center"
		style="width: 98%; height: 100%; margin: 1% 1% 1% 1%;">
		<c:if test="${notices.size() != 0}">
			<table class="pinktable">
				<thead>
					<tr>
						<th>번호</th>
						<th>제목</th>
						<th>작성자</th>
						<th>작성시간</th>
						<th>조회수</th>
						<th></th>
					</tr>
				</thead>
				<c:forEach var="notice" items="${notices}">
					<tbody>
						<tr>
							<td>${notice.no }</td>
							<td>${notice.subject }</td>
							<td>${notice.userid }</td>
							<td>${notice.regtime }</td>
							<td>${notice.rate }</td>
							<td>
								<form action="${root }/notice.do/detail" method="GET">
									<input type="hidden" name="no" id="no" value="${notice.no }">
									
									<button type="submit" class="mybutton">
										<i class="button__icon icon icon-forward"></i>내용 확인
									</button>
								</form>
							</td>
						</tr>
					</tbody>
				</c:forEach>
			</table>
		</c:if>
		<c:if test="${notices.size() == 0}">
			<table class="pinktable">
				<thead>
					<tr class="table-info" align="center">
						<td>등록된 공지사항이 없습니다.</td>
					</tr>
				</thead>
			</table>
		</c:if>
	</div>

	<%@include file="../footer.jsp"%>
</body>
	</html>
</c:if>