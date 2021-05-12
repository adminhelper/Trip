<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="utf-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<!-- Navigation-->
<jsp:include page="head.jsp" flush="true"/>
<jsp:include page="header.jsp" flush="true"/>

<style>
    .modal-dialog.modal-80size {
        width: 80%;
        height: 80%;
        margin: 0;
        padding: 0;
    }

    .modal-content.modal-80size {
        height: auto;
        min-height: 50%;
    }

    .modal.modal-center {
        text-align: center;
    }

    @media screen and (min-width: 768px) {
        .modal.modal-center:before {
            display: inline-block;
            vertical-align: middle;
            content: " ";
            height: 100%;
        }
    }

    .modal-dialog.modal-center {
        display: inline-block;
        text-align: left;
        vertical-align: middle;
    }
</style>
<body id="page-top">
<!-- Navigation-->
<!-- Services-->
<section class="page-section" id="services">
    <div class="container">
        <div class="text-center">
            <h2 class="section-heading text-uppercase">마이페이지</h2>
            <h3 class="section-subheading text-muted">회원의 정보를 수정합니다.</h3>
        </div>
        <div class="row text-center">
            <div class="col-md-4">
            <span class="fa-stack fa-4x">
              <!-- <i class="fas fa-circle fa-stack-2x text-primary"></i> -->
              <i class="bi-cloud-sun fa-stack-1x fa-inverse fa-lg" style="color: black"></i>
            </span>
                <h4 class="my-3">아이디</h4>
                <p class="text-muted">${member.member_id}</p>
            </div>
            <div class="col-md-4">
            <span class="fa-stack fa-4x">
              <!-- <i class="fas fa-circle fa-stack-2x text-primary"></i> -->
              <i class="bi-signpost-split fa-stack-1x fa-inverse" style="color: black"></i>
                <!-- <i class="fas fa-laptop fa-stack-1x fa-inverse"></i> -->
            </span>
                <h4 class="my-3">닉네임</h4>
                <p class="text-muted">${member.member_nickname}</p>
            </div>
            <div class="col-md-4">
                <a href="#myModal" data-toggle="modal" data-target="#myModal1">
            <span class="fa-stack fa-4x">
              <!-- <i class="fas fa-circle fa-stack-2x text-primary"></i> -->
                  <i class="bi-map fa-stack-1x fa-inverse" style="color: black"></i>
            </span>
                </a>
                <h4 class="my-3">비밀번호 변경</h4></a>
                <class class="text-muted">비밀번호를 변경합니다</class>
            </div>
        </div>
    </div>
</section>
<!-- Clients-->
<div class="py-5" style="background-color: antiquewhite;">
    <div class="container">
        <div class="row">
            <div class="col-md-3 col-sm-6 my-3">
                <a href="#!"><img class="img-fluid d-block mx-auto" src="assets/img/logos/envato.jpg" alt=""/></a>
            </div>
            <div class="col-md-3 col-sm-6 my-3">
                <a href="#!"><img class="img-fluid d-block mx-auto" src="assets/img/logos/designmodo.jpg" alt=""/></a>
            </div>
            <div class="col-md-3 col-sm-6 my-3">
                <a href="#!"><img class="img-fluid d-block mx-auto" src="assets/img/logos/themeforest.jpg" alt=""/></a>
            </div>
            <div class="col-md-3 col-sm-6 my-3">
                <a href="#!"><img class="img-fluid d-block mx-auto" src="assets/img/logos/creative-market.jpg" alt=""/></a>
            </div>
        </div>
    </div>
</div>
<div class="modal modal-center fade" id="myModal1" tabindex="-1" role="dialog"
     aria-labelledby="my80sizeCenterModalLabel">
    <div class="modal-dialog modal-80size modal-center" role="document">
        <div class="modal-content modal-80size">
            <div class="modal-header">
                비밀변호 변경
            </div>
            <div class="modal-body">
                새로운 비밀번호를 입력해주세요
                <input type="password" id="pwd1" name="pwd1" value=""><br>
                한번더 비밀번호를 입력해주세요
                <input type="password" id="pwd2" name="pwd2" value="">
                <div></div>
                <div id="pwcheck"></div>
                <div id="pwcheck1"></div>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-primary" data-dismiss="modal" onclick="check1()">등록</button>
                <button type="button" class="btn btn-dark" data-dismiss="modal">닫기</button>
            </div>
        </div>
    </div>
</div>

<!-- Bootstrap core JS-->
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js"></script>
<!-- Third party plugin JS-->
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-easing/1.4.1/jquery.easing.min.js"></script>
<!-- Contact form JS-->
<script src="assets/mail/jqBootstrapValidation.js"></script>
<script src="assets/mail/contact_me.js"></script>
<!-- Core theme JS-->
<script src="js/scripts.js"></script>
<script>
    var validate = false;
    var pwd = /^.*(?=^.{8,20}$)(?=.*\d)(?=.*[a-zA-Z])(?=.*[!@#$%^&+=]).*$/;
    var blank = /\s/g;

    // 2.패스워드 유효성 검증
    $('#pwd1').keyup(function () {
        var member_password = $('#pwd1').val();
        if (!pwd.test($(this).val()) || blank.test($(this).val())) {
            //alert("패스워드"+$(this).val());
            $('#pwcheck').text("8~20자에 특수문자가 반드시 포함된 영어 대소문자 + 숫자를 사용하세요");
            $('#pwcheck').css('color', 'red');
            validate = false;
        } else {
            $('#pwcheck').text("사용가능한 패스워드");
            $('#pwcheck').css('color', 'blue');
            validate = true;
        }
    });
    // 3.패스워드 일치여부 확인
    $('#pwd1,#pwd2').keyup(function () {
        if ($('#pwd2').val() != $('#pwd1').val()) {
            $('#pwcheck1').text("비밀번호가 다릅니다.");
            $('#pwcheck1').css('color', 'red');
            validate = false;
        } else if (!pwd.test($(this).val()) || blank.test($(this).val())) {
            $('#pwcheck1').text("패스워드를 재입력 바람!");
            $('#pwcheck1').css('color', 'red');
            validate = false;
        } else {
            $('#pwcheck1').text("비밀번호가 일치합니다.");
            $('#pwcheck1').css('color', 'blue');
            validate = true;
        }

    });

    function check1() {
        if (validate == true) {
            $.ajax({
                url: "/modify",
                type: "POST",
                async: true,
                data: {
                    pwd: $("#pwd2").val()
                },
                success: function (data) {
                    if (data == 2) {
                        alert("비밀번호 변경 성공 다시 로그인해주세요");
                        location.href = "/";
                    } else {
                        alert("기존 비밀번호랑 일치합니다 다른비밀번호를 입력해주세요");
                    }
                }, error: function (data) {
                }
            });
        } else {
            alert("두개의 비밀번호가 일치 않습니다.");
        }
    }
</script>
</body>
</html>
