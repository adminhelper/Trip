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
                                         value="${board.board_title}">
                                내용<input readonly="readonly" name="board_contents" id="board_contents"
                                         value="${board.board_contents}">
                            </div>
                            <button type="button" onclick="location.href='/board/review/boardlist'">목록</button>
                            <button id="modify" type="button" onclick="location.href='/board/review/modifyform?no=${board.board_no}'">수정</button>
                            <button id="delete" type="button" onclick="location.href='/board/review/delete?no=${board.board_no}'">삭제</button>
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
