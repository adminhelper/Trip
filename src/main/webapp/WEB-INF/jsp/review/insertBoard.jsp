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
                        <form id="frm" name="frm" method="post" action='/board/review/insert'
                              enctype="multipart/form-data">
                            <div class="text-center" style="width: 1000px;">

                                <table class="table table-striped table-bordered">

                                    <tr>
                                        <th>제목</th>
                                        <td><input  type="text" id="board_title" name="board_title" style="width: 600px;"></td>
                                    </tr>
                                    <tr>
                                        <th>작성자</th>
                                        <td><input type="text" readonly="readonly" name="member_id"
                                                  style="width: 600px;" value="${member.member_id}">${reviewBoard.member_id}</td>
                                    </tr>
                                    <tr>
                                        <th>내용</th>
                                        <td><textarea style="width: 600px; resize: none;" rows="5" cols="13" id="board_contents"
                                                      name="board_contents"></textarea></td>
                                    </tr>
                                    <tr>
                                        <th>이미지 첨부</th>
                                        <td><input type="file" id="file1" name="files1" accept="image/*"
                                                   onchange="previewImage(this)"/>
                                            <div id="preview"></div>
                                        </td>
                                    </tr>
                                </table>
                            </div>
                            <button class="browse-btn" type="submit">작성완료</button>
                        </form>
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

<script>

    $(".browse-btn").click(function () {
        if ($("#board_title").val().trim() == '' || $("#board_title").val().trim() == null) {
            alert("제목을 입력 해주세요");
            return false;
        }
        if ($("#board_title").val().length > 10) {
            alert("글자 제한을 초과하였습니다.");
            return false;
        }
        if ($("#file1").val() == null || $("#file1").val() == ''){
            alert("이미지를 첨부해주세요") ;
            return false;
        }
    });


    function previewImage(f) {

        var file = f.files;

        // 확장자 체크
        if (!/\.(gif|jpg|jpeg|png)$/i.test(file[0].name)) {
            alert('gif, jpg, png 파일만 선택해 주세요.\n\n현재 파일 : ' + file[0].name);

            // 선택한 파일 초기화
            f.outerHTML = f.outerHTML;

            document.getElementById('preview').innerHTML = '';

        } else {

            // FileReader 객체 사용
            var reader = new FileReader();

            // 파일 읽기가 완료되었을때 실행
            reader.onload = function (rst) {
                document.getElementById('preview').innerHTML = '<img src="' + rst.target.result + '" style="height: 500px; width: 500px">';
            }

            // 파일을 읽는다
            reader.readAsDataURL(file[0]);

        }
    }

</script>
</html>
