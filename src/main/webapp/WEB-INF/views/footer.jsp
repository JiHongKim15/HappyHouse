<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="root" value="${ pageContext.request.contextPath }"/>


<footer>
        <!-- Footer Start-->
        <div class="footer-area footer-bg footer-padding">
            <div class="container">
                <div class="row d-flex justify-content-between">
                    <div class="col-xl-3 col-lg-3 col-md-4 col-sm-6">
                       <div class="single-footer-caption mb-50">
                         <div class="single-footer-caption mb-30">
                             <div class="footer-tittle">
                                 <h4>About Us</h4>
                                 <div class="footer-pera">
                                     <p>사업자 번호: 220-88-12345<br>
										대표: 김지홍, 윤지혜, 이로운이
										<br>팀명 : 무주택자</p>
                                </div>
                             </div>
                         </div>

                       </div>
                    </div>
                    <div class="col-xl-3 col-lg-3 col-md-4 col-sm-5">
                        <div class="single-footer-caption mb-50">
                            <div class="footer-tittle">
                                <h4>Contact Info</h4>
                                <ul>
                                    <li>
                                    <p>Address :서울시 강남구 언주로 508 <br>서울상록빌딩 32F (주)SSAFY HOUSE</p>
                                    </li>
                                    <li><a href="#">Phone : 010-8919-4491</a></li>
                                    <li><a href="#">Email : jihye9632@naver.com</a></li>
                                </ul>
                            </div>

                        </div>
                    </div>
                    <div class="col-xl-3 col-lg-3 col-md-4 col-sm-5">
                        <div class="single-footer-caption mb-50">
                            <div class="footer-tittle">
                                <h4>Important Link</h4>
                                <ul>
                                    <li><a href="${root}/member.do/initintro">ABOUT</a></li>
                                    <li><a href="${root}/mainlist">SEARCH</a></li>
                                    <li><a href="http://localhost:9999/happyhouse/index.html">Q&A</a></li>
                                    <li><a href="${root}/notice.do/mvlist">NOTICE</a></li>
                                    <li><a href="http://localhost:9999/happyhouse/chart.html">CHART</a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <div class="col-xl-3 col-lg-3 col-md-4 col-sm-5">
                        <div class="single-footer-caption mb-50">
                            <div class="footer-tittle">
                                <h4>Partnership</h4>
                                <div class="footer-pera footer-pera2">
                                 <p>제안서를 아래 메일로 보내주세요.</p>
                             </div>
                             <!-- Form -->
                             <div class="footer-form" >
                                 <div id="mc_embed_signup">
                                     <form target="_blank" action="https://spondonit.us12.list-manage.com/subscribe/post?u=1462626880ade1ac87bd9c93a&amp;id=92a4423d01"
                                     method="get" class="subscribe_form relative mail_part">
                                         <input type="email" name="email" id="newsletter-form-email" placeholder="Email Address"
                                         class="placeholder hide-on-focus" onfocus="this.placeholder = ''"
                                         onblur="this.placeholder = ' Email Address '">
                                         <div class="form-icon">
                                             <button type="submit" name="submit" id="newsletter-submit"  class="email_icon newsletter-submit button-contactForm"><img src="${root}/assets/img/use/form.png" alt=""></button>
                                         </div>
                                         <div class="mt-10 info"></div>
                                     </form>
                                 </div>
                             </div>
                            </div>
                        </div>
                    </div>
                </div>
               <!--  -->
               <div class="row footer-wejed justify-content-between">
                       <div class="col-xl-3 col-lg-3 col-md-4 col-sm-6">
                          <!-- logo -->
                          <div class="footer-logo mb-20">
                            <a href="${root}"><img width="150px" src="${root}/assets/img/logo/logo_white.png" alt=""></a>
                          </div>
                       </div>
                       <div class="col-xl-3 col-lg-3 col-md-4 col-sm-5">
                        <div class="footer-tittle-bottom">
                            <span>50000+</span>
                            <p>회원수</p>
                        </div>
                       </div>
                       <div class="col-xl-3 col-lg-3 col-md-4 col-sm-5">
                            <div class="footer-tittle-bottom">
                                <span>12358392+</span>
                                <p>거래등록 수</p>
                            </div>
                       </div>
                       <div class="col-xl-3 col-lg-3 col-md-4 col-sm-5">
                            <!-- Footer Bottom Tittle -->
                            <div class="footer-tittle-bottom">
                                <span>568+</span>
                                <p>하루 평균 방문자 수</p>
                            </div>
                       </div>
               </div>
            </div>
        </div>
        <!-- footer-bottom area -->
        <div class="footer-bottom-area footer-bg">
            <div class="container">
                <div class="footer-border">
                     <div class="row d-flex justify-content-between align-items-center">
                         <div class="col-xl-10 col-lg-10 ">
                             <div class="footer-copy-right">
                                 <p><!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
  Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved | <i class="fa fa-heart" aria-hidden="true"></i> by <atarget="_blank">광주_3반_4조_무주택자 </a>
  <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. --></p>
                             </div>
                         </div>
                         <div class="col-xl-2 col-lg-2">
                             <div class="footer-social f-right">
                                 <a href="#"><i class="fab fa-facebook-f"></i></a>
                                 <a href="#"><i class="fab fa-twitter"></i></a>
                                 <a href="#"><i class="fas fa-globe"></i></a>
                                 <a href="#"><i class="fab fa-behance"></i></a>
                             </div>
                         </div>
                     </div>
                </div>
            </div>
        </div>
        <!-- Footer End-->
    </footer>
