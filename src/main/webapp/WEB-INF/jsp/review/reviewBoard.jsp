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
            <h2 class="section-heading text-uppercase">후기</h2>
            <h3 class="section-subheading text-muted">생생한 후기를 전달합니다.</h3>
        </div>


        <div class="row">
            <c:forEach items="${review}" var="data">
                <div class="col-lg-3 col-sm-6">
                    <div class="portfolio-item">
                        <a class="portfolio-link" href="/board/review/detail?no=${data.board_no}">
                            <div class="portfolio-hover">
                                <div class="portfolio-hover-content"><i class="fas fa-plus fa-3x"></i></div>
                            </div>
                            <img class="img-fluid" src="${data.file_name}"/>
                        </a>

                        <div class="portfolio-caption">
                            <div class="portfolio-caption-heading">${data.board_title}</div>
                            <div class="portfolio-caption-subheading text-muted">${data.member_nickname}      조회수 ${data.board_likecnt}</div>
                        </div>

                    </div>
                </div>
            </c:forEach>
            </a>
        </div>

    </div>

    <nav aria-label="Page navigation example">
        <ul class="pagination justify-content-center">
            <button class="btn btn-primary" type="button" id="ck"
                    onclick="location.href='/board/review/insertboard'">
                글쓰기
            </button>
            <c:if test="${paging.prev}">
                <li class="page-item">

                    <a class="page-link" style="color: black"
                       href="<c:url value='boardlist?pageNum=${paging.startPage-1}'/>" aria-label="Previous">
                        이전
                    </a>

                </li>
            </c:if>
            <c:forEach begin="${paging.startPage}" end="${paging.endPage}" var="num">
                <li class="page-item"><a class="page-link" style="color: black"
                                         href="<c:url value='boardlist?pageNum=${num}'/>">${num}</a></li>
            </c:forEach>
            <c:if test="${paging.next && paging.endPage>0}">
                <li class="page-item">
                    <a class="page-link" style="color: black"
                       href="<c:url value='boardlist?pageNum=${paging.endPage+1}'/>"
                       aria-label="Next">
                        다음
                    </a>
                </li>
            </c:if>
        </ul>
        <div class="form-group row justify-content-center">
            <div class="w100" style="padding-right:10px">
                <select class="form-control form-control-sm" name="searchType" id="searchType">
                    <option value="board_title">제목</option>
                    <option value="member_nickname">작성자</option>
                </select>
            </div>
            <div class="w300" style="padding-right:10px">
                <input type="text" class="form-control form-control-sm" name="keyword" id="keyword">
            </div>
            <div>
                <button class="btn btn-sm btn-primary" name="btnSearch" id="btnSearch">검색</button>
            </div>
        </div>
    </nav>
</section>

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
<c:url var="getBoardListURL" value="/board/review/boardlist"></c:url>
<script>
    $(document).on('click','#btnSearch', function(e) {
       e.preventDefault();
       var url = "${getBoardListURL}";
       url = url + "?searchType=" + $('#searchType').val();
       url = url + "&keyword=" + $('#keyword').val();
       location.href = url;
       console.log(url);
    });

    $("#ck").click(function () {
        if (${empty sessionScope.member}) {
            alert("로그인해주세요");
            location.href = "/login";
        }
    });

</script>
</html>