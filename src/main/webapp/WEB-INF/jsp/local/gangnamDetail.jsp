<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="utf-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<jsp:include page="../head.jsp" flush="true"/>
<body id="page-top">
<!-- Navigation-->
<jsp:include page="../header.jsp" flush="true"/>
<section class="page-section bg-s" id="portfolio">
    <div class="container">
        <div class="text-center">
            <h1 class="section-heading">${gangnam.title}</h1>
        </div>
        <div class="container">
            <hr size="10px">
            <div class="row justify-content-center">
                <div class="col-lg-8">
                    <div class="modal-body">
                        <img src="${gangnam.firstimage}">
                        <br>
                        <br>
                        <c:if test="${gangnam.overview != null}">
                            <dl>
                                <dt>설명</dt>
                                <dd>${gangnam.overview}</dd>
                            </dl>
                        </c:if>
                        <dl>
                            <dt>주소</dt>
                            <dd>${gangnam.addr1}</dd>
                            <dt>
                                <div id="map" style="width:700px;height:400px;"></div>
                                <script type="text/javascript"
                                        src="//dapi.kakao.com/v2/maps/sdk.js?appkey=f51f7860ed8829a8f36e95287d941b55&libraries=services,clusterer,drawing"></script>
                            </dt>
                        </dl>
                    </div>
                </div>
            </div>
            <hr size="10px">
        </div>
    </div>
</section>
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
</body>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js"></script>
<!-- Third party plugin JS-->
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-easing/1.4.1/jquery.easing.min.js"></script>
<!-- Contact form JS-->
<script src="/assets/mail/jqBootstrapValidation.js"></script>
<script src="/assets/mail/contact_me.js"></script>
<!-- Core theme JS-->
<script src="/js/scripts.js"></script>
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=0db2942233bd1e50916ba2f9f084b46e"></script>
<script>

    var mapX = ${gangnam.mapx};
    var mapY = ${gangnam.mapy};

    console.log("mapX" + mapX);
    console.log("mapY" + mapY);

    //지도생성
    var map = new kakao.maps.Map(document.getElementById('map'), { // 지도를 표시할 div
        center: new kakao.maps.LatLng(mapY, mapX), // 지도의 중심좌표
        level: 3, // 지도의 확대 레벨
        maxLevel: 15 // 지도의 확대 최대 레벨
    });

    marker = new kakao.maps.Marker({
        map: map,
        position: new kakao.maps.LatLng(mapY, mapX),
        text: '텍스트를 표시할 수 있어요!'
    });
</script>
</html>
