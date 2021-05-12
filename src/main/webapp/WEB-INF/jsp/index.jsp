<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="utf-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<style>
    .map_wrap, .map_wrap * {
        margin: 0;
        padding: 0;
        font-family: 'Malgun Gothic', dotum, '돋움', sans-serif;
        font-size: 12px;
    }

    .map_wrap a, .map_wrap a:hover, .map_wrap a:active {
        color: #000;
        text-decoration: none;
    }

    .map_wrap {
        position: relative;
        width: 100%;
        height: 500px;
    }

    #menu_wrap {
        position: absolute;
        top: 0;
        left: 0;
        bottom: 0;
        width: 250px;
        margin: 10px 0 30px 10px;
        padding: 5px;
        overflow-y: auto;
        background: rgba(255, 255, 255, 0.7);
        z-index: 1;
        font-size: 12px;
        border-radius: 10px;
    }

    .bg_white {
        background: #fff;
    }

    #menu_wrap hr {
        display: block;
        height: 1px;
        border: 0;
        border-top: 2px solid #5F5F5F;
        margin: 3px 0;
    }

    #menu_wrap .option {
        text-align: center;
    }

    #menu_wrap .option p {
        margin: 10px 0;
    }

    #menu_wrap .option button {
        margin-left: 5px;
    }

    #placesList li {
        list-style: none;
    }

    #placesList .item {
        position: relative;
        border-bottom: 1px solid #888;
        overflow: hidden;
        cursor: pointer;
        min-height: 65px;
    }

    #placesList .item span {
        display: block;
        margin-top: 4px;
    }

    #placesList .item h5, #placesList .item .info {
        text-overflow: ellipsis;
        overflow: hidden;
        white-space: nowrap;
    }

    #placesList .item .info {
        padding: 10px 0 10px 55px;
    }

    #placesList .info .gray {
        color: #8a8a8a;
    }

    #placesList .info .jibun {
        padding-left: 26px;
        background: url(https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/places_jibun.png) no-repeat;
    }

    #placesList .info .tel {
        color: #009900;
    }

    #placesList .item .markerbg {
        float: left;
        position: absolute;
        width: 36px;
        height: 37px;
        margin: 10px 0 0 10px;
        background: url(https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/marker_number_blue.png) no-repeat;
    }

    #placesList .item .marker_1 {
        background-position: 0 -10px;
    }

    #placesList .item .marker_2 {
        background-position: 0 -56px;
    }

    #placesList .item .marker_3 {
        background-position: 0 -102px
    }

    #placesList .item .marker_4 {
        background-position: 0 -148px;
    }

    #placesList .item .marker_5 {
        background-position: 0 -194px;
    }

    #placesList .item .marker_6 {
        background-position: 0 -240px;
    }

    #placesList .item .marker_7 {
        background-position: 0 -286px;
    }

    #placesList .item .marker_8 {
        background-position: 0 -332px;
    }

    #placesList .item .marker_9 {
        background-position: 0 -378px;
    }

    #placesList .item .marker_10 {
        background-position: 0 -423px;
    }

    #placesList .item .marker_11 {
        background-position: 0 -470px;
    }

    #placesList .item .marker_12 {
        background-position: 0 -516px;
    }

    #placesList .item .marker_13 {
        background-position: 0 -562px;
    }

    #placesList .item .marker_14 {
        background-position: 0 -608px;
    }

    #placesList .item .marker_15 {
        background-position: 0 -654px;
    }

    #pagination {
        margin: 10px auto;
        text-align: center;
    }

    #pagination a {
        display: inline-block;
        margin-right: 10px;
    }

    #pagination .on {
        font-weight: bold;
        cursor: default;
        color: #777;
    }

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
<jsp:include page="headermain.jsp" flush="true"/>
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
                    <a class="portfolio-link" href="/local/gangnam">
                        <div class="portfolio-hover">
                            <div class="portfolio-hover-content"><i class="fas fa-plus fa-3x"></i></div>
                        </div>
                        <img class="img-fluid" style="height: 250px;" src="/img/gangnam.jpg" alt=""/>
                    </a>
                    <div class="portfolio-caption">
                        <div class="portfolio-caption-heading">강남</div>
                        <div class="portfolio-caption-subheading text-muted">GANGNAM</div>
                    </div>
                </div>
            </div>
            <div class="col-lg-4 col-sm-6 mb-4">
                <div class="portfolio-item">
                    <a class="portfolio-link" href="/local/hongdae">
                        <div class="portfolio-hover">
                            <div class="portfolio-hover-content"><i class="fas fa-plus fa-3x"></i></div>
                        </div>
                        <img class="img-fluid" style="height: 250px; width:500px;" src="/img/hongdae.jpg" alt=""/>
                    </a>
                    <div class="portfolio-caption">
                        <div class="portfolio-caption-heading">홍대</div>
                        <div class="portfolio-caption-subheading text-muted">HONGDAE</div>
                    </div>
                </div>
            </div>
            <div class="col-lg-4 col-sm-6 mb-4">
                <div class="portfolio-item">
                    <a class="portfolio-link" href="/local/itaewon">
                        <div class="portfolio-hover">
                            <div class="portfolio-hover-content"><i class="fas fa-plus fa-3x"></i></div>
                        </div>
                        <img class="img-fluid" style="height: 250px" src="/img/itaewon.jpg" alt=""/>
                    </a>
                    <div class="portfolio-caption">
                        <div class="portfolio-caption-heading">이태원</div>
                        <div class="portfolio-caption-subheading text-muted">ITAEWON</div>
                    </div>
                </div>
            </div>
            <div class="col-lg-4 col-sm-6 mb-4 mb-lg-0">
                <div class="portfolio-item">
                    <a class="portfolio-link" href="/local/jamsil">
                        <div class="portfolio-hover">
                            <div class="portfolio-hover-content"><i class="fas fa-plus fa-3x"></i></div>
                        </div>
                        <img class="img-fluid" style="height: 250px" src="/img/jamsil.jpg" alt=""/>
                    </a>
                    <div class="portfolio-caption">
                        <div class="portfolio-caption-heading">잠실</div>
                        <div class="portfolio-caption-subheading text-muted">JAMSIL</div>
                    </div>
                </div>
            </div>
            <div class="col-lg-4 col-sm-6 mb-4 mb-sm-0">
                <div class="portfolio-item">
                    <a class="portfolio-link" href="/local/myeongdong">
                        <div class="portfolio-hover">
                            <div class="portfolio-hover-content"><i class="fas fa-plus fa-3x"></i></div>
                        </div>
                        <img class="img-fluid" style="height: 250px" src="/img/myeongdong.jpeg" alt=""/>
                    </a>
                    <div class="portfolio-caption">
                        <div class="portfolio-caption-heading">명동</div>
                        <div class="portfolio-caption-subheading text-muted">MYEONGDONG</div>
                    </div>
                </div>
            </div>
            <div class="col-lg-4 col-sm-6">
                <div class="portfolio-item">
                    <a class="portfolio-link" href="/local/gwanghwamun">
                        <div class="portfolio-hover">
                            <div class="portfolio-hover-content"><i class="fas fa-plus fa-3x"></i></div>
                        </div>
                        <img class="img-fluid" style="height: 250px; width:500px;" src="/img/gwanghwamun.png" alt=""/>
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
            <c:forEach items="${review}" var="data">
                <li>
                    <a class="link" href="/board/review/detail?no=${data.board_no}">
                        <div class="timeline-image"><img class="rounded-circle img-fluid"
                                                         style="width: 156px; height: 156px;" src="/${data.file_name}"
                                                         alt=""/></div>
                        <div class="timeline-panel">
                            <div class="timeline-heading">
                                <hx4 class="subheading">제목 : ${data.board_title}</hx4>
                            </div>
                            <div class="timeline-heading">
                                <hx4 class="subheading">${data.member_nickname}</hx4>
                            </div>
                            <div class="timeline-body"><p class="text-muted">추천 ${data.board_likecnt}</div>
                        </div>
                    </a>
                </li>
            </c:forEach>
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
                <div class="team-member">
                    <a class="portfolio-link text-center" data-toggle="modal" href="#weather">
                        <img class="mx-auto rounded-circle" src="/img/weater.png" alt=""/>
                        <h4>날씨</h4>
                    </a>
                </div>
            </div>
            <div class="col-lg-4">
                <div class="team-member">
                    <a class="portfolio-link text-center" id="kakao" data-toggle="modal" href="#traffic">
                        <img class="mx-auto rounded-circle" src="/img/map.jpg" alt=""/>
                        <h4>지도</h4>
                    </a>
                </div>
            </div>
            <div class="col-lg-4">
                <div class="team-member">
                    <a class="portfolio-link text-center" data-toggle="modal" href="#covid19">
                        <img class="mx-auto rounded-circle" src="/img/covid19.jpg" alt=""/>
                        <h4>코로나 확진자 수</h4>
                    </a>
                </div>
            </div>
        </div>
    </div>
</section>

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
                                            "light rain": "비온뒤 맑음",
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
                            <h2 class="text-uppercase">길찾기</h2>
                            <title>키워드로 장소검색하고 목록으로 표출하기</title>
                            <div class="map_wrap">
                                <div id="map" style="width:100%;height:100%;position:relative;overflow:hidden;"></div>
                                <div id="menu_wrap" class="bg_white">
                                    <div class="option">
                                        <div>
                                            <form onsubmit="searchPlaces(); return false;">
                                                키워드 : <input type="text" value="이태원 맛집" id="keyword" size="15">
                                                <button type="submit">검색하기</button>
                                            </form>
                                        </div>
                                    </div>
                                    <hr>
                                    <ul id="placesList"></ul>
                                    <div id="pagination"></div>
                                </div>
                            </div>
                            <script type="text/javascript"
                                    src="//dapi.kakao.com/v2/maps/sdk.js?appkey=0db2942233bd1e50916ba2f9f084b46e&libraries=services"></script>
                            <script>
                                // 마커를 담을 배열입니다
                                var markers = [];

                                var mapContainer = document.getElementById('map'), // 지도를 표시할 div
                                    mapOption = {
                                        center: new kakao.maps.LatLng(37.566826, 126.9786567), // 지도의 중심좌표
                                        level: 3 // 지도의 확대 레벨
                                    };

                                // 지도를 생성합니다
                                var map = new kakao.maps.Map(mapContainer, mapOption);

                                // 장소 검색 객체를 생성합니다
                                var ps = new kakao.maps.services.Places();

                                // 검색 결과 목록이나 마커를 클릭했을 때 장소명을 표출할 인포윈도우를 생성합니다
                                var infowindow = new kakao.maps.InfoWindow({zIndex: 1});

                                // 키워드로 장소를 검색합니다
                                searchPlaces();

                                // 키워드 검색을 요청하는 함수입니다
                                function searchPlaces() {

                                    var keyword = document.getElementById('keyword').value;

                                    if (!keyword.replace(/^\s+|\s+$/g, '')) {
                                        alert('키워드를 입력해주세요!');
                                        return false;
                                    }

                                    // 장소검색 객체를 통해 키워드로 장소검색을 요청합니다
                                    ps.keywordSearch(keyword, placesSearchCB);
                                }

                                // 장소검색이 완료됐을 때 호출되는 콜백함수 입니다
                                function placesSearchCB(data, status, pagination) {
                                    if (status === kakao.maps.services.Status.OK) {

                                        // 정상적으로 검색이 완료됐으면
                                        // 검색 목록과 마커를 표출합니다
                                        displayPlaces(data);

                                        // 페이지 번호를 표출합니다
                                        displayPagination(pagination);

                                    } else if (status === kakao.maps.services.Status.ZERO_RESULT) {

                                        alert('검색 결과가 존재하지 않습니다.');
                                        return;

                                    } else if (status === kakao.maps.services.Status.ERROR) {

                                        alert('검색 결과 중 오류가 발생했습니다.');
                                        return;

                                    }
                                }

                                // 검색 결과 목록과 마커를 표출하는 함수입니다
                                function displayPlaces(places) {

                                    var listEl = document.getElementById('placesList'),
                                        menuEl = document.getElementById('menu_wrap'),
                                        fragment = document.createDocumentFragment(),
                                        bounds = new kakao.maps.LatLngBounds(),
                                        listStr = '';

                                    // 검색 결과 목록에 추가된 항목들을 제거합니다
                                    removeAllChildNods(listEl);

                                    // 지도에 표시되고 있는 마커를 제거합니다
                                    removeMarker();

                                    for (var i = 0; i < places.length; i++) {

                                        // 마커를 생성하고 지도에 표시합니다
                                        var placePosition = new kakao.maps.LatLng(places[i].y, places[i].x),
                                            marker = addMarker(placePosition, i),
                                            itemEl = getListItem(i, places[i]); // 검색 결과 항목 Element를 생성합니다

                                        // 검색된 장소 위치를 기준으로 지도 범위를 재설정하기위해
                                        // LatLngBounds 객체에 좌표를 추가합니다
                                        bounds.extend(placePosition);

                                        // 마커와 검색결과 항목에 mouseover 했을때
                                        // 해당 장소에 인포윈도우에 장소명을 표시합니다
                                        // mouseout 했을 때는 인포윈도우를 닫습니다
                                        (function (marker, title) {
                                            kakao.maps.event.addListener(marker, 'mouseover', function () {
                                                displayInfowindow(marker, title);
                                            });

                                            kakao.maps.event.addListener(marker, 'mouseout', function () {
                                                infowindow.close();
                                            });

                                            itemEl.onmouseover = function () {
                                                displayInfowindow(marker, title);
                                            };

                                            itemEl.onmouseout = function () {
                                                infowindow.close();
                                            };
                                        })(marker, places[i].place_name);

                                        fragment.appendChild(itemEl);
                                    }

                                    // 검색결과 항목들을 검색결과 목록 Elemnet에 추가합니다
                                    listEl.appendChild(fragment);
                                    menuEl.scrollTop = 0;

                                    // 검색된 장소 위치를 기준으로 지도 범위를 재설정합니다
                                    map.setBounds(bounds);
                                }

                                // 검색결과 항목을 Element로 반환하는 함수입니다
                                function getListItem(index, places) {

                                    var el = document.createElement('li'),
                                        itemStr = '<span class="markerbg marker_' + (index + 1) + '"></span>' +
                                            '<div class="info">' +
                                            '   <h5>' + places.place_name + '</h5>';

                                    if (places.road_address_name) {
                                        itemStr += '    <span>' + places.road_address_name + '</span>' +
                                            '   <span class="jibun gray">' + places.address_name + '</span>';
                                    } else {
                                        itemStr += '    <span>' + places.address_name + '</span>';
                                    }

                                    itemStr += '  <span class="tel">' + places.phone + '</span>' +
                                        '</div>';

                                    el.innerHTML = itemStr;
                                    el.className = 'item';

                                    return el;
                                }

                                // 마커를 생성하고 지도 위에 마커를 표시하는 함수입니다
                                function addMarker(position, idx, title) {
                                    var imageSrc = 'https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/marker_number_blue.png', // 마커 이미지 url, 스프라이트 이미지를 씁니다
                                        imageSize = new kakao.maps.Size(36, 37),  // 마커 이미지의 크기
                                        imgOptions = {
                                            spriteSize: new kakao.maps.Size(36, 691), // 스프라이트 이미지의 크기
                                            spriteOrigin: new kakao.maps.Point(0, (idx * 46) + 10), // 스프라이트 이미지 중 사용할 영역의 좌상단 좌표
                                            offset: new kakao.maps.Point(13, 37) // 마커 좌표에 일치시킬 이미지 내에서의 좌표
                                        },
                                        markerImage = new kakao.maps.MarkerImage(imageSrc, imageSize, imgOptions),
                                        marker = new kakao.maps.Marker({
                                            position: position, // 마커의 위치
                                            image: markerImage
                                        });

                                    marker.setMap(map); // 지도 위에 마커를 표출합니다
                                    markers.push(marker);  // 배열에 생성된 마커를 추가합니다

                                    return marker;
                                }

                                // 지도 위에 표시되고 있는 마커를 모두 제거합니다
                                function removeMarker() {
                                    for (var i = 0; i < markers.length; i++) {
                                        markers[i].setMap(null);
                                    }
                                    markers = [];
                                }

                                // 검색결과 목록 하단에 페이지번호를 표시는 함수입니다
                                function displayPagination(pagination) {
                                    var paginationEl = document.getElementById('pagination'),
                                        fragment = document.createDocumentFragment(),
                                        i;

                                    // 기존에 추가된 페이지번호를 삭제합니다
                                    while (paginationEl.hasChildNodes()) {
                                        paginationEl.removeChild(paginationEl.lastChild);
                                    }

                                    for (i = 1; i <= pagination.last; i++) {
                                        var el = document.createElement('a');
                                        el.href = "#";
                                        el.innerHTML = i;

                                        if (i === pagination.current) {
                                            el.className = 'on';
                                        } else {
                                            el.onclick = (function (i) {
                                                return function () {
                                                    pagination.gotoPage(i);
                                                }
                                            })(i);
                                        }

                                        fragment.appendChild(el);
                                    }
                                    paginationEl.appendChild(fragment);
                                }

                                // 검색결과 목록 또는 마커를 클릭했을 때 호출되는 함수입니다
                                // 인포윈도우에 장소명을 표시합니다
                                function displayInfowindow(marker, title) {
                                    var content = '<div style="padding:5px;z-index:1;">' + title + '</div>';

                                    infowindow.setContent(content);
                                    infowindow.open(map, marker);
                                }

                                // 검색결과 목록의 자식 Element를 제거하는 함수입니다
                                function removeAllChildNods(el) {
                                    while (el.hasChildNodes()) {
                                        el.removeChild(el.lastChild);
                                    }
                                }
                            </script>
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
            var t5 = res2["data"][0].examCnt - res2["data"][1].examCnt;
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

            kk1.push(res2["data"][0].decideCnt - res2["data"][1].decideCnt
                , res2["data"][1].decideCnt - res2["data"][2].decideCnt
                , res2["data"][2].decideCnt - res2["data"][3].decideCnt
                , res2["data"][3].decideCnt - res2["data"][4].decideCnt
                , res2["data"][4].decideCnt - res2["data"][5].decideCnt
                , res2["data"][5].decideCnt - res2["data"][6].decideCnt
                , res2["data"][6].decideCnt - res2["data"][7].decideCnt
                , res2["data"][7].decideCnt - res2["data"][8].decideCnt);
            kk1.reverse()
            var ctx = document.getElementById('myChart').getContext('2d');
            var chart = new Chart(ctx, { // type : 'bar' = 막대차트를 의미합니다.
                type: 'bar',
                data: {
                    labels: kk,
                    datasets: [{
                        label: '일일 확진자',
                        backgroundColor: 'rgb(255, 99, 132)',
                        borderColor: 'rgb(255,99,132)',
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
