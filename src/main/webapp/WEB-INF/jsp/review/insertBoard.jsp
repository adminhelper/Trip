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
                        <form id="frm" name="frm" method="post"  action='/board/review/insert' enctype="multipart/form-data">
                            <div class="text-center">

                                <table class="table table-striped table-bordered">

                                    <tr>
                                        <th>제목</th>
                                        <td><input type="text" id="board_title" name="board_title"></td>
                                    </tr>
                                    <tr>
                                        <th>작성자</th>
                                        <td><input type="text" readonly="readonly" name="member_id"
                                                   value="${member.member_id}">${board.member_id}</td>
                                    </tr>
                                    <tr>
                                        <th>내용</th>
                                        <td><textarea rows="5" cols="13" id="board_contents"
                                                      name="board_contents"></textarea></td>
                                    </tr>
                                    <tr>
                                        <th>이미지 첨부</th>
                                        <td><input type="file" name="files" id="files" multiple="multiple"/>
                                            <div class="select_img"><img src=""/>
                                            </div>
                                        </td>
                                    </tr>
                                </table>
                            </div>
                            <button class="btn-primary" type="submit">작성완료</button>
                        </form>
                    </div>
                </div>
            </div>
            <hr size="10px">
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

<script>
    $("#files").change(function () {
        if (this.files && this.files[0]) {
            var reader = new FileReader;
            reader.onload = function (data) {
                $(".select_img img").attr("src", data.target.result).width(500);
            }
            reader.readAsDataURL(this.files[0]);
        }
    });
</script>
</html>
