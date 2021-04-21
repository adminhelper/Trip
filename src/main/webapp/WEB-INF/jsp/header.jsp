<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="utf-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<nav class="navbar navbar-expand-lg navbar-dark fixed-top" id="mainNav">
    <div class="container">
        <a class="navbar-brand js-scroll-trigger" href="/"><img src="/assets/img/navbar-logo.svg" alt=""/></a>
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
                <c:if test="${member.member_id != null}">
                    <li class="nav-item"><a class="nav-link js-scroll-trigger" href="/mypage">${member.member_id}님</a>
                    </li>
                    <li class="nav-item"><a class="nav-link js-scroll-trigger" href="/logout">로그아웃</a></li>
                </c:if>
                <c:if test="${member.member_id == null}">
                    <li class="nav-item"><a class="nav-link js-scroll-trigger" id = "lang" href="/login">로그인</a></li>
                </c:if>
                <li class="dropdown text-uppercase ml-auto"><a class="nav-link js-scroll-trigger" data-toggle="dropdown" href="#">Language</a>
                    <ul class="dropdown-menu text-uppercase ml-auto" role="menu" aria-labelledby="lang">
                        <li><a class="dropdown-item-text" href="#">KOR</a></li>
                        <li><a class="dropdown-item-text" href="#">ENG</a></li>
                    </ul></li>
            </ul >

        </div>

    </div>
</nav>
<!-- Masthead-->
<header class="masthead">
    <div class="container">
        <div class="masthead-subheading">Welcom to SEOUL</div>
        <div class="masthead-heading text-uppercase">어서와 서울은 처음이지?</div>
        <!-- <a class="btn btn-primary btn-xl text-uppercase js-scroll-trigger" href="#services">Tell Me More</a> -->
    </div>
</header>