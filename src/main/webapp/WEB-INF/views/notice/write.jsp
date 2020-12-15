<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="root" value="${pageContext.request.contextPath}" />
<c:if test="${userinfo == null}">
	<c:redirect url="/main.do" />
</c:if>
<c:if test="${userinfo != null}">
	<!DOCTYPE html>
	<html lang="ko">
<head>
<title>공지사항 작성</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.6/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.2.1/js/bootstrap.min.js"></script>
<script type="text/javascript">
	function writeNotice() {
		if (document.getElementById("subject").value == "") {
			alert("제목을 입력하세요!");
			return;
		} else if (document.getElementById("content").value == "") {
			alert("내용을 입력하세요!");
			return;
		} else {
			document.getElementById("writeform").action = "${root}/notice.do/";
			document.getElementById("writeform").submit();
			alert("글 작성이 완료되었습니다.");
		}
	}
</script>
 
<style>
.button-wrapper {
	display: inline-block;
	margin: 20px 5px;
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
	margin: 10px;
	width: 130px;
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
	background: #fff;
	color: black;
	overflow: hidden;
	-webkit-transition: background-color 0.3s;
	transition: background-color 0.3s;
}

.mybutton.button--inverted {
	background: #fff;
	color: #7986cb;
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
	-webkit-transition: -webkit-transform 0.3s, opacity 0.3s;
	transition: transform 0.3s, opacity 0.3s;
	-webkit-transition-timing-function: cubic-bezier(0.75, 0, 0.125, 1);
	transition-timing-function: cubic-bezier(0.75, 0, 0.125, 1);
}

.mybutton:hover {
	color: #fff;
	background-color: #f82a6c;
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
	<div class="container" align="center">

		<div class="col-lg-6" align="center">
			<h2>공지사항 작성</h2>
			<form id="writeform" method="post" action="">
				<input type="hidden" name="act" id="act" value="write"> <input
					type="hidden" name="userid" id="userid" value="admin">
				<div class="form-group" align="left">
					<label for="subject">제목  </label> <input type="text"
						class="myinput" style="width: 100%;" id="subject" name="subject">
				</div>
				<div class="form-group" align="left">
					<label for="content">내용 </label>
					<textarea style="width: 100%;" class="mytext" rows="15"
						id="content" name="content"></textarea>
				</div>
				<table>
					<tr>
						<td>
							<div class="light-button button-wrapper" style="display: inline;">
								<div class="button" id="interest_add"
									onclick="javascript:writeNotice();">
									<span> 글 작성 </span>
								</div>
							</div>
						</td>
						<td>

							<button type="reset" class="btn btn-light" style="width: 100px; margin-bottom: 14px; margin-left:10px; height:57px; text-align:left; padding-right:85px;">초기화         </button>
	
						</td>

					</tr>
				</table>


			</form>
		</div>
	</div>
	<%@include file="../footer.jsp"%>

</body>
	</html>
</c:if>