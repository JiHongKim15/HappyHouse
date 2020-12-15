<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@include file="css/style_table.jsp" %>
<c:set var="root" value="${ pageContext.request.contextPath }"/>

<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
		<meta http-equiv="x-ua-compatible" content="ie=edge">
        <meta name="description" content="">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="manifest" href="site.webmanifest">

		<!-- CSS here -->
            <link rel="stylesheet" href="${root}/assets/css/bootstrap.min.css">
            <link rel="stylesheet" href="${root}/assets/css/owl.carousel.min.css">
            <link rel="stylesheet" href="${root}/assets/css/flaticon.css">
            <link rel="stylesheet" href="${root}/assets/css/price_rangs.css">
            <link rel="stylesheet" href="${root}/assets/css/slicknav.css">
            <link rel="stylesheet" href="${root}/assets/css/animate.min.css">
            <link rel="stylesheet" href="${root}/assets/css/magnific-popup.css">
            <link rel="stylesheet" href="${root}/assets/css/fontawesome-all.min.css">
            <link rel="stylesheet" href="${root}/assets/css/themify-icons.css">
            <link rel="stylesheet" href="${root}/assets/css/slick.css">
            <link rel="stylesheet" href="${root}/assets/css/nice-select.css">
            <link rel="stylesheet" href="${root}/assets/css/style.css">

</head>
<body>
	 <header style="margin:10px">
       <div class="header-area header-transparrent">
           <div class="headder-top header-sticky">
                <div class="container">
                    <div class="row align-items-center">
                        <div class="col-lg-3 col-md-2">
                            <!-- Logo -->
                            <div class="logo">
                                <a href="${root}"><img src="${root}/assets/img/logo/logo.png" alt="" width="150px"></a>
                            </div>  
                        </div>
                        <div class="col-lg-9 col-md-9">
                        
                        <c:if test="${userinfo == null}">
                        <div class="menu-wrapper">
                                <!-- Main-menu -->
                                <div class="main-menu">
                                    <nav class="d-none d-lg-block">
                                        <ul id="navigation">
                                            <li><a href="${root}">HOME</a></li>
                                            <li><a href="${root}/member.do/initintro">ABOUT</a></li>
                                            <li><a href="${root}/mainlist">SEARCH</a></li>
                                            <li><a href="#">BOARD</a>
                                                <ul class="submenu">
                                                    <li><a href="<c:url value='/notice.do/mvlist' />">NOTICE</a></li>
                                                    <li><a href="http://localhost:9999/happyhouse/index.html">Q&A</a></li>
                                                </ul>
                                            </li>
                                        </ul>
                                    </nav>
                                </div>          
                                <!-- Header-btn -->
                                <div class="header-btn d-none f-right d-lg-block">
                                    <a href="${root}/member.do/initinsert" class="btn head-btn1">REGISTER</a>
                                    <a href="${root}/member.do/initlog" class="btn head-btn2">LOGIN</a>
                                </div>
                            </div>
						</c:if>
                        
                        
						<c:if test="${userinfo != null}">
						
						<div class="menu-wrapper">
                                <!-- Main-menu -->
                                <div class="main-menu">
                                    <nav class="d-none d-lg-block">
                                        <ul id="navigation">
                                            <li><a href="${root}">HOME</a></li>
                                            <li><a href="${root}/member.do/initintro">ABOUT</a></li>
                                            <li><a href="${root}/mainlist">SEARCH</a></li>
                                            <li><a href="#">BOARD</a>
                                                <ul class="submenu">
                                                    <li><a href="${root}/notice.do/mvlist">NOTICE</a></li>
                                                    <li><a href="http://localhost:9999/happyhouse/index.html">Q&A</a></li>
                                                </ul>
                                            </li>
                                            <li><a href="http://localhost:9999/happyhouse/chart.html">CHART</a></li>
                                        </ul>
                                    </nav>
                                </div>          
                                <!-- Header-btn -->
                                <div class="header-btn d-none f-right d-lg-block">
                               		 <p class="nav-item"><strong>${userinfo}</strong>님 환영합니다.</p> 
                               		
                                	<a href="${root}/interest.do/search"><img src="${root}/assets/img/use/heart2.png" alt="" height="60px"></a>
                                    <a href="${root}/member.do/initup" class="btn head-btn1">EDIT</a>
                                    <a href="${root}/member.do/memlogout" class="btn head-btn2">LOGOUT</a>
                                </div>
                            </div>
                            
                            
						</c:if>	
                        </div>
                        <!-- Mobile Menu -->
                        <div class="col-12">
                            <div class="mobile_menu d-block d-lg-none"></div>
                        </div>
                    </div>
                </div>
           </div>
       </div>
    </header>
    <!-- JS here -->
	
		<!-- All JS Custom Plugins Link Here here -->
        <script src="${root}/assets/js/vendor/modernizr-3.5.0.min.js"></script>
		<!-- Jquery, Popper, Bootstrap -->
		<script src="${root}/assets/js/vendor/jquery-1.12.4.min.js"></script>
        <script src="${root}/assets/js/popper.min.js"></script>
        <script src="${root}/assets/js/bootstrap.min.js"></script>
	    <!-- Jquery Mobile Menu -->
        <script src="${root}/assets/js/jquery.slicknav.min.js"></script>

		<!-- Jquery Slick , Owl-Carousel Plugins -->
        <script src="${root}/assets/js/owl.carousel.min.js"></script>
        <script src="${root}/assets/js/slick.min.js"></script>
        <script src="${root}/assets/js/price_rangs.js"></script>
        
		<!-- One Page, Animated-HeadLin -->
        <script src="${root}/assets/js/wow.min.js"></script>
		<script src="${root}/assets/js/animated.headline.js"></script>
        <script src="${root}/assets/js/jquery.magnific-popup.js"></script>

		<!-- Scrollup, nice-select, sticky -->
        <script src="${root}/assets/js/jquery.scrollUp.min.js"></script>
        <script src="${root}/assets/js/jquery.nice-select.min.js"></script>
		<script src="${root}/assets/js/jquery.sticky.js"></script>
        
        <!-- contact js -->
        <script src="${root}/assets/js/contact.js"></script>
        <script src="${root}/assets/js/jquery.form.js"></script>
        <script src="${root}/assets/js/jquery.validate.min.js"></script>
        <script src="${root}/assets/js/mail-script.js"></script>
        <script src="${root}/assets/js/jquery.ajaxchimp.min.js"></script>
        
		<!-- Jquery Plugins, main Jquery -->	
        <script src="${root}/assets/js/plugins.js"></script>
        <script src="${root}/assets/js/main.js"></script>
        

        
</body>
