<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="root" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html lang="ko">
<head>
<title>회원 수정</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.6/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.2.1/js/bootstrap.min.js"></script>
<!--===============================================================================================-->
<link rel="icon" type="image/png" href="../img/icons/favicon.ico" />
<link rel="stylesheet" type="text/css" 	href="../vendor/bootstrap/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" 	href="../fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" type="text/css"	href="../fonts/Linearicons-Free-v1.0.0/icon-font.min.css">
<link rel="stylesheet" type="text/css"	href="../fonts/iconic/css/material-design-iconic-font.min.css">
<link rel="stylesheet" type="text/css"	href="../vendor/animate/animate.css">
<link rel="stylesheet" type="text/css"	href="../vendor/css-hamburgers/hamburgers.min.css">
<link rel="stylesheet" type="text/css"	href="../vendor/animsition/css/animsition.min.css">
<link rel="stylesheet" type="text/css"	href="../vendor/select2/select2.min.css">
<link rel="stylesheet" type="text/css"	href="../vendor/daterangepicker/daterangepicker.css">
<link rel="stylesheet" type="text/css" href="../css/util.css">
<link rel="stylesheet" type="text/css" href="../css/main_join.css">
<!--===============================================================================================-->
 
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
	width: 120px;
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

.sspan {
	display: block;
	padding: 15px 30px;
	background: #fff;
	z-index: 100;
	position: relative;
	transition: all .35s ease-in-out .35s;
}

.button:hover .sspan {
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

.mybutton>.sspan {
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
	width: 200px;
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

.mybutton:hover>.sspan {
	opacity: 1;
	-webkit-transform: translate3d(0, 0, 0);
	transform: translate3d(0, 0, 0);
}

.mybutton:hover>.sspan:nth-child(1) {
	-webkit-transition-delay: 0.045s;
	transition-delay: 0.045s;
}

.mybutton:hover>.sspan:nth-child(2) {
	-webkit-transition-delay: 0.09s;
	transition-delay: 0.09s;
}

.mybutton:hover>.sspan:nth-child(3) {
	-webkit-transition-delay: 0.135s;
	transition-delay: 0.135s;
}

.mybutton:hover>.sspan:nth-child(4) {
	-webkit-transition-delay: 0.18s;
	transition-delay: 0.18s;
}

.mybutton:hover>.sspan:nth-child(5) {
	-webkit-transition-delay: 0.225s;
	transition-delay: 0.225s;
}

.mybutton:hover>.sspan:nth-child(6) {
	-webkit-transition-delay: 0.27s;
	transition-delay: 0.27s;
}

.mybutton:hover>.sspan:nth-child(7) {
	-webkit-transition-delay: 0.315s;
	transition-delay: 0.315s;
}

.mybutton:hover>.sspan:nth-child(8) {
	-webkit-transition-delay: 0.36s;
	transition-delay: 0.36s;
}

.mybutton:hover>.sspan:nth-child(9) {
	-webkit-transition-delay: 0.405s;
	transition-delay: 0.405s;
}

.mybutton:hover>.sspan:nth-child(10) {
	-webkit-transition-delay: 0.45s;
	transition-delay: 0.45s;
}
</style>
<style>
select {
width: 120px;
height: 55px;
padding: .8em .5em;
border: 1px solid #fff;
border-bottom: 1px solid #f82a6c;
font-family: inherit;
background-color: #fff;
border-radius: 0px;
margin: 10px;
}
</style>

<script type="text/javascript">
$(document).ready(function() {
	$("#bt_up").click(function() {
		var em = $('#email').val() + "@" + $('#emaildomain').val();
		$.ajax({
			type:'POST',
			url:'${pageContext.request.contextPath}/member.do/memupdate',
			data: { //JSON.stringify({
				 userid: $('#userid').val(),
				  username: $('#username').val(),
				  userpwd: $("#userpwd").val(),
				  email: em,
				  address: $('#address').val(),
				  sido: $('#sido').val(),
				  gugun: $('#gugun').val(),
				  dong: $('#dong').val()
			     },
			     success : function(data){
						alert("수정이 완료되었습니다.");
						window.location.href ="${pageContext.request.contextPath}/";
				}
		});
	});
});

$(document).ready(function() {
	$("#bt_del").click(function() {
		$.ajax({
			type:'POST',
			url:'${pageContext.request.contextPath}/member.do/memdel',
			data: { //JSON.stringify({
				  userid: $('#userid').val(),
			     }
		});
	});
	 
	$('#zipcode').focusin(function() {
		$('#zipModal').modal();
	});
});
	

$(document).ready(function () {
    $.get("${pageContext.request.contextPath}/map.do/sido"
        , {command: "sido"}
        , function (data, status) {
            $.each(data, function (index, vo) {
                $("#sido").append("<option value='" + vo.sido_code + "'>" + vo.sido_name + "</option>");
            });//each
        }//function
        , "json"
    );//get
});//ready
$(document).ready(function () {
    $("#sido").change(function () {
        $.get("${pageContext.request.contextPath}/map.do/gugun"
            , {command: "gugun", sido: $("#sido").val()}
            , function (data, status) {
                $("#gugun").empty();
                $("#gugun").append('<option value="0">선택</option>');
                $.each(data, function (index, vo) {
                    $("#gugun").append("<option value='" + vo.gugun_code + "'>" + vo.gugun_name + "</option>");
                });//each
            }//function
            , "json"
        );//get
    });//change
    $("#gugun").change(function () {
        $.get("${pageContext.request.contextPath}/map.do/dong"
            , {command: "dong", gugun: $("#gugun").val()}
            , function (data, status) {
                $("#dong").empty();
                $("#dong").append('<option value="0">선택</option>');
                $.each(data, function (index, vo) {
                    $("#dong").append("<option value='" + vo.dong + "'>" + vo.dong + "</option>");
                });//each
            }//function
            , "json"
        );//get
    });//change
});
</script>
</head>
<body>
	<%@include file="../nav.jsp"%>
	<div class="container-login100">
		<div class="login100-more" style="background-image: url('../img/update.jpg');"></div>

		<div class="wrap-login100 p-l-50 p-r-50 p-t-72 p-b-50">
			<span class="login100-form-title p-b-59">회원 수정</span>

			<!-- 			<form class="login100-form validate-form" id="memberform" method="post" action=""> -->
			<form id="memberform" method="post" action="">
				<input type="hidden" name="act" id="act" value="">
				<div class="wrap-input100 validate-input"
					data-validate="Name is required">
					<span class="label-input100">이름</span> <input class="input100"
						type="text" id="username" name="username" value="${userinfo}"
						placeholder=""> <span class="focus-input100"></span>
				</div>

				<div class="wrap-input100 validate-input"
					data-validate="Username is required">
					<span class="label-input100">ID</span> <input class="input100"
						type="text" id="userid" name="userid" value="${userinfo}"
						placeholder="" readonly> <span class="focus-input100"></span>
				</div>

				<div class="wrap-input100 validate-input"
					data-validate="Password is required">
					<span class="label-input100">Password</span> <input
						class="input100" type="password" id="userpwd" name="userpwd"
						name="userpwd" value="${userinfo}" placeholder=""> <span
						class="focus-input100"></span>
				</div>

				<div class="wrap-input100 validate-input"
					data-validate="Repeat Password is required">
					<span class="label-input100">Repeat Password</span> <input
						class="input100" type="password" id="pwdcheck" name="pwdcheck"
						placeholder="*************"> <span class="focus-input100"></span>
				</div>

				<div class="wrap-input100 validate-input"
					data-validate="Valid email is required: kimssafy@ssafy.com">
					<span class="label-input100">Email</span> <input class="input100"
						type="text" id="email" name="email"
						placeholder="kimssafy@ssafy.com"> <span
						class="focus-input100"></span>
				</div>
				<div class="wrap-input100 validate-input"
					data-validate="Address is required">
					<span class="label-input100">주소</span> <input class="input100"
						type="text" id="address" name="address" value="${userinfo}"
						placeholder=""> <span class="focus-input100"></span>
				</div>


				<div class="interest" align="left">
					<span class="label-input100">관심지역설정</span>

					<div class="form-select" id="default-select" align="center"
						style="width: 100%">

						<table>
							<tr>
								<td><select id="sido">
										<option value="0">선택</option>
								</select></td>
								<td><select id="gugun">
										<option value="0">선택</option>
								</select></td>
								<td><select id="dong">
										<option value="0">선택</option>
								</select></td>
							</tr>
						</table>
					</div>


				</div>
				<div class="flex-m w-full p-b-33">
					<div class="contact100-form-checkbox">
						<span class="txt1"> </span>
					</div>
				</div>

				<table>
					<tr>
						<td>
							<div class="light-button button-wrapper" style="display: inline;">
								<div class="button" id="bt_up">
									<span class="sspan"> 수정 </span>
								</div>
							</div>


						</td>
						<td>
							<div class="light-button button-wrapper"
								style="display: inline; width: 200px; margin: 10px">
								<div class="button" id="bt_del">
									<span class="sspan"> 탈퇴 </span>
								</div>
							</div>
						</td>
						<td>
							<button type="reset" class="btn btn-warning" style="width: 100px; margin-bottom: 14px; margin-left:10px; height:57px; text-align:left; padding-right:85px;">초기화         </button>
					</tr>
				</table>
			</form>
		</div>
	</div>
	<%@include file="../footer.jsp"%>

	<script src="../vendor/jquery/jquery-3.2.1.min.js"></script>
	<script src="../vendor/animsition/js/animsition.min.js"></script>
	<script src="../vendor/bootstrap/js/popper.js"></script>
	<script src="../vendor/bootstrap/js/bootstrap.min.js"></script>
	<script src="../vendor/select2/select2.min.js"></script>
	<script src="../vendor/daterangepicker/moment.min.js"></script>
	<script src="../vendor/daterangepicker/daterangepicker.js"></script>
	<script src="../vendor/countdowntime/countdowntime.js"></script>
	<script src="../js/main_join.js"></script>
</body>
</html>