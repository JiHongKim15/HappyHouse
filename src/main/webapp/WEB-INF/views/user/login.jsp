<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="root" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html lang="ko">
<head>
<title>로그인</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css">
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.6/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.2.1/js/bootstrap.min.js"></script> -->
<!--===============================================================================================-->
	<!-- <link rel="icon" type="image/png" href="../img/icons/favicon.ico"/> -->
	<link rel="stylesheet" type="text/css" href="../vendor/bootstrap/css/bootstrap.min.css">
	<link rel="stylesheet" type="text/css" href="../fonts/font-awesome-4.7.0/css/font-awesome.min.css">
	<link rel="stylesheet" type="text/css" href="../fonts/Linearicons-Free-v1.0.0/icon-font.min.css">
	<link rel="stylesheet" type="text/css" href="../vendor/animate/animate.css">
	<link rel="stylesheet" type="text/css" href="../vendor/css-hamburgers/hamburgers.min.css">
	<link rel="stylesheet" type="text/css" href="../vendor/animsition/css/animsition.min.css">
	<link rel="stylesheet" type="text/css" href="../vendor/select2/select2.min.css">
	<link rel="stylesheet" type="text/css" href="../vendor/daterangepicker/daterangepicker.css">
	<link rel="stylesheet" type="text/css" href="../css/util.css">
	<link rel="stylesheet" type="text/css" href="../css/main.css">
	
<c:if test="${cookie.ssafy_id.value ne null}">
	<c:set var="saveid" value="${cookie.ssafy_id.value}" />
	<c:set var="idck" value=" checked=\"checked\"" />
</c:if>

<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script>

$(document).ready(function(){
	$('#bt_login').click(function(){  
		if (document.getElementById("userid").value == ""){
			alert("아이디를 입력하세요.");
		return;
	} else if (document.getElementById("userpwd").value == "") {
		alert("비밀번호를 입력하세요.");
		return;
	}
    	$.ajax({
			type:"POST",
			url:'${pageContext.request.contextPath}/member.do/memlogin',
			data: { //JSON.stringify({
				  userid: $('#userid').val(),
				  userpwd: $("#userpwd").val(),
				  idsave: $("#idsave").val(),
			     },
			success: function(data){
				window.location.href ="${pageContext.request.contextPath}/";
			}
		});
    });//입력요청
});
</script>
<script type="text/javascript">
	

	function moveJoin() {
		document.location.href = "${root}/member.do/initinsert";
	}
	
	function searchPw() {
		document.location.href = "${root}/member.do/mvfindpw";
	}
</script>
</head>
<body>
	<%@include file="../nav.jsp" %>
	
	<div class="limiter">
		<div class="container-login100" style="background-image: url('../img/login_bg.jpg');">
			<div class="wrap-login100 p-t-30 p-b-50">
				<span class="login100-form-title p-b-41">
					LOGIN
				</span>
				<form class="login100-form validate-form p-b-33 p-t-5" id="loginform">
				
		
				
					<input type="hidden" name="act" id="act" value="login">
					<input type="hidden" name="act" id="act2" value="list">

					<div class="wrap-input100 validate-input" data-validate = "Enter username">
						<input class="input100" type="text" id="userid" name="userid" placeholder="User name" value="${saveid}">
						<span class="focus-input100" data-placeholder="&#xe82a;"></span>
					</div>

					<div class="wrap-input100 validate-input" data-validate="Enter password">
						<input class="input100" type="password" id="userpwd" name="userpwd" placeholder="Password" onkeydown="javascript:if(event.keyCode == 13) {login();}">
						<span class="focus-input100" data-placeholder="&#xe80f;"></span>
					</div>

					<div style="margin: 20px;"class="form-group form-check" align="right">
					<label class="form-check-label"> 
					<input class="form-check-input" type="checkbox" id="idsave" name="idsave" value="saveok" ${idck}> 아이디저장
					</label>
				</div>
					
					<div class="container-login100-form-btn m-t-32">
						<button class="login100-form-btn" id="bt_login" onclick="javascript:login();">로그인</button>
						<br>
						
					</div>
				</form>
					<div align = "center">
						<button style="color: #fff; margin: 3px;" onclick="javascript:moveJoin();">회원가입</button>
						<button style="color: #fff; margin: 3px;" onclick="javascript:searchPw();">비밀번호 찾기</button>
						
					</div>
			</div>
		</div>
	</div>
	<%@include file="../footer.jsp"%>
	
	<div id="dropDownSelect1"></div>
	<script src="../vendor/jquery/jquery-3.2.1.min.js"></script>
	<script src="../vendor/animsition/js/animsition.min.js"></script>
	<script src="../vendor/bootstrap/js/popper.js"></script>
	<script src="../vendor/bootstrap/js/bootstrap.min.js"></script>
	<script src="../vendor/select2/select2.min.js"></script>
	<script src="../vendor/daterangepicker/moment.min.js"></script>
	<script src="../vendor/daterangepicker/daterangepicker.js"></script>
	<script src="../vendor/countdowntime/countdowntime.js"></script>
	<script src="../js/main.js"></script>
	
	
	
	
	
	
	
	
	