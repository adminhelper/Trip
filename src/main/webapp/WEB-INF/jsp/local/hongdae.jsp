<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="utf-8" %>
<!DOCTYPE html>
<html lang="en">

<jsp:include page="../head.jsp" flush="true"/>
<body id="page-top">
<!-- Navigation-->
<jsp:include page="../header.jsp" flush="true"/>
<section class="page-section bg-s" id="portfolio">
    <div class="container">
        <div class="text-center">
            <h2 class="section-heading text-uppercase">홍대</h2>
            <h3 class="section-subheading text-muted">서울의 3대 번화가 중 교풍이 개방적이다</h3>
        </div>
        <div class="row">
            <div class="col-lg-3 col-sm-6">
                <div class="portfolio-item">
                    <a class="portfolio-link" data-toggle="modal" href="">
                        <div class="portfolio-hover">
                            <div class="portfolio-hover-content"><i class="fas fa-plus fa-3x"></i></div>
                        </div>
                        <img class="img-fluid" id="img" alt=""/>
                    </a>
                    <div class="portfolio-caption">
                        <div class="portfolio-caption-heading" id="title"></div>
                        <div class="portfolio-caption-subheading tex" id="addr"></div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"
            integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4="
            crossorigin="anonymous"></script>
    <script>
        $.getJSON("http://api.visitkorea.or.kr/openapi/service/rest/KorService/areaBasedList?ServiceKey=eINnILMCN0yU29m4Benu%2FUsOUQVNRVwmY663W6zfP21jQ3GvK1XXNIao0dPJ1HrPqA%2BmzupuLD%2F8qPXnLRkWSw%3D%3D&contentTypeId=&areaCode=1&sigunguCode=13&cat1=&cat2=&cat3=&listYN=Y&MobileOS=ETC&MobileApp=TourAPI3.0_Guide&arrange=A&numOfRows=12&pageNo=1&_type=json", function (result) {
            // $(".ctemp").append(Math.ceil(result.main.temp) + " 도");
            $("#title").append(result.response.body.items.item[0].title);
            var url = result.response.body.items.item[0].firstimage;
            $("#img").attr("src", url);
            $("#addr").append(result.response.body.items.item[0].addr1);
            console.log(result.response.body.items.item[0]);
        });
    </script>
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
<script src="../../resources/static/assets/mail/jqBootstrapValidation.js"></script>
<script src="../../resources/static/assets/mail/contact_me.js"></script>
<!-- Core theme JS-->
<script src="../../resources/static/js/scripts.js"></script>
</html>
