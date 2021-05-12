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
                <div class="col-lg-8">
                    <div class="modal-body">
                        <!-- Project Details Go Here-->
                        <form name="form" method="post">
                            <table class="table table-striped table-bordered">
                                <tr>
                                    <th>글번호
                                    ${board.board_no}</th>
                                </tr>
                                <tr>
                                    <th>제목
                                    <input readonly="readonly" name="board_title" id="board_title"
                                               value="${board.board_title}"></th>
                                </tr>
                                <tr>
                                    <th>작성자
                                   <input readonly="readonly" name="member_id" id="member_id"
                                               value="${board.member_id}"></th>
                                </tr>
                                <tr>
                                    <th>내용
                                   <input readonly="readonly" name="board_contents" id="board_contents"
                                               value="${board.board_contents}"></th>
                                </tr>
                                <tr>
                                    <th>
                                    <img class="img-fluid" src="/${board.file_name}"/></th>
                                </tr>
                                <div style="text-align: right;">
                                    <button type="button" onclick="location.href='/board/review/boardlist'">목록</button>
                                    <c:if test="${sessionScope.member.member_id eq board.member_id}">
                                        <button id="modify" type="button"
                                                onclick="location.href='/board/review/modifyform?no=${board.board_no}'">
                                            수정
                                        </button>

                                        <button id="delete" type="button"
                                                onclick="location.href='/board/review/delete?no=${board.board_no}'">삭제
                                        </button>
                                    </c:if>
                                    <a class="btn btn-outline-dark heart" style="border : 0px solid" ;>
                                        <img id="heart" src="" style="width: 30px">
                                    </a>
                                </div>
                            </table>
                        </form>
                    </div>
                </div>
            </div>
            <hr size="10px">
        </div>
    </div>
</section>
</body>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"
        integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4="
        crossorigin="anonymous"></script>
<script>

    $(document).ready(function () {
        var heartval = ${heart};

        if (heartval > 0) {
            console.log(heartval);
            $("#heart").prop("src", "/img/like1.png");
            $(".heart").prop('name', heartval)
        } else {
            console.log(heartval);
            $("#heart").prop("src", "/img/like2.png");
            $(".heart").prop('name', heartval)
        }

        $(".heart").on("click", function () {
            if (${empty sessionScope.member}) {
                alert("로그인해주세요");
            } else {

                var that = $(".heart");

                var sendData = {'boardId': '${board.board_no}', 'heart': that.prop('name')};
                $.ajax({
                    url: '/board/heart',
                    type: 'POST',
                    data: sendData,
                    success: function (data) {
                        that.prop('name', data);
                        if (data == 1) {
                            $('#heart').prop("src", "/img/like1.png");
                        } else {
                            $('#heart').prop("src", "/img/like2.png");
                        }
                    }
                });
            }
        });
    });
</script>

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
