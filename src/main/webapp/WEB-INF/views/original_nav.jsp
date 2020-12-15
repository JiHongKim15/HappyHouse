<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@include file="css/style_table.jsp"%>
<c:set var="root" value="${ pageContext.request.contextPath }" />
<!DOCTYPE html>
<html lang="ko">
<head>ㅇ
<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
		<meta http-equiv="x-ua-compatible" content="ie=edge">
        <meta name="description" content="">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="manifest" href="site.webmanifest">
		<link rel="shortcut icon" type="image/x-icon" href="assets/img/favicon.ico">

		<!-- CSS here -->
            <link rel="stylesheet" href="../assets/css/bootstrap.min.css">
            <link rel="stylesheet" href="../assets/css/owl.carousel.min.css">
            <link rel="stylesheet" href="../assets/css/flaticon.css">
            <link rel="stylesheet" href="../assets/css/price_rangs.css">
            <link rel="stylesheet" href="../assets/css/slicknav.css">
            <link rel="stylesheet" href="../assets/css/animate.min.css">
            <link rel="stylesheet" href="../assets/css/magnific-popup.css">
            <link rel="stylesheet" href="../assets/css/fontawesome-all.min.css">
            <link rel="stylesheet" href="../assets/css/themify-icons.css">
            <link rel="stylesheet" href="../assets/css/slick.css">
            <link rel="stylesheet" href="../assets/css/nice-select.css">
            <link rel="stylesheet" href="../assets/css/style.css">
</head>
<body>
	

<div id="top">
	<nav id="topMenu">
		<ul class="nav">
			<li class="nav-item"><a class="nav-link"
				href="<c:url value='/' />">HOME</a></li>


			<li class="nav-item"><a class="nav-link"
				href="<c:url value='/mainlist' />">SEARCH</a></li>


			<li><a href="#">BOARD</a>
				<ul>
					<li class="nav-item"><a class="nav-link"
						href="<c:url value='/notice.do/mvlist' />">NOTICE</a></li>
					<li class="nav-item"><a class="nav-link"
						href="http://localhost:9999/happyhouse/index.html">Q&A</a></li>
					<li class="nav-item"><a class="nav-link"
						href="<c:url value='/member.do/initintro' />">INTRODUCE</a></li>
				</ul></li>

			<li><a href="#">MYPAGE</a>
				<ul>
					<c:if test="${userinfo == null}">
						<li class="nav-item"><a class="nav-link"
							href="<c:url value='/member.do/initlog' />">로그인</a></li>
						<li class="nav-item"><a class="nav-link"
							href="<c:url value='/member.do/initinsert' />">회원가입</a></li>
					</c:if>

					<c:if test="${userinfo != null}">
						<li class="nav-item"><a class="nav-link"
							href="<c:url value='/member.do/memlogout' />">LOGOUT</a></li>
						<li class="nav-item"><a class="nav-link"
							href="<c:url value='/interest.do/search' />">WISH</a></li>
						<li class="nav-item"><a class="nav-link"
							href="<c:url value='/member.do/initup'/>">EDIT</a></li>
					</c:if>
				</ul></li>

		</ul>
	</nav>
</div>
	
</body>
