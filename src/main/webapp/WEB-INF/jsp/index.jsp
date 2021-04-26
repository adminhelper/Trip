<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="utf-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<jsp:include page="head.jsp" flush="true"/>
<body id="page-top">
<!-- Navigation-->
<jsp:include page="header.jsp" flush="true"/>
<!-- Services-->
<section class="page-section" id="services">
    <div class="container">
        <div class="text-center">
            <h2 class="section-heading text-uppercase">오늘의 서울</h2>
            <h3 class="section-subheading text-muted">다양한 서울의 정보를 제공합니다.</h3>
        </div>
        <div class="row text-center">
            <div class="col-md-4">
            <span class="fa-stack fa-4x">
              <!-- <i class="fas fa-circle fa-stack-2x text-primary"></i> -->
              <i class="bi-cloud-sun fa-stack-1x fa-inverse fa-lg" style="color: black"></i>
            </span>
                <h4 class="my-3">날씨</h4>
                <p class="text-muted">서울의 날씨를 제공합니다.</p>
            </div>
            <div class="col-md-4">
            <span class="fa-stack fa-4x">
              <!-- <i class="fas fa-circle fa-stack-2x text-primary"></i> -->
              <i class="bi-signpost-split fa-stack-1x fa-inverse" style="color: black"></i>
                <!-- <i class="fas fa-laptop fa-stack-1x fa-inverse"></i> -->
            </span>
                <h4 class="my-3">지역</h4>
                <p class="text-muted">가장 핫한 서울을 소개합니다</p>
            </div>
            <div class="col-md-4">
            <span class="fa-stack fa-4x">
              <!-- <i class="fas fa-circle fa-stack-2x text-primary"></i> -->
              <i class="bi-map fa-stack-1x fa-inverse" style="color: black"></i>
            </span>
                <h4 class="my-3">여행정보</h4>
                <class class="text-muted">여행에 필요한 정보를 제공합니다.</class>
            </div>
        </div>
    </div>
</section>
<!-- Portfolio Grid-->
<section class="page-section bg-light" id="portfolio">
    <div class="container">
        <div class="text-center">
            <h2 class="section-heading text-uppercase">지역</h2>
            <h3 class="section-subheading text-muted">가장 핫 한 서울을 소개합니다.</h3>
        </div>
        <div class="row">
            <div class="col-lg-4 col-sm-6 mb-4">
                <div class="portfolio-item">
                    <a class="portfolio-link" data-toggle="modal" href="#portfolioModal1">
                        <div class="portfolio-hover">
                            <div class="portfolio-hover-content"><i class="fas fa-plus fa-3x"></i></div>
                        </div>
                        <img class="img-fluid" src="/assets/img/portfolio/01-thumbnail.jpg" alt=""/>
                    </a>
                    <div class="portfolio-caption">
                        <div class="portfolio-caption-heading">강남</div>
                        <div class="portfolio-caption-subheading text-muted">GANGNAM</div>
                    </div>
                </div>
            </div>
            <div class="col-lg-4 col-sm-6 mb-4">
                <div class="portfolio-item">
                    <a class="portfolio-link" href="/hongdae">
                        <div class="portfolio-hover">
                            <div class="portfolio-hover-content"><i class="fas fa-plus fa-3x"></i></div>
                        </div>
                        <img class="img-fluid" src="/assets/img/portfolio/02-thumbnail.jpg" alt=""/>
                    </a>
                    <div class="portfolio-caption">
                        <div class="portfolio-caption-heading">홍대</div>
                        <div class="portfolio-caption-subheading text-muted">HONGDAE</div>
                    </div>
                </div>
            </div>
            <div class="col-lg-4 col-sm-6 mb-4">
                <div class="portfolio-item">
                    <a class="portfolio-link" data-toggle="modal" href="#portfolioModal3">
                        <div class="portfolio-hover">
                            <div class="portfolio-hover-content"><i class="fas fa-plus fa-3x"></i></div>
                        </div>
                        <img class="img-fluid" src="/assets/img/portfolio/03-thumbnail.jpg" alt=""/>
                    </a>
                    <div class="portfolio-caption">
                        <div class="portfolio-caption-heading">이태원</div>
                        <div class="portfolio-caption-subheading text-muted">ITAEWON</div>
                    </div>
                </div>
            </div>
            <div class="col-lg-4 col-sm-6 mb-4 mb-lg-0">
                <div class="portfolio-item">
                    <a class="portfolio-link" data-toggle="modal" href="#portfolioModal4">
                        <div class="portfolio-hover">
                            <div class="portfolio-hover-content"><i class="fas fa-plus fa-3x"></i></div>
                        </div>
                        <img class="img-fluid" src="/assets/img/portfolio/04-thumbnail.jpg" alt=""/>
                    </a>
                    <div class="portfolio-caption">
                        <div class="portfolio-caption-heading">잠실</div>
                        <div class="portfolio-caption-subheading text-muted">JAMSIL</div>
                    </div>
                </div>
            </div>
            <div class="col-lg-4 col-sm-6 mb-4 mb-sm-0">
                <div class="portfolio-item">
                    <a class="portfolio-link" data-toggle="modal" href="#portfolioModal5">
                        <div class="portfolio-hover">
                            <div class="portfolio-hover-content"><i class="fas fa-plus fa-3x"></i></div>
                        </div>
                        <img class="img-fluid" src="/assets/img/portfolio/05-thumbnail.jpg" alt=""/>
                    </a>
                    <div class="portfolio-caption">
                        <div class="portfolio-caption-heading">명동</div>
                        <div class="portfolio-caption-subheading text-muted">MYEONGDONG</div>
                    </div>
                </div>
            </div>
            <div class="col-lg-4 col-sm-6">
                <div class="portfolio-item">
                    <a class="portfolio-link" data-toggle="modal" href="#portfolioModal6">
                        <div class="portfolio-hover">
                            <div class="portfolio-hover-content"><i class="fas fa-plus fa-3x"></i></div>
                        </div>
                        <img class="img-fluid" src="/assets/img/portfolio/06-thumbnail.jpg" alt=""/>
                    </a>
                    <div class="portfolio-caption">
                        <div class="portfolio-caption-heading">광화문</div>
                        <div class="portfolio-caption-subheading text-muted">GWANGHWAMUN</div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- About-->
<section class="page-section" id="about">
    <div class="container">
        <div class="text-center">
            <a href="/board/review/boardlist">
                <h2 class="section-heading text-uppercase">후기</h2>
            </a>
            <h3 class="section-subheading text-muted">가봤던 곳들을 생생하게 전달 해줍니다.</h3>
        </div>

        <ul class="timeline">
            <li>
                <a href="https://www.naver.com/">
                    <div class="timeline-image"><img class="rounded-circle img-fluid" src="/assets/img/about/1.jpg"
                                                     alt=""/></div>
                    <div class="timeline-panel">
                        <div class="timeline-heading">
                            <hx4 class="subheading">[정원영] 생생한 후기 !</hx4>
                        </div>
                        <div class="timeline-body"><p class="text-muted">잘나왔습니다</div>
                    </div>
                </a>
            </li>
        </ul>
    </div>
</section>
<!-- Team-->
<section class="page-section bg-light" id="team">
    <div class="container">
        <div class="text-center">
            <h2 class="section-heading text-uppercase">여행정보</h2>
            <h3 class="section-subheading text-muted">여행시 필요한 정보를 알려줍니다.</h3>
        </div>
        <div class="row">
            <div class="col-lg-4">
                <div class="col-lg-4">
                    <div class="team-member">
                        <a class="portfolio-link text-center" data-toggle="modal" href="#weather">
                            <img class="mx-auto rounded-circle" src="/assets/img/team/2.jpg" alt=""/>
                        </a>
                    </div>

                </div>
            </div>
            <div class="col-lg-4">
                <div class="team-member">
                    <a class="portfolio-link text-center" data-toggle="modal" href="#traffic">
                        <img class="mx-auto rounded-circle" src="/assets/img/team/2.jpg" alt=""/>
                    </a>
                </div>
            </div>
            <div class="col-lg-4">
                <div class="team-member">
                    <img class="mx-auto rounded-circle" src="/assets/img/team/3.jpg" alt=""/>
                    <h4>Diana Petersen</h4>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- Clients-->
<div class="py-5">
    <div class="container">
        <div class="row">
            <div class="col-md-3 col-sm-6 my-3">
                <a href="#!"><img class="img-fluid d-block mx-auto" src="/assets/img/logos/envato.jpg" alt=""/></a>
            </div>
            <div class="col-md-3 col-sm-6 my-3">
                <a href="#!"><img class="img-fluid d-block mx-auto" src="/assets/img/logos/designmodo.jpg" alt=""/></a>
            </div>
            <div class="col-md-3 col-sm-6 my-3">
                <a href="#!"><img class="img-fluid d-block mx-auto" src="/assets/img/logos/themeforest.jpg" alt=""/></a>
            </div>
            <div class="col-md-3 col-sm-6 my-3">
                <a href="#!"><img class="img-fluid d-block mx-auto" src="/assets/img/logos/creative-market.jpg" alt=""/></a>
            </div>
        </div>
    </div>
</div>
<!-- Footer-->
<footer class="footer py-4">
    <div class="container">
        <div class="row align-items-center">
            <div class="col-lg-4 text-lg-left">Copyright © Your Website 2020</div>
            <div class="col-lg-4 my-3 my-lg-0">
                <a class="btn btn-dark btn-social mx-2" href="#!"><i class="fab fa-twitter"></i></a>
                <a class="btn btn-dark btn-social mx-2" href="#!"><i class="fab fa-facebook-f"></i></a>
                <a class="btn btn-dark btn-social mx-2" href="#!"><i class="fab fa-linkedin-in"></i></a>
            </div>
            <div class="col-lg-4 text-lg-right">
                <a class="mr-3" href="#!">Privacy Policy</a>
                <a href="#!">Terms of Use</a>
            </div>
        </div>
    </div>
</footer>
<!-- Portfolio Modals-->
<!-- Modal 1-->
<div class="portfolio-modal modal fade" id="weather" tabindex="-1" role="dialog" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="close-modal" data-dismiss="modal"><img src="assets/img/close-icon.svg" alt="Close modal"/></div>
            <div class="container">
                <div class="row justify-content-center">
                    <div class="col-lg-8">
                        <div class="modal-body">
                            <!-- Project Details Go Here-->
                            <h2 class="text-uppercase">서울 현재 날씨</h2>
                            <div >
                                <h3 class="time">현재 시간 </h3>
                                <h3 class="ctemp">현재 온도 </h3>
                                <h3 class="lowtemp">최저 온도 </h3>
                                <h3 class="hightemp">최고 온도 </h3>
                                <h3 class="icon"></h3>
                                <script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
                                <script>
                                    $.getJSON("http://api.openweathermap.org/data/2.5/weather?q=Seoul&appid=423860f71278bfb9ab4d4d19ffc84001&units=metric", function (result) {
                                        $(".ctemp").append(result.main.temp);
                                        $(".lowtemp").append(result.main.temp_min);
                                        $(".hightemp").append(result.main.temp_max);
                                        var wiconUrl = '<img src = "http://openweathermap.org/img/wn/' + result.weather[0].icon + '.png" alt="' + result.weather[0].description + '">';
                                        $(".icon").html(wiconUrl);
                                        var ct = result.dt;

                                        function convertTime(t) {
                                            var ot = new Date(t * 1000);
                                            //Fri Apr 23 2021 15:37:15 GMT+0900 (대한민국 표준시)
                                            var dt = ot.getDate();
                                            var hr = ot.getHours();
                                            var m = ot.getMinutes();
                                            var s = ot.getSeconds();

                                            return dt + "일 " + hr + " : " + "00";
                                        }
                                        var currentTime = convertTime(ct);
                                        $(".time").append(currentTime);
                                    });
                                </script>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<div class="portfolio-modal modal fade" id="traffic" tabindex="-1" role="dialog" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="close-modal" data-dismiss="modal"><img src="assets/img/close-icon.svg" alt="Close modal"/></div>
            <div class="container">
                <div class="row justify-content-center">
                    <div class="col-lg-8">
                        <div class="modal-body">
                            <!-- Project Details Go Here-->
                            <h2 class="text-uppercase">Project Name</h2>
                            <p class="item-intro text-muted">Lorem ipsum dolor sit amet consectetur.</p>
                            <p>
                            <div class="container" id="map" style="width:300px;height:300px;"></div>
                            </p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- Bootstrap core JS-->
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js"></script>
<!-- Third party plugin JS-->
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-easing/1.4.1/jquery.easing.min.js"></script>
<!-- Contact form JS-->
<script src="/assets/mail/jqBootstrapValidation.js"></script>
<script src="/assets/mail/contact_me.js"></script>
<!-- Core theme JS-->
<script src="/js/scripts.js"></script>


<script src="//dapi.kakao.com/v2/maps/sdk.js?appkey=0db2942233bd1e50916ba2f9f084b46e"></script>
<script>
    var mapContainer = document.getElementById('map'), // 지도를 표시할 div
        mapOption = {
            center: new kakao.maps.LatLng(37.56682, 126.97865), // 지도의 중심좌표
            level: 3, // 지도의 확대 레벨
            mapTypeId : kakao.maps.MapTypeId.ROADMAP // 지도종류
        };

    // 지도를 생성한다
    var map = new kakao.maps.Map(mapContainer, mapOption);

</script>
</body>
</html>
