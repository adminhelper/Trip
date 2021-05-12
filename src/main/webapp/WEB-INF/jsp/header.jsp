<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="utf-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
                <li class="nav-item"><a class="nav-link js-scroll-trigger" href="/">오늘의 서울</a></li>
                <li class="nav-item"><a class="nav-link js-scroll-trigger" href="/">지역</a></li>
                <li class="nav-item"><a class="nav-link js-scroll-trigger" href="/board/review/boardlist">후기</a></li>
                <li class="nav-item"><a class="nav-link js-scroll-trigger" href="/">여행정보</a></li>
            </ul>
            <ul class="navbar-nav text-uppercase ml-auto">
<%--                <li class="nav-item"><a class="nav-link text-center" data-target="#myModal" data-toggle="modal"--%>
<%--                                        href="#myModal">검색</a>--%>
                </li>
                <c:if test="${member.member_id != null}">
                    <li class="nav-item"><a class="nav-link js-scroll-trigger" href="/mypage">${member.member_id}님</a>
                    </li>
                    <li class="nav-item"><a class="nav-link js-scroll-trigger" href="/logout">로그아웃</a></li>
                </c:if>
                <c:if test="${member.member_id == null}">
                    <li class="nav-item"><a class="nav-link js-scroll-trigger"  href="/login">로그인</a></li>
                    <li class="nav-item"><a class="nav-link js-scroll-trigger"  href="/member/register">회원가입</a></li>
                </c:if>
            </ul>

        </div>

    </div>
</nav>
<div class="modal modal-center fade" id="myModal" tabindex="-1" role="dialog"
     aria-labelledby="my80sizeCenterModalLabel">
    <div class="modal-dialog modal-80size modal-center" role="document">
        <div class="modal-content modal-80size">
            <div class="modal-header">
                전체 검색
            </div>
            <div class="modal-body">
                <div class="w300" style="padding-right:10px">
                    <input type="text" class="form-control form-control-sm" name="" id="" placeholder="검색어를 입력해주세요">
                </div>
                <div>
                </div>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-primary" data-dismiss="modal">검색</button>
                <button type="button" class="btn btn-dark" data-dismiss="modal">닫기</button>
            </div>
        </div>
    </div>
</div>
<!-- Masthead-->
<header class="masthead">
    <div class="container">
        <div class="masthead-subheading">Welcom to SEOUL</div>
        <div class="masthead-heading text-uppercase">어서와 서울은 처음이지?</div>
    </div>
</header>

