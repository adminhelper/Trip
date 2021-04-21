<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="utf-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no"/>
    <meta name="description" content=""/>
    <meta name="author" content=""/>
    <title>오늘의 서울</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css"/>
    <link rel="icon" type="image/x-icon" href="/assets/img/favicon.ico"/>
    <!-- Font Awesome icons (free version)-->
    <script src="https://use.fontawesome.com/releases/v5.15.1/js/all.js" crossorigin="anonymous"></script>
    <!-- Google fonts-->
    <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet" type="text/css"/>
    <link href="https://fonts.googleapis.com/css?family=Droid+Serif:400,700,400italic,700italic" rel="stylesheet"
          type="text/css"/>
    <link href="https://fonts.googleapis.com/css?family=Roboto+Slab:400,100,300,700" rel="stylesheet" type="text/css"/>
    <!-- Core theme CSS (includes Bootstrap)-->
    <link href="/css/styles.css" rel="stylesheet"/>
</head>
<body id="page-top">
<!-- Navigation-->
<nav class="navbar navbar-expand-lg navbar-dark fixed-top" id="mainNav">
    <div class="container">
        <a class="navbar-brand js-scroll-trigger" href="#page-top"><img src="/assets/img/navbar-logo.svg" alt=""/></a>
        <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse"
                data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false"
                aria-label="Toggle navigation">
            Menu
            <i class="fas fa-bars ml-1"></i>
        </button>
        <div class="collapse navbar-collapse" id="navbarResponsive">
            <ul class="navbar-nav text-uppercase ml-auto">
                <li class="nav-item"><a class="nav-link js-scroll-trigger" href="#services">오늘의 서울</a></li>
                <li class="nav-item"><a class="nav-link js-scroll-trigger" href="#portfolio">지역</a></li>
                <li class="nav-item"><a class="nav-link js-scroll-trigger" href="#about">후기</a></li>
                <li class="nav-item"><a class="nav-link js-scroll-trigger" href="#team">여행정보</a></li>
            </ul>
            <ul class="navbar-nav text-uppercase ml-auto">
                <li class="nav-item"><a class="nav-link js-scroll-trigger" href="#contact">검색</a></li>
                <li class="nav-item"><a class="nav-link js-scroll-trigger" href="#contact">로그인</a></li>
                <li class="nav-item"><a class="nav-link js-scroll-trigger" href="#contact">한국어</a></li>
            </ul>
        </div>
    </div>
</nav>
<header class="masthead">
    <div class="container">
        <div class="masthead-subheading">Welcom to SEOUL</div>
        <div class="masthead-heading text-uppercase">어서와 서울은 처음이지?</div>
        <!-- <a class="btn btn-primary btn-xl text-uppercase js-scroll-trigger" href="#services">Tell Me More</a> -->
    </div>
</header>
<section class="page-section bg-s" id="portfolio">
    <div class="container">
        <div class="text-center">
            <h3 class="section-heading">후기</h3>
        </div>
        <div class="container">
            <hr size="10px">
            <div class="row justify-content-center">
                <div class="col-lg-100">
                    <div class="modal-body">
                        <form name="form" method="post">
                            <div class="text-center">
                                글번호<input readonly="readonly" name="board_num" id="board_no" value="${board.board_no}">
                                작성자<input readonly="readonly" name="member_id" id="member_id"
                                          value="${board.member_id}">
                                제목<input readonly="readonly" name="board_title" id="board_title"
                                         value="${board_titile}">
                                내용<input readonly="readonly" name="board_contents" id="board_contents"
                                         value="${board_contents}">
                            </div>
                            <button type="button" onclick="history.back()">목록</button>
                            <button id="modify" onclick="location.href=''">수정</button>
                            <button id="delete" onclick="''">삭제</button>
                        </form>
                        <ul class="list-inline">
                            <li>Date: January 2020</li>
                            <li>Client: Threads</li>
                            <li>Category: Illustration</li>
                        </ul>
                        <div id="map" style="width:100%;height:450px;"></div>
                    </div>
                    <hr size="10px">
                </div>
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
</html>
