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
        <a class="navbar-brand js-scroll-trigger" href="/"><img src="/assets/img/navbar-logo.svg" alt=""/></a>
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
                <li class="nav-item"><a class="nav-link js-scroll-trigger" href="/reviewBoard/review/boardlist">후기</a>
                </li>
                <li class="nav-item"><a class="nav-link js-scroll-trigger" href="/">여행정보</a></li>
            </ul>
            <ul class="navbar-nav text-uppercase ml-auto">
<%--                <li class="nav-item"><a class="nav-link js-scroll-trigger" href="#contact">검색</a></li>--%>
                <li class="nav-item"><a class="nav-link js-scroll-trigger" href="/login">로그인</a></li>
<%--                <li class="nav-item"><a class="nav-link js-scroll-trigger" href="#contact">한국어</a></li>--%>
            </ul>
        </div>
    </div>
</nav>
<!-- Services-->
<div class="limiter">
    <div class="container-login100" id=login>
        <div class="wrap-login100">
            <form class="login100-form validate-form" action="/member/register" method="post">
                <span class="login100-form-title p-b-26"> 회원가입 </span>

                <div class="wrap-input100 validate-input" data-validate="아이디를 입력해주세요">
                    <input class="input100" type="text" name="member_id" id="member_id"/>
                    <span class="focus-input100" data-placeholder="id"></span>
                </div>
                <div id="id_check"></div>


                <div class="wrap-input100 validate-input" data-validate="닉네임을 입력해주세요">
                    <input class="input100" type="text" name="member_nickname" id="member_nickname"/>
                    <span class="focus-input100" data-placeholder="Nickname"></span>
                </div>
                <div id="nickname_check"></div>
                <div class="wrap-input100 validate-input" data-validate="비밀번호를 입력해주세요">
              <span class="btn-show-pass">
                <i class="zmdi zmdi-eye"></i>
              </span>
                    <input class="input100" type="password" name="member_password" id="member_password"/>
                    <span class="focus-input100" data-placeholder="Password"></span>
                </div>
                <div id="pwd"></div>
                <div class="wrap-input100 validate-input" data-validate="비밀번호를 입력해주세요">
              <span class="btn-show-pass">
                <i class="zmdi zmdi-eye"></i>
              </span>
                    <input class="input100" type="password" name="member_password2" id="member_password2"/>
                    <span class="focus-input100" data-placeholder="Password"></span>
                </div>
                <div id="pwd_check"></div>

                <div class="wrap-input100 validate-input" data-validate="핸드폰번호를 입력해주세요">
                    <input class="input100" type="tel" name="member_phone" id="member_phone"/>
                    <span class="focus-input100" data-placeholder="Phone"></span>
                </div>
                <div id="phonecheck"></div>
                <div class="container-login100-form-btn">
                    <div class="wrap-login100-form-btn">
                        <div class="login100-form-bgbtn"></div>
                        <button class="login100-form-btn" type="submit" id="register_button">회원가입</button>
                    </div>
                </div>
                <div class="text-center p-t-115">
                    <span class="txt1"> 가입을 취소하시겠습니까? </span>

                    <a class="txt2" href="/login"> 뒤로가기 </a>
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
<script>

    var validate = new Array; // 회원가입 유효성을 검사할 배열 (false - 유효성 검증 실패 , true - 유효성 검증 성공)
    // vaildate[0]-아이디 , vaildate[1]-패스워드 , validate[2]-패스워드확인 , validate[3]-닉네임
    for (let i = 0; i < 5; i++) {
        validate[i] = false;
    }

    var id = /^[a-zA-Z0-9]{5,12}$/; //ID 정규표현식
    var nickname = /^([a-zA-Z0-9ㄱ-ㅎ|ㅏ-ㅣ|가-힣]).{1,10}$/; //닉네임 정규표현식
    // 패스워드 정규표현식
    var pwd = /^.*(?=^.{8,20}$)(?=.*\d)(?=.*[a-zA-Z])(?=.*[!@#$%^&+=]).*$/;
    var blank = /\s/g;
    var phone = /^\d{3}-\d{3,4}-\d{4}$/;


    // 1.아이디 유효성 검사(1 = 중복 / 0 != 중복)
    $("#member_id").keyup(function () {
        var member_id = $('#member_id').val();

        // 비동기 방식으로 ID 중복체크 하기 (공백이 아닐경우에 한해서)
        if (member_id != '') {
            $.ajax({
                async: true, // true 설멍하면 비동기 방식을 사용하겠다(기본값:true)
                url: 'idCheck', // 요청을 받을 컨트롤러
                type: 'POST',
                data: member_id,
                contentType: 'application/json; charset=UTF-8', // json 형식으로 서버로 보낼때 설정값
                success: function (data) {
                    console.log("1 = 중복o / 0 = 중복x : " + data);
                    if (data == 1) {
                        // 1 : 아이디가 중복될때
                        $("#id_check").text("사용중인 아이디입니다 :(");
                        $("#id_check").css("color", "red");
                        validate[0] = false;
                    } else { // 2 : 중복되는 아이디가 없는 경우 정규 표현식 검증
                        if (!id.test(member_id)) {
                            $('#id_check').text("영문 대소문자,숫자 5~12자리만 가능");
                            $('#id_check').css('color', 'red');
                            validate[0] = false;
                        } else if (id.test(member_id)) {
                            //사용가능
                            $('#id_check').text("사용가능한ID입니다 :)");
                            $('#id_check').css('color', 'blue');
                            validate[0] = true;
                        }
                    }
                },
                error: function () {
                    console.log("중복되는 ID 찾는 도중 에러발생...");
                }
            });
        } else { // ID 입력칸이 비어있을 경우
            $('#id_check').text('아이디를 입력해주세요 :)');
            $('#id_check').css('color', 'red');
            validate[0] = false;
        }
    });

    // 2.패스워드 유효성 검증
    $('#member_password').keyup(function () {
        var member_password = $('#member_password').val();
        if (!pwd.test($(this).val()) || blank.test($(this).val())) {
            //alert("패스워드"+$(this).val());
            $('#pwd').text("8~20자에 특수문자가 반드시 포함된 영어 대소문자 + 숫자를 사용하세요");
            $('#pwd').css('color', 'red');
            validate[1] = false;
        } else {
            $('#pwd').text("사용가능한 패스워드");
            $('#pwd').css('color', 'blue');
            validate[1] = true;
        }

    });

    // 3.패스워드 일치여부 확인
    $('#member_password,#member_password2').keyup(function () {
        if ($('#member_password2').val() != $('#member_password').val()) {
            $('#pwd_check').text("비밀번호가 다릅니다.");
            $('#pwd_check').css('color', 'red');
            validate[2] = false;
        } else if ($('#member_password2').val() == '') {
            $('#pwd_check').text("패스워드를 재입력 바람!");
            $('#pwd_check').css('color', 'red');
            validate[2] = false;
        } else {
            $('#pwd_check').text("비밀번호가 일치합니다.");
            $('#pwd_check').css('color', 'blue');
            validate[2] = true;
        }

    });

    // 4.닉네임 유효성 검사(1 = 중복 / 0 != 중복)
    $("#member_nickname").keyup(function () {
        var member_nickname = $('#member_nickname').val();

        // 비동기 방식으로 닉네임 중복체크 하기
        if ($('#member_nickname').val() != '') {
            $.ajax({
                async: true, // true 설멍하면 비동기 방식을 사용하겠다(기본값:true)
                url: 'nicknameCheck', // 요청을 받을 컨트롤러
                type: 'POST',
                data: member_nickname,
                contentType: 'application/json; charset=UTF-8', // json 형식으로 서버로 보낼때 설정값
                success: function (data) {
                    if (data == 1) {
                        // 1 : 닉네임 중복될때
                        $("#nickname_check").text("사용중인 닉네임입니다!");
                        $("#nickname_check").css("color", "red");
                        validate[3] = false;
                    } else { // 2 : 중복되는 닉네임이 없는 경우
                        if (!nickname.test(member_nickname)) {
                            $('#nickname_check').text("닉네임은 한글, 영문, 숫자만 가능하며 2-10자리 가능합니다");
                            $('#nickname_check').css('color', 'red');
                            validate[3] = false;
                        } else if (nickname.test(member_nickname)) {
                            //사용가능
                            $('#nickname_check').text("사용가능한 닉네임 입니다 :) :)");
                            $('#nickname_check').css('color', 'blue');
                            validate[3] = true;
                        }
                    }
                },
                error: function () {
                    console.log("중복되는 닉네임 찾는 도중 에러발생...");
                }
            });
        } else { // ID 입력칸이 비어있을 경우
            $('#nickname_check').text('닉네임을 입력해주세요 :)');
            $('#nickname_check').css('color', 'red');
            validate[3] = false;
        }
    });

    // 5.폰 유효성 검증
    $('#member_phone').keyup(function () {
        var member_phone = $('#member_phone').val();
        if(!phone.test($(this).val()) || blank.test($(this).val())){
            $('#phonecheck').text("-를 포함해서 입력해주시기바람니다  ex)01x-xxxx-xxxx");
            $('#phonecheck').css('color', 'red');
            validate[4] = false;
        }else if (($(this).val().length < 12) || blank.test($(this).val())) {
            //alert("패스워드"+$(this).val());
            $('#phonecheck').text("핸드폰 번호를 확인 해주시기바랍니다.");
            $('#phonecheck').css('color', 'blue');
            validate[4] = false;
        }else{
            $('#phonecheck').text("사용가능한 핸드폰");
            $('#phonecheck').css('color', 'blue');
            validate[4] = true;
        }

    });


    // 5.가입버튼 클릭시 유효성 검증 (validate 전체 배열중 하나라도 false 값이 있으면 회원가입 X)
    //$('button:submit').click
    $('#reg_submit').click(function () {
        //유효성 검증
        for (let i = 0; i < validate.length; i++) {
            if (validate[i] == false) {
                console.log(i);
                switch (i) {
                    case 0:
                        $('#member_id').focus();
                        $('#id_check').text('아이디를  다시 확인 바람!');
                        $('#id_check').css('color', 'red');
                        return false;
                    case 1:
                        $('#member_password').focus();
                        $('#pwd').text('패스워드를  다시 확인 바람!');
                        $('#pwd').css('color', 'red');
                        return false;
                    case 2:
                        $('#member_password2').focus();
                        $('#pwd_check').text('패스워드  다시 확인 바람!');
                        $('#pwd_check').css('color', 'red');
                        return false;
                    case 3:
                        $('#member_nickname').focus();
                        $('#nickname_check').text('닉네임  다시 확인 바람!');
                        $('#nickname_check').css('color', 'red');
                        return false;
                    case 4:
                        $('#member_phone').focus();
                        $('#member_phone').text('휴대폰 다시 확인 바람!');
                        $('#member_phone').css('color', 'red');
                        return false;
                }
            }
        }

    });
</script>
</body>
<script>
</script>
</html>
