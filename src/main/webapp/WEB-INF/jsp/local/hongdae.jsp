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
            <h2 class="section-heading text-uppercase">홍대</h2>
            <h3 class="section-subheading text-muted">서울의 3대 번화가 중 교풍이 개방적이다</h3>
        </div>
        <div class="tag-element">
            <button onclick="location.href='/local/hongdae'">전체</button>
            <button onclick="onBtn(11)" >축제&amp;행사</button>
            <button onclick="onBtn(12)" >명소</button>
            <button onclick="onBtn(13)" >음식</button>
            <button onclick="onBtn(14)" >쇼핑</button>
            <button onclick="onBtn(15)">자연&amp;관광</button>
            <button onclick="onBtn(16)" >엔터테인먼트</button>
        </div>

        <div class="row">
            <c:forEach items="${table}" var="data">
                <div class="col-lg-3 col-sm-6 item ${data.contenttypeid}">
                    <div class="portfolio-item">
                        <a class="portfolio-link"
                           href="/local/hongdae/detail?contentid=${data.contentid}&typeid=${data.contenttypeid}">
                            <div class="portfolio-hover">
                                <div class="portfolio-hover-content"><i class="fas fa-plus fa-3x"></i></div>
                            </div>
                            <div id="img-item" data-toggle="modal" class="portfolio-link"></div>

                            <div class="portfolio-caption">
                                <img class="img-fluid" src="${data.firstimage2}">
                                <div class="portfolio-caption-heading" id="title">${data.title}</div>
                            </div>
                        </a>
                    </div>
                </div>
            </c:forEach>
        </div>
    </div>
    <nav aria-label="Page navigation example">
        <ul class="pagination justify-content-center">
            <c:if test="${paging.prev}">
                <li class="page-item">

                    <a class="page-link" style="color: black"
                       href="<c:url value='hongdae?pageNum=${paging.startPage-1}'/>" aria-label="Previous">
                        이전
                    </a>

                </li>
            </c:if>
            <c:forEach begin="${paging.startPage}" end="${paging.endPage}" var="num">
                <li class="page-item"><a class="page-link" style="color: black"
                                         href="<c:url value='hongdae?pageNum=${num}'/>">${num}</a></li>
            </c:forEach>
            <c:if test="${paging.next && paging.endPage>0}">
                <li class="page-item">
                    <a class="page-link" style="color: black"
                       href="<c:url value='hongdae?pageNum=${paging.endPage+1}'/>"
                       aria-label="Next">
                        다음
                    </a>
                </li>
            </c:if>

        </ul>
    </nav>
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
    function onBtn(e){
        $('.item').hide();
        $('.item.'+e).show();
    }
</script>
</body>
</html>
