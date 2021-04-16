<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="utf-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
    <meta name="description" content="" />
    <meta name="author" content="" />
    <title>오늘의 서울</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css" />
    <link rel="icon" type="image/x-icon" href="/assets/img/favicon.ico" />
    <!-- Font Awesome icons (free version)-->
    <script src="https://use.fontawesome.com/releases/v5.15.1/js/all.js" crossorigin="anonymous"></script>
    <!-- Google fonts-->
    <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet" type="text/css" />
    <link href="https://fonts.googleapis.com/css?family=Droid+Serif:400,700,400italic,700italic" rel="stylesheet" type="text/css" />
    <link href="https://fonts.googleapis.com/css?family=Roboto+Slab:400,100,300,700" rel="stylesheet" type="text/css" />
    <!-- Core theme CSS (includes Bootstrap)-->
    <link href="/css/styles.css" rel="stylesheet" />
    <!-- 로그인css&link========================================================================================-->
    <link rel="stylesheet" type="text/css" href="/login/vendor/bootstrap/css/bootstrap.min.css" />
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="/login/fonts/font-awesome-4.7.0/css/font-awesome.min.css" />
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="/login/fonts/iconic/css/material-design-iconic-font.min.css" />
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="/login/vendor/animate/animate.css" />
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="/login/vendor/css-hamburgers/hamburgers.min.css" />
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="/login/vendor/animsition/css/animsition.min.css" />
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="/login/vendor/select2/select2.min.css" />
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="/login/vendor/daterangepicker/daterangepicker.css" />
    <link rel="stylesheet" type="text/css" href="/login/css/util.css" />
    <link rel="stylesheet" type="text/css" href="/login/css/main.css" />

</head>
<body id="page-top">
<!-- Navigation-->
<nav class="navbar navbar-expand-lg navbar-dark fixed-top" id="mainNav">
    <div class="container">
        <a class="navbar-brand js-scroll-trigger" href="/"><img src="/assets/img/navbar-logo.svg" alt="" /></a>
        <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
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
<!-- Services-->
<div class="limiter">
    <div class="container-login100" id =login>
        <div class="wrap-login100">
            <form class="login100-form validate-form" action="/member/join" method="post">
                <span class="login100-form-title p-b-26"> 회원가입 </span>

                <div class="wrap-input100 validate-input" data-validate="Valid email is: a@b.c">
                    <input class="input100" type="text" name="member_id" />
                    <span class="focus-input100" data-placeholder="id"></span>
                </div>

                <div class="wrap-input100 validate-input" data-validate="비밀번호를 입력해주세">
              <span class="btn-show-pass">
                <i class="zmdi zmdi-eye"></i>
              </span>
                    <input class="input100" type="password" name="member_password" />
                    <span class="focus-input100" data-placeholder="Password"></span>
                </div>
                <div class="wrap-input100 validate-input" data-validate="비밀번호를 입력해주세요">
              <span class="btn-show-pass">
                <i class="zmdi zmdi-eye"></i>
              </span>
                    <input class="input100" type="password" name="member_password" />
                    <span class="focus-input100" data-placeholder="Password"></span>
                </div>

                <div class="wrap-input100 validate-input" data-validate="닉네임을 입력해주세요">
                    <input class="input100" type="text" name="member_nickname" />
                    <span class="focus-input100" data-placeholder="Nickname"></span>
                </div>

                <div class="container-login100-form-btn">
                    <div class="wrap-login100-form-btn">
                        <div class="login100-form-bgbtn"></div>
                        <button class="login100-form-btn" type="submit">회원가입</button>
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

<div id="dropDownSelect1"></div>
<!-- Clients-->
<div class="py-5">
    <div class="container">
        <div class="row">
            <div class="col-md-3 col-sm-6 my-3">
                <a href="#!"><img class="img-fluid d-block mx-auto" src="/assets/img/logos/envato.jpg" alt="" /></a>
            </div>
            <div class="col-md-3 col-sm-6 my-3">
                <a href="#!"><img class="img-fluid d-block mx-auto" src="/assets/img/logos/designmodo.jpg" alt="" /></a>
            </div>
            <div class="col-md-3 col-sm-6 my-3">
                <a href="#!"><img class="img-fluid d-block mx-auto" src="/assets/img/logos/themeforest.jpg" alt="" /></a>
            </div>
            <div class="col-md-3 col-sm-6 my-3">
                <a href="#!"><img class="img-fluid d-block mx-auto" src="/assets/img/logos/creative-market.jpg" alt="" /></a>
            </div>
        </div>
    </div>
</div>
<!-- Contact-->
<!-- <section class="page-section" id="contact">
  <div class="container">
    <div class="text-center">
      <h2 class="section-heading text-uppercase">Contact Us</h2>
      <h3 class="section-subheading text-muted">Lorem ipsum dolor sit amet consectetur.</h3>
    </div>
    <form id="contactForm" name="sentMessage" novalidate="novalidate">
      <div class="row align-items-stretch mb-5">
        <div class="col-md-6">
          <div class="form-group">
            <input class="form-control" id="name" type="text" placeholder="Your Name *" required="required" data-validation-required-message="Please enter your name." />
            <p class="help-block text-danger"></p>
          </div>
          <div class="form-group">
            <input class="form-control" id="email" type="email" placeholder="Your Email *" required="required" data-validation-required-message="Please enter your email address." />
            <p class="help-block text-danger"></p>
          </div>
          <div class="form-group mb-md-0">
            <input class="form-control" id="phone" type="tel" placeholder="Your Phone *" required="required" data-validation-required-message="Please enter your phone number." />
            <p class="help-block text-danger"></p>
          </div>
        </div>
        <div class="col-md-6">
          <div class="form-group form-group-textarea mb-md-0">
            <textarea class="form-control" id="message" placeholder="Your Message *" required="required" data-validation-required-message="Please enter a message."></textarea>
            <p class="help-block text-danger"></p>
          </div>
        </div>
      </div>
      <div class="text-center">
        <div id="success"></div>
        <button class="btn btn-primary btn-xl text-uppercase" id="sendMessageButton" type="submit">Send Message</button>
      </div>
    </form>
  </div>
</section> -->
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
<!-- Portfolio Modals-->
<!-- Modal 1-->
<div class="portfolio-modal modal fade" id="portfolioModal1" tabindex="-1" role="dialog" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="close-modal" data-dismiss="modal"><img src="/assets/img/close-icon.svg" alt="Close modal" /></div>
            <div class="container">
                <div class="row justify-content-center">
                    <div class="col-lg-8">
                        <div class="modal-body">
                            <!-- Project Details Go Here-->
                            <h2 class="text-uppercase">Project Name</h2>
                            <p class="item-intro text-muted">Lorem ipsum dolor sit amet consectetur.</p>
                            <img class="img-fluid d-block mx-auto" src="/assets/img/portfolio/01-full.jpg" alt="" />
                            <p>
                                Use this area to describe your project. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Est blanditiis dolorem culpa incidunt minus dignissimos deserunt repellat aperiam quasi sunt officia expedita beatae cupiditate, maiores repudiandae, nostrum, reiciendis facere nemo!
                            </p>
                            <ul class="list-inline">
                                <li>Date: January 2020</li>
                                <li>Client: Threads</li>
                                <li>Category: Illustration</li>
                            </ul>
                            <button class="btn btn-primary" data-dismiss="modal" type="button">
                                <i class="fas fa-times mr-1"></i>
                                Close Project
                            </button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- Modal 3-->
<div class="portfolio-modal modal fade" id="portfolioModal3" tabindex="-1" role="dialog" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="close-modal" data-dismiss="modal"><img src="/assets/img/close-icon.svg" alt="Close modal" /></div>
            <div class="container">
                <div class="row justify-content-center">
                    <div class="col-lg-8">
                        <div class="modal-body">
                            <!-- Project Details Go Here-->
                            <h2 class="text-uppercase">Project Name</h2>
                            <p class="item-intro text-muted">Lorem ipsum dolor sit amet consectetur.</p>
                            <img class="img-fluid d-block mx-auto" src="/assets/img/portfolio/03-full.jpg" alt="" />
                            <p>
                                Use this area to describe your project. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Est blanditiis dolorem culpa incidunt minus dignissimos deserunt repellat aperiam quasi sunt officia expedita beatae cupiditate, maiores repudiandae, nostrum, reiciendis facere nemo!
                            </p>
                            <ul class="list-inline">
                                <li>Date: January 2020</li>
                                <li>Client: Finish</li>
                                <li>Category: Identity</li>
                            </ul>
                            <button class="btn btn-primary" data-dismiss="modal" type="button">
                                <i class="fas fa-times mr-1"></i>
                                Close Project
                            </button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- Modal 4-->
<div class="portfolio-modal modal fade" id="portfolioModal4" tabindex="-1" role="dialog" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="close-modal" data-dismiss="modal"><img src="/assets/img/close-icon.svg" alt="Close modal" /></div>
            <div class="container">
                <div class="row justify-content-center">
                    <div class="col-lg-8">
                        <div class="modal-body">
                            <!-- Project Details Go Here-->
                            <h2 class="text-uppercase">Project Name</h2>
                            <p class="item-intro text-muted">Lorem ipsum dolor sit amet consectetur.</p>
                            <img class="img-fluid d-block mx-auto" src="/assets/img/portfolio/04-full.jpg" alt="" />
                            <p>
                                Use this area to describe your project. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Est blanditiis dolorem culpa incidunt minus dignissimos deserunt repellat aperiam quasi sunt officia expedita beatae cupiditate, maiores repudiandae, nostrum, reiciendis facere nemo!
                            </p>
                            <ul class="list-inline">
                                <li>Date: January 2020</li>
                                <li>Client: Lines</li>
                                <li>Category: Branding</li>
                            </ul>
                            <button class="btn btn-primary" data-dismiss="modal" type="button">
                                <i class="fas fa-times mr-1"></i>
                                Close Project
                            </button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- Modal 5-->
<div class="portfolio-modal modal fade" id="portfolioModal5" tabindex="-1" role="dialog" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="close-modal" data-dismiss="modal"><img src="/assets/img/close-icon.svg" alt="Close modal" /></div>
            <div class="container">
                <div class="row justify-content-center">
                    <div class="col-lg-8">
                        <div class="modal-body">
                            <!-- Project Details Go Here-->
                            <h2 class="text-uppercase">Project Name</h2>
                            <p class="item-intro text-muted">Lorem ipsum dolor sit amet consectetur.</p>
                            <img class="img-fluid d-block mx-auto" src="/assets/img/portfolio/05-full.jpg" alt="" />
                            <p>
                                Use this area to describe your project. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Est blanditiis dolorem culpa incidunt minus dignissimos deserunt repellat aperiam quasi sunt officia expedita beatae cupiditate, maiores repudiandae, nostrum, reiciendis facere nemo!
                            </p>
                            <ul class="list-inline">
                                <li>Date: January 2020</li>
                                <li>Client: Southwest</li>
                                <li>Category: Website Design</li>
                            </ul>
                            <button class="btn btn-primary" data-dismiss="modal" type="button">
                                <i class="fas fa-times mr-1"></i>
                                Close Project
                            </button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- Modal 6-->
<div class="portfolio-modal modal fade" id="portfolioModal6" tabindex="-1" role="dialog" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="close-modal" data-dismiss="modal"><img src="/assets/img/close-icon.svg" alt="Close modal" /></div>
            <div class="container">
                <div class="row justify-content-center">
                    <div class="col-lg-8">
                        <div class="modal-body">
                            <!-- Project Details Go Here-->
                            <h2 class="text-uppercase">Project Name</h2>
                            <p class="item-intro text-muted">Lorem ipsum dolor sit amet consectetur.</p>
                            <img class="img-fluid d-block mx-auto" src="/assets/img/portfolio/06-full.jpg" alt="" />
                            <p>
                                Use this area to describe your project. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Est blanditiis dolorem culpa incidunt minus dignissimos deserunt repellat aperiam quasi sunt officia expedita beatae cupiditate, maiores repudiandae, nostrum, reiciendis facere nemo!
                            </p>
                            <ul class="list-inline">
                                <li>Date: January 2020</li>
                                <li>Client: Window</li>
                                <li>Category: Photography</li>
                            </ul>
                            <button class="btn btn-primary" data-dismiss="modal" type="button">
                                <i class="fas fa-times mr-1"></i>
                                Close Project
                            </button>
                        </div>
                    </div>
                </div>
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
</html>
