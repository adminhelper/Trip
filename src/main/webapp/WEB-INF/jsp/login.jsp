<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="utf-8" %>
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
    <!-- 로그인css&link========================================================================================-->
    <link rel="stylesheet" type="text/css" href="/login/vendor/bootstrap/css/bootstrap.min.css"/>
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="/login/fonts/font-awesome-4.7.0/css/font-awesome.min.css"/>
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="/login/fonts/iconic/css/material-design-iconic-font.min.css"/>
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="/login/vendor/animate/animate.css"/>
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="/login/vendor/css-hamburgers/hamburgers.min.css"/>
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="/login/vendor/animsition/css/animsition.min.css"/>
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="/login/vendor/select2/select2.min.css"/>
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="/login/vendor/daterangepicker/daterangepicker.css"/>
    <link rel="stylesheet" type="text/css" href="/login/css/util.css"/>
    <link rel="stylesheet" type="text/css" href="/login/css/main.css"/>

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
                <li class="nav-item"><a class="nav-link js-scroll-trigger" href="/">오늘의 서울</a></li>
                <li class="nav-item"><a class="nav-link js-scroll-trigger" href="#portfolio">지역</a></li>
                <li class="nav-item"><a class="nav-link js-scroll-trigger" href="/board/review/boardlist">후기</a></li>
                <li class="nav-item"><a class="nav-link js-scroll-trigger" href="#team">여행정보</a></li>
            </ul>
            <ul class="navbar-nav text-uppercase ml-auto">
                <li class="nav-item"><a class="nav-link js-scroll-trigger" href="#contact">검색</a></li>
                <li class="nav-item"><a class="nav-link js-scroll-trigger" href="/login">로그인</a></li>
                <li class="nav-item"><a class="nav-link js-scroll-trigger" href="#contact">한국어</a></li>
            </ul>
        </div>
    </div>
</nav>
<!-- Services-->
<div class="limiter">
    <div class="container-login100" id="login">
        <div class="wrap-login100">
            <form class="login100-form validate-form">
                <span class="login100-form-title p-b-24"> 로그인 </span>

                <div class="wrap-input100 validate-input" data-validate="아이디를 입력해주세요">
                    <input class="input100" type="text" name="id" id="id"/>
                    <span class="focus-input100" data-placeholder="id"></span>
                </div>

                <div class="wrap-input100 validate-input" data-validate="비밀번호를 입력해주세요">
              <span class="btn-show-pass">
                <i class="zmdi zmdi-eye"></i>
              </span>
                    <input class="input100" type="password" name="pass" id="pass"/>
                    <span class="focus-input100" data-placeholder="Password"></span>
                </div>
                <div id = "p"></div>

                <div class="container-login100-form-btn">
                    <div class="wrap-login100-form-btn">
                        <div class="login100-form-bgbtn"></div>
                        <button type="button" class="login100-form-btn" id="login_btn">Login</button>
                    </div>
                </div>

                <div class="text-center p-t-115">
                    <span class="txt1"> 회원가입 하시겠습니까? </span>

                    <a class="txt2" href="/member/register"> 회원가입 </a>
                </div>
            </form>
        </div>
    </div>
</div>
<!-- Bootstrap core JS-->
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js"></script>
<!-- Third party plugin JS-->
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-easing/1.4.1/jquery.easing.min.js"></script>
<!-- Contact form JS-->
<script src="/assets/mail/jqBootstrapValidation.js"></script>
<script src="/assets/mail/contact_me.js"></script>
<!-- Core theme JS-->
<script src="/js/scripts.js"></script>


<!--===============================================================================================-->
<script src="/login/vendor/jquery/jquery-3.2.1.min.js"></script>
<!--===============================================================================================-->
<script src="/login/vendor/animsition/js/animsition.min.js"></script>
<!--===============================================================================================-->
<script src="/login/vendor/bootstrap/js/popper.js"></script>
<script src="/login/vendor/bootstrap/js/bootstrap.min.js"></script>
<!--===============================================================================================-->
<script src="/login/vendor/select2/select2.min.js"></script>
<!--===============================================================================================-->
<script src="/login/vendor/daterangepicker/moment.min.js"></script>
<script src="/login/vendor/daterangepicker/daterangepicker.js"></script>
<!--===============================================================================================-->
<script src="/login/vendor/countdowntime/countdowntime.js"></script>
<!--===============================================================================================-->
<script src="/login/js/main.js"></script>
</body>
<script>
    $(document).ready(function () {
        $("#login_btn").on('click', function () {
            loginCheck();
        });
    });

    function loginCheck() {
        $.ajax({
            url: "/member/loginCheck",
            type: "POST",
            data: {
                member_id: $("#id").val(),
                member_password: $("#pass").val()
            },
            success: function (data) {
                if (data == 1) {
                    location.href = "/";
                }else{
                    $('#p').text('아이디와 비밀번호를 확인해주세요 :)');
                    $('#p').css('color', 'red');
                }
            },
            error: function () {
            }
        });
    }
</script>
</html>