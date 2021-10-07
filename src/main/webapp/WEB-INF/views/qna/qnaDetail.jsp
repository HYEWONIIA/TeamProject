<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>     
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Directory Theme by Bootstrapious</title>
    <link rel="stylesheet" type="text/css" href="resources/myLib/myStyle.css">
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="robots" content="all,follow">
    <!-- core css -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-F3w7mX95PdgyTmZZMECAngseQB83DfGTowi0iMjiWaeVhAn4FJkqJByhZMI3AhiU" crossorigin="anonymous">
    <!-- Price Slider Stylesheets -->
    <link rel="stylesheet" href="resources/myLib/vendor/nouislider/nouislider.css">
    <!-- Google fonts - Playfair Display-->
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Playfair+Display:400,400i,700">
    <!-- Google fonts - Poppins-->
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Poppins:300,400,400i,700">
    <!-- swiper-->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/Swiper/4.4.1/css/swiper.min.css">
    <!-- Magnigic Popup-->
    <link rel="stylesheet" href="resources/myLib/vendor/magnific-popup/magnific-popup.css">
    <!-- theme stylesheet-->
    <link rel="stylesheet" href="resources/myLib/css/style.default.css" id="theme-stylesheet">
    <!-- Custom stylesheet - for your changes-->
    <link rel="stylesheet" href="resources/myLib/css/custom.css">
    <!-- Favicon-->
    <link rel="shortcut icon" href="resources/myLib/img/favicon.png">
    <!-- Tweaks for older IEs--><!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
        <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script><![endif]-->
    <!-- Font Awesome CSS-->
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css" integrity="sha384-50oBUHEmvpQ+1lW4y57PTFmhCaXp0ML5d60M1M7uH2+nqUivzIebhndOJK28anvf" crossorigin="anonymous">
  </head>
   <body style="padding-top: 72px;">
    <header class="header">
      <!-- Navbar-->
      <nav class="navbar navbar-expand-lg fixed-top shadow navbar-light bg-white">
        <div class="container-fluid">
          <div class="d-flex align-items-center"><a class="navbar-brand py-1" href="index.html"><img src="resources/myLib/img/logo.svg" alt="Directory logo"></a>
          </div>
        <button class="navbar-toggler navbar-toggler-right" type="button" data-bs-toggle="collapse" data-bs-target="#navbarCollapse" aria-controls="navbarCollapse" aria-expanded="false" aria-label="Toggle navigation"><i class="fa fa-bars"></i></button>
          <!-- Navbar Collapse -->
          <div class="collapse navbar-collapse" id="navbarCollapse">
            <ul class="navbar-nav ml-auto">
              <li class="nav-item"><a class="nav-link" href="home">Home</a></li>
              <li class="nav-item"><a class="nav-link" href="ccontent_main">문화공간 정보보기</a></li>
              <li class="nav-item dropdown"><a class="nav-link dropdown-toggle " id="homeDropdownMenuLink" href="index.html" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                   게시판메뉴</a>
                <div class="dropdown-menu" aria-labelledby="homeDropdownMenuLink">
                 <h6 class="dropdown-header fw-normal">게시판</h6> 
                   <a class="dropdown-item" href="rlist">후기</a>
                   <a class="dropdown-item" href="nlist">공지</a>
                   <a class="dropdown-item" href="qlist">QnA</a>
                </div>
              </li>
              <li class="nav-item dropdown"><a class="nav-link dropdown-toggle " id="homeDropdownMenuLink" href="index.html" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                   회원메뉴</a>
              <!-- 고객별 메뉴 01: 사업자회원/일반회원 둘다 로그인 안했을경우에 보이는 화면  -->
               <div class="dropdown-menu dropdown-menu-end" aria-labelledby="homeDropdownMenuLink">
             	    <c:if test="${loginCno==null && loginID==null}">
             		    <h6 class="dropdown-header fw-normal">로그인 후 이용 가능합니다.</h6>
	              	    <a class="dropdown-item" href="cloginf">사업자회원 로그인</a>
    	         	    <a class="dropdown-item" href="loginf">일반회원 로그인</a>
    	             </c:if>
    	       <!-- 고객별 메뉴 02: 사업자회원 로그인/ 일반회원 로그인 안했을경우 -> 사업자만 로그인 --> 
    	             <c:if test="${loginCno!=null && loginID==null}">
    	             <h6 class="dropdown-header fw-normal">사업자회원 메뉴</h6>
    	            	<a class="dropdown-item" href="cinfo_main">마이페이지</a>&nbsp;&nbsp;
	   	         	    <a class="dropdown-item" href="cinfo_detail">내정보보기</a>&nbsp;&nbsp;
					    <a class="dropdown-item" href="cinfo_cinfo">내정보수정</a>&nbsp;&nbsp;
				     </c:if>
		       <!-- 고객별 메뉴 03: 사업자회원 로그인 안 했을경우/ 일반회원 로그인 -> 일반회원만 로그인 --> 
    	             <c:if test="${loginCno==null && loginID!=null}">
    	             <h6 class="dropdown-header fw-normal">회원 메뉴</h6>
    	            	<a class="dropdown-item" href="paccountf">마이페이지</a>&nbsp;&nbsp;
	   	            	<a class="dropdown-item" href="pdetail">내정보보기</a>&nbsp;&nbsp;
				     </c:if>
               </div>
             </li>
             <!-- 관리자일때만 메뉴확인가능 -->
		     <c:if test="${loginID == 'admin'}">
                  <li class="nav-item dropdown"><a class="nav-link dropdown-toggle" id="homeDropdownMenuLink" href="home" data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                       회원목록</a>
                    <div class="dropdown-menu" aria-labelledby="homeDropdownMenuLink"><a class="dropdown-item" href="pcplist">일반회원 목록</a><a class="dropdown-item" href="comlist">사업자회원 목록</a><div class="dropdown-divider"></div><a class="dropdown-item" href="#">예약관리</a></div>
                  </li>
             </c:if>
		     <!-- 로그인 전용 사용가능 메뉴 -->
		     <c:if test="${loginID!=null || loginCno!=null}">
	 	    		<li class="nav-item"><a class="nav-link" href="logout">LOGOUT</a></li>
             </c:if>
             <!-- 비로그인 사용가능 메뉴-->
             <c:if test="${loginCno==null && loginID==null}">
	         		<li class="nav-item"><a class="nav-link" href="loginf_total">로그인</a></li>
	        		<li class="nav-item"><a class="nav-link" href="joinf_total">회원가입</a></li>
	         </c:if>
              <c:if test="${loginID!=null && loginID !='admin' || loginCno!=null}">
                  <li class="nav-item mt-3 mt-lg-0 ml-lg-3 d-lg-none d-xl-inline-block"><a class="btn btn-primary" href="qinsertf">글쓰기</a></li>
              </c:if>
              <c:if test="${Apple2 ==null && loginID == 'admin'}">
                  <li class="nav-item mt-3 mt-lg-0 ml-lg-3 d-lg-none d-xl-inline-block"><a class="btn btn-primary" href="qreplyf?bqno=${Apple.bqno}&id=${loginID}&root=${Apple.root}&indent=${Apple.indent}&step=${Apple.step}&bqpw=${Apple.bqpw}&bqcontent=${Apple.bqcontent}">답글등록</a></li>
              </c:if>
              <c:if test="${loginID==null}">  
                  <li class="nav-item mt-3 mt-lg-0 ml-lg-3 d-lg-none d-xl-inline-block"></li>
              </c:if>            
		      </ul>
          </div>
        </div>
      </nav>
      <!-- /Navbar -->
    </header>
    <!-- Hero Section-->
    <section class="hero py-6 py-lg-7 text-white dark-overlay"><img class="bg-image" src="resources/myLib/img/question.png" alt="????" >
      <div class="container overlay-content">
        <!-- Breadcrumbs -->
        <a href="qlist" class="breadcrumb text-white justify-content-center"><h1 class="hero-heading">QnA</h1></a>
      </div>
    </section>
    <section>
      <div class="container">
        <div class="row">
          <div class="col-xl-8 col-lg-10 mx-auto">           
            <p class="py-3 mb-5 text-muted text-center font-weight-light"> 작성자 <a class="font-weight-bold" href="#">${Apple.id }</a><span class="mx-1">|</span> 제목 <a class="font-weight-bold" href="#">${Apple.bqtitle}</a></p>
            <hr><br><br>
          </div>
        </div>
        <div class="row">
          <div class="col-xl-8 col-lg-10 mx-auto">                               
            <div class="text-content">
              <p class="lead mb-5 black" align="center" ><strong>${Apple.bqcontent}</strong></p>
               <hr>    
            </div>
            <!-- comments--> 
         <c:if test="${loginID!=null}">
           <div class="mt-5">
            <c:if test="${Apple2!=null}">
             <h6 class="text-uppercase text-muted mb-4">comments</h6>
             <!-- comment-->
               <div class="media-body">
                 <h5>답글</h5> <div align="left"><c:if test="${loginID=='admin'}"><a href="qdelete?bqno=${Apple2.bqno}">[글삭제]</a></c:if></div>
                 <p class="text-uppercase text-sm text-muted"><i class="far fa-clock"></i> ${Apple2.bqdate}</p>
                 <p class="text-muted">${Apple2.bqcontent}</p>
               </div>
            </c:if> 
               <div class="col-xl-8 col-lg-10 mx-auto" align="center">
                   <c:if test="${loginID==Apple.id || loginID=='admin'}">
                      <a href="qdelete?bqno=${Apple.bqno}">글삭제</a>&nbsp;
                   </c:if>
               </div>
            </c:if>
           </div>            
            </div> 
          </div>
        </div>
    </section>
    <!-- Footer-->
    <footer class="position-relative z-index-10 d-print-none">
      <!-- Main block - menus, subscribe form-->
      <div class="py-6 bg-gray-200 text-muted"> 
        <div class="container">
          <div class="row">
            <div class="col-lg-4 mb-5 mb-lg-0">
              <div class="font-weight-bold text-uppercase text-dark mb-3">Directory</div>
              <p>Lorem ipsum dolor sit amet, consectetur adipisicing.</p>
              <ul class="list-inline">
                <li class="list-inline-item"><a class="text-muted text-hover-primary" href="#" target="_blank" title="twitter"><i class="fab fa-twitter"></i></a></li>
                <li class="list-inline-item"><a class="text-muted text-hover-primary" href="#" target="_blank" title="facebook"><i class="fab fa-facebook"></i></a></li>
                <li class="list-inline-item"><a class="text-muted text-hover-primary" href="#" target="_blank" title="instagram"><i class="fab fa-instagram"></i></a></li>
                <li class="list-inline-item"><a class="text-muted text-hover-primary" href="#" target="_blank" title="pinterest"><i class="fab fa-pinterest"></i></a></li>
                <li class="list-inline-item"><a class="text-muted text-hover-primary" href="#" target="_blank" title="vimeo"><i class="fab fa-vimeo"></i></a></li>
              </ul>
            </div>
            <div class="col-lg-2 col-md-6 mb-5 mb-lg-0">
              <h6 class="text-uppercase text-dark mb-3">Rentals</h6>
              <ul class="list-unstyled">
                <li><a class="text-muted" href="index.html">Rooms     </a></li>
                <li><a class="text-muted" href="category-rooms.html">Map on top     </a></li>
                <li><a class="text-muted" href="category-2-rooms.html">Side map     </a></li>
                <li><a class="text-muted" href="category-3-rooms.html">No map     </a></li>
                <li><a class="text-muted" href="detail-rooms.html">Room detail     </a></li>
              </ul>
            </div>
            <div class="col-lg-2 col-md-6 mb-5 mb-lg-0">
              <h6 class="text-uppercase text-dark mb-3">Pages</h6>
              <ul class="list-unstyled">
                <li><a class="text-muted" href="compare.html">Comparison                                   </a></li>
                <li><a class="text-muted" href="team.html">Team                                   </a></li>
                <li><a class="text-muted" href="contact.html">Contact                                   </a></li>
              </ul>
            </div>
            <div class="col-lg-4">
              <h6 class="text-uppercase text-dark mb-3">Daily Offers & Discounts</h6>
              <p class="mb-3"> Lorem ipsum dolor sit amet, consectetur adipisicing elit. At itaque temporibus.</p>
              <form action="#" id="newsletter-form">
                <div class="input-group mb-3">
                  <input class="form-control bg-transparent border-dark border-right-0" type="email" placeholder="Your Email Address" aria-label="Your Email Address">
                  <div class="input-group-append">
                    <button class="btn btn-outline-dark border-left-0" type="submit"> <i class="fa fa-paper-plane text-lg"></i></button>
                  </div>
                </div>
              </form>
            </div>
          </div>
        </div>
      </div>
      <!-- Copyright section of the footer-->
      <div class="py-4 font-weight-light bg-gray-800 text-gray-300">
        <div class="container">
          <div class="row align-items-center">
            <div class="col-md-6 text-center text-md-left">
              <p class="text-sm mb-md-0">&copy; 2020, Your company.  All rights reserved.</p>
            </div>
            <div class="col-md-6">
              <ul class="list-inline mb-0 mt-2 mt-md-0 text-center text-md-right">
                <li class="list-inline-item"><img class="w-2rem" src="resources/myLib/img/visa.svg" alt="..."></li>
                <li class="list-inline-item"><img class="w-2rem" src="resources/myLib/img/mastercard.svg" alt="..."></li>
                <li class="list-inline-item"><img class="w-2rem" src="resources/myLib/img/paypal.svg" alt="..."></li>
                <li class="list-inline-item"><img class="w-2rem" src="resources/myLib/img/western-union.svg" alt="..."></li>
              </ul>
            </div>
          </div>
        </div>
      </div>
    </footer>
    <!-- JavaScript files-->
    <script>
      // ------------------------------------------------------- //
      //   Inject SVG Sprite - 
      //   see more here 
      //   https://css-tricks.com/ajaxing-svg-sprite/
      // ------------------------------------------------------ //
      function injectSvgSprite(path) {
      
          var ajax = new XMLHttpRequest();
          ajax.open("GET", path, true);
          ajax.send();
          ajax.onload = function(e) {
          var div = document.createElement("div");
          div.className = 'd-none';
          div.innerHTML = ajax.responseText;
          document.body.insertBefore(div, document.body.childNodes[0]);
          }
      }    
      // to avoid CORS issues when viewing using file:// protocol, using the demo URL for the SVG sprite
      // use your own URL in production, please :)
      // https://demo.bootstrapious.com/directory/1-0/icons/orion-svg-sprite.svg
      //- injectSvgSprite('${path}icons/orion-svg-sprite.svg'); 
      injectSvgSprite('https://demo.bootstrapious.com/directory/1-4/icons/orion-svg-sprite.svg'); 
      
    </script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-/bQdsTh/da6pkI1MST/rWKFNjaCP5gBSY4sEBT38Q/9RBh9AH40zEOg7Hlq2THRZ" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.3/dist/umd/popper.min.js" integrity="sha384-W8fXfP3gkOKtndU4JGtKDvXbO53Wy8SZCQHczT5FMiiqmQfUpWbYdTil/SxwZgAN" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/js/bootstrap.min.js" integrity="sha384-skAcpIdS7UcVUC05LJ9Dxay8AXcDYfBJqt1CJ85S/CFujBsIzCIv+l9liuYLaMQ/" crossorigin="anonymous"></script>
    <!-- jQuery-->
    <script src="resources/myLib/vendor/jquery/jquery.min.js"></script>
    <!-- Bootstrap JS bundle - Bootstrap + PopperJS-->
    <script src="resources/myLib/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
    <!-- Magnific Popup - Lightbox for the gallery-->
    <script src="resources/myLib/vendor/magnific-popup/jquery.magnific-popup.min.js"></script>
    <!-- Smooth scroll-->
    <script src="resources/myLib/vendor/smooth-scroll/smooth-scroll.polyfills.min.js"></script>
    <!-- Bootstrap Select-->
    <script src="resources/myLib/vendor/bootstrap-select/js/bootstrap-select.min.js"></script>
    <!-- Object Fit Images - Fallback for browsers that don't support object-fit-->
    <script src="resources/myLib/vendor/object-fit-images/ofi.min.js"></script>
    <!-- Swiper Carousel                       -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/Swiper/4.4.1/js/swiper.min.js"></script>
    <script>var basePath = ''</script>
    <!-- Main Theme JS file    -->
    <script src="resources/myLib/js/theme.js"></script>
  </body>
</html>