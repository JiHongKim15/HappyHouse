<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="root" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html lang="ko">
<head>
<title>비밀번호 찾기</title>
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
	function searchPw() {
		
	}
</script>


<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script>

$(document).ready(function(){
	$('#bt_search').click(function(){ 
	if (document.getElementById("userid").value == "") {
		alert("아이디를 입력하세요.");
		return;
	} 
    	$.ajax({
			type:'POST',
			url:'${pageContext.request.contextPath}/member.do/memsearch',
			data: { //JSON.stringify({
				  userid: $('#userid').val(),
			     },
			success: function(data){
				alert("비밀번호는 " + data + "입니다");
			}
			
		});
    });//입력요청
});
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
	width: 180px;
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
<%@include file="../nav.jsp" %>
	<div class="container" align="center">
		<div class="col-lg-6" align="center">
			<form id="searchform" method="post" action="">
				<input type="hidden" name="act" id="act" value="login">
				<div class="form-group" align="left">
					<label for="">아이디</label> 
					<input type="text" class="myinput" style="width:100%;"  id="userid" name="userid" value="" placeholder="">
				</div>

				<div class="form-group" align="center">
						<div class="light-button button-wrapper"
										style="display: inline;">
										<div class="button" id="bt_search"
											>
											<span> 비밀번호 찾기 </span>
										</div>
									</div>
					

				</div>
			</form>
		</div>
	</div>
<%@include file="../footer.jsp"%>