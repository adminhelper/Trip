<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="utf-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<style>
    .content .table_wrap {
        padding: 0 30px 40px 30px;
    }

    .table_wrap .tower_light_desc {
        height: 255px;
        width: 900px;
        margin: 70px -100px;
    }

    .table_wrap .tower_light_desc .title {
        background: url(//imgstower.ytn.co.kr/img/ico_tourinside.png) no-repeat center left;
        padding-left: 34px;
        font-size: 26px;
        font-weight: 600;
        width: 336px;
        margin: 0 auto 30px 270px;
    }

    .table_wrap .tower_light_desc .img_light_01 {
        float: left;
        display: block;
        width: 180px;
        height: 260px;
        background: url(//imgstower.ytn.co.kr/img/tour_inside_light_01.png) no-repeat top left;
        background-size: 180px 180px;
    }

    .table_wrap .tower_light_desc .value {
        margin: 195px 0 0 0;
        text-align: center;
        font-size: 18px;
    }

    .table_wrap .tower_light_desc .blue {
        font-size: 24px;
        font-weight: 600;
        text-align: center;
        color: #00affa;
    }

    .table_wrap .tower_light_desc .next_arrow {
        float: left;
        display: block;
        width: 60px;
        height: 180px;
        background: url(//imgstower.ytn.co.kr/img/bt_vod_next.png) no-repeat center center;
    }

    .table_wrap .tower_light_desc .img_light_02 {
        float: left;
        display: block;
        width: 180px;
        height: 260px;
        background: url(//imgstower.ytn.co.kr/img/tour_inside_light_02.png) no-repeat top left;
        background-size: 180px 180px;
    }

    .table_wrap .tower_light_desc .value {
        margin: 195px 0 0 0;
        text-align: center;
        font-size: 18px;
    }

    .table_wrap .tower_light_desc .green {
        font-size: 24px;
        font-weight: 600;
        text-align: center;
        color: #049600;
    }

    .table_wrap .tower_light_desc .img_light_03 {
        float: left;
        display: block;
        width: 180px;
        height: 260px;
        background: url(//imgstower.ytn.co.kr/img/tour_inside_light_03.png) no-repeat top left;
        background-size: 180px 180px;
    }

    .table_wrap .tower_light_desc .yellow {
        font-size: 24px;
        font-weight: 600;
        text-align: center;
        color: #ffb400;
    }

    .table_wrap .tower_light_desc .img_light_04 {
        float: left;
        display: block;
        width: 180px;
        height: 260px;
        background: url(//imgstower.ytn.co.kr/img/tour_inside_light_04.png) no-repeat top left;
        background-size: 180px 180px;
    }

    .table_wrap .tower_light_desc .red {
        font-size: 24px;
        font-weight: 600;
        text-align: center;
        color: #ff0018;
    }
</style>
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
                            <h4>날씨</h4>
                        </a>
                    </div>

                </div>
            </div>
            <div class="col-lg-4">
                <div class="team-member">
                    <a class="portfolio-link text-center" id="kakao" data-toggle="modal" href="#traffic">
                        <img class="mx-auto rounded-circle" src="/assets/img/team/2.jpg" alt=""/>
                        <h4>지도</h4>
                    </a>
                </div>
            </div>
            <div class="col-lg-4">
                <div class="team-member">
                    <a class="portfolio-link text-center" data-toggle="modal" href="#covid19">
                        <img class="mx-auto rounded-circle" src="/assets/img/team/3.jpg" alt=""/>
                        <h4>코로나 확진자 수</h4>
                    </a>
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
        <div class="modal-content text-center">
            <div class="close-modal" data-dismiss="modal"><img src="assets/img/close-icon.svg" alt="Close modal"/></div>
            <div class="container">
                <div class="row justify-content-center">
                    <div class="col-lg-8">
                        <div class="modal-body">
                            <!-- Project Details Go Here-->
                            <h2 class="text-uppercase">서울 현재 날씨</h2>
                            <div class="modal-body">
                                <h3 class="time"></h3>
                                <h3 class="ctemp">현재 온도 </h3>
                                <h3 class="lowtemp">최저 온도 </h3>
                                <h3 class="hightemp">최고 온도 </h3>
                                <h3 class="icon"></h3>
                                <h4 class="name"></h4>

                                <script src="https://code.jquery.com/jquery-3.6.0.min.js"
                                        integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4="
                                        crossorigin="anonymous"></script>
                                <script>
                                    $.getJSON("http://api.openweathermap.org/data/2.5/weather?q=Seoul&appid=423860f71278bfb9ab4d4d19ffc84001&units=metric", function (result) {
                                        $(".ctemp").append(Math.ceil(result.main.temp) + " 도");
                                        $(".lowtemp").append(result.main.temp_min + " 도");
                                        $(".hightemp").append(result.main.temp_max + " 도");
                                        var wiconUrl = '<img src = "http://openweathermap.org/img/wn/' + result.weather[0].icon + '@2x.png" alt="' + result.weather[0].description + '">';
                                        $(".icon").html(wiconUrl);
                                        var ct = result.dt;

                                        var data = {
                                            "clear sky": "맑은 하늘",
                                            "few clouds": "약간 흐림",
                                            "scattered clouds": "구름 많음",
                                            "broken clouds": "먹구름",
                                            "shower rain": "소나기",
                                            "rain": "비",
                                            "thunderstorm": "천둥",
                                            "snow": "눈",
                                            "mist": "안개"
                                        }
                                        $(".name").append(data[result.weather[0].description]);

                                        function convertTime(t) {
                                            var ot = new Date(t * 1000);
                                            //Fri Apr 23 2021 15:37:15 GMT+0900 (대한민국 표준시)
                                            var dt = ot.getDate();
                                            var hr = ot.getHours();
                                            var m = ot.getMinutes();
                                            var s = ot.getSeconds();

                                            return dt + "일 " + hr + " : " + "00시 기준";
                                        }

                                        var currentTime = convertTime(ct);
                                        $(".time").append(currentTime);
                                    });
                                </script>

                                <script>
                                    $.getJSON("http://openapi.seoul.go.kr:8088/4b6149745979683435395944555a61/json/ListAvgOfSeoulAirQualityService/1/5/", function (result) {
                                        var vv = result.ListAvgOfSeoulAirQualityService["row"][0]["PM10"];
                                        checkPM(vv);
                                    });

                                    function checkPM(vv) {
                                        if (vv <= 0 || vv <= 15) {
                                            $('.img_light_01').css('border', '1px solid black');
                                        } else if (vv <= 16 || vv <= 35) {
                                            $('.img_light_02').css('border', '1px solid black');
                                        } else if (vv <= 36 || vv <= 75) {
                                            $('.img_light_03').css('border', '1px solid black');
                                        } else {
                                            $('.img_light_04').css('border', '1px solid black');
                                        }
                                    }

                                </script>
                                <div class="table_wrap text-center">

                                    <div class="tower_light_desc">
                                        <hr style="width: 100%; background-color: black;">
                                        <p class="title">
                                            조명 색깔별 미세먼지 4단계</p>
                                        <div class="img_light_01">
                                            <p class="value">0~15㎍/m³</p>
                                            <p class="blue">좋음</p>
                                        </div>
                                        <div class="next_arrow"></div>
                                        <div class="img_light_02">
                                            <p class="value">16~35㎍/m³</p>
                                            <p class="green">보통</p>
                                        </div>
                                        <div class="next_arrow"></div>
                                        <div class="img_light_03">
                                            <p class="value">36~75㎍/m³</p>
                                            <p class="yellow">나쁨</p>
                                        </div>
                                        <div class="next_arrow"></div>
                                        <div class="img_light_04">
                                            <p class="value">76㎍/m³ 이상</p>
                                            <p class="red">매우나쁨</p>
                                        </div>
                                    </div>
                                </div>
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
            <div class="container" id="container">
                <div class="row justify-content-center">
                    <div class="col-lg-8">
                        <div class="modal-body">
                            <!-- Project Details Go Here-->
                            <h2 class="text-uppercase">Project Name</h2>
                            <p class="item-intro text-muted">Lorem ipsum dolor sit amet consectetur.</p>
                            <p>
                            <div class="modal-content" id="map" style="width:700px;height:350px;"></div>
                            <script src="//dapi.kakao.com/v2/maps/sdk.js?appkey=0db2942233bd1e50916ba2f9f084b46e"></script>
                            <script>
                                var mapContainer = document.getElementById('map'), // 지도를 표시할 div
                                    mapOption = {
                                        center: new kakao.maps.LatLng(33.450701, 126.570667), // 지도의 중심좌표
                                        level: 3 // 지도의 확대 레벨
                                    };
                                var map = new kakao.maps.Map(mapContainer, mapOption);

                                mapContainer.style.width = "650px";
                                mapContainer.style.height = "650px";

                                function relayout() {
                                    map.relayout();
                                }

                            </script>
                            </p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<div class="portfolio-modal modal fade" id="covid19" tabindex="-1" role="dialog" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content text-center">
            <div class="close-modal" data-dismiss="modal"><img src="assets/img/close-icon.svg" alt="Close modal"/></div>
            <div class="container">
                <div class="row justify-content-center">
                    <div class="col-lg-8">
                        <div class="modal-body">
                            <!-- Project Details Go Here-->
                            <h2 class="text-uppercase">대한민국 코로나 확진자 </h2>
                            <div class="modal-body">
                                <h5 class="t3">확진환자 </h5>
                                <h5 class="t4">격리해제 </h5>
                                <h5 class="t5">검사진행 </h5>
                                <h5 class="t6">사망자 </h5>
                            </div>

                            <canvas id="myChart"></canvas>
                            <h6 class="t1"></h6>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- Bootstrap core JS-->
<script src="https://cdn.jsdelivr.net/npm/chart.js@2.8.0"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js"></script>
<!-- Third party plugin JS-->
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-easing/1.4.1/jquery.easing.min.js"></script>
<!-- Contact form JS-->
<script src="/assets/mail/jqBootstrapValidation.js"></script>
<script src="/assets/mail/contact_me.js"></script>
<!-- Core theme JS-->
<script src="/js/scripts.js"></script>
<script>
    $.ajax({
        url: "/api",
        type: "get",
        contentType: "application/json; charset=utf-8;",
        dataType: "json",
        success: function (res2) {
            var t1 = String(res2["data"][0].stateDt).substring(4, 8).replace(/(.{2})/, "$1월").replace(/(.{5})/, "$1일");
            var t3 = res2["data"][0].decideCnt - res2["data"][1].decideCnt;
            var t4 = res2["data"][0].clearCnt - res2["data"][1].clearCnt;
            var t5 = res2["data"][1].examCnt - res2["data"][0].examCnt;
            var t6 = res2["data"][0].deathCnt - res2["data"][1].deathCnt;
            var number = "명";
            var numberI = "명" + '<i class="bi bi-arrow-up"></i>';
            var numberX = '<i class="bi bi-arrow-up"></i>';
            var gh = "&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;"
            $(".t1").append(t1 + gh + res2["data"][0].stateTime + "시 집계 기준");
            $(".t3").append(res2["data"][0].decideCnt.toLocaleString() + number + gh + t3 + numberX);
            $(".t4").append(res2["data"][0].clearCnt.toLocaleString() + number + gh + t4 + numberX);
            $(".t5").append(res2["data"][0].examCnt.toLocaleString() + number + gh + t5 + numberX);
            $(".t6").append(res2["data"][0].deathCnt.toLocaleString() + number + gh + t6 + numberX);

            var kk = new Array();
            var kk1 = new Array();
            for (var i in res2["data"]) {
                var ch = (String(res2["data"][i].stateDt).substring(4, 8));
                kk.push(ch);
            }

            kk.reverse();
            kk.pop();
            // for(var i; i <= res2["data"].length; i++){
            //     t = res2["data"][i].decideCnt - res2["data"][i-1].decideCnt;
            //     console.log(t);
            // }

            kk1.push(res2["data"][0].decideCnt - res2["data"][1].decideCnt
                , res2["data"][1].decideCnt - res2["data"][2].decideCnt
                , res2["data"][2].decideCnt - res2["data"][3].decideCnt
                , res2["data"][3].decideCnt - res2["data"][4].decideCnt
                , res2["data"][4].decideCnt - res2["data"][5].decideCnt
                , res2["data"][5].decideCnt - res2["data"][6].decideCnt
                , res2["data"][6].decideCnt - res2["data"][7].decideCnt);
            kk1.reverse()
            var ctx = document.getElementById('myChart').getContext('2d');
            var chart = new Chart(ctx, { // type : 'bar' = 막대차트를 의미합니다.
                type: 'bar',
                data: {
                    labels: kk,
                    datasets: [{
                        label: '일일 확진자',
                        backgroundColor: 'rgb(255, 99, 132)',
                        borderColor: 'rgb(255, 99, 132)',
                        data: kk1
                    }]
                },
                options: {
                    maintainAspectRatio: true,
                    scales: {
                        yAxes: [{
                            ticks: {
                                min: 0,
                                max: 1000,
                                beginAtZero: true
                            }
                        }]
                    }
                }
            });
        }
    });
</script>
</body>
</html>
