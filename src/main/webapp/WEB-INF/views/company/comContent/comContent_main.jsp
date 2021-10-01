<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>업체상세정보_메인</title>
<link rel="stylesheet" type="text/css" href="resources/myLib/myStyle.css">
<!-- <link rel="stylesheet" type="text/css" href="resources/myLib/myStyle.css" > -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-F3w7mX95PdgyTmZZMECAngseQB83DfGTowi0iMjiWaeVhAn4FJkqJByhZMI3AhiU" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-/bQdsTh/da6pkI1MST/rWKFNjaCP5gBSY4sEBT38Q/9RBh9AH40zEOg7Hlq2THRZ" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.3/dist/umd/popper.min.js" integrity="sha384-W8fXfP3gkOKtndU4JGtKDvXbO53Wy8SZCQHczT5FMiiqmQfUpWbYdTil/SxwZgAN" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/js/bootstrap.min.js" integrity="sha384-skAcpIdS7UcVUC05LJ9Dxay8AXcDYfBJqt1CJ85S/CFujBsIzCIv+l9liuYLaMQ/" crossorigin="anonymous"></script>
<script src="resources/myLib/jquery-3.6.0.min.js"></script>
<script src="resources/myLib/jquery-3.2.1.min.js"></script>
<script src="resources/myLib/axCompany.js"></script>
<meta name="description" content="">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="robots" content="all,follow">
<!-- Price Slider Stylesheets -->
<link rel="stylesheet" href="resources/vendor/nouislider/nouislider.css">
<!-- Google fonts - Playfair Display-->
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Playfair+Display:400,400i,700">
<!-- Google fonts - Poppins-->
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Poppins:300,400,400i,700">
<!-- swiper-->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/Swiper/4.4.1/css/swiper.min.css">
<!-- Magnigic Popup-->
<link rel="stylesheet" href="resources/vendor/magnific-popup/magnific-popup.css">
<!-- theme stylesheet-->
<link rel="stylesheet" href="resources/css/style.default.css" id="theme-stylesheet">
<!-- Custom stylesheet - for your changes-->
<link rel="stylesheet" href="resources/css/custom.css">
<!-- Favicon : 웹브라우저 주소창에 아이콘 표시-->
<link rel="shortcut icon" href="resources/img/favicon.png">
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css" integrity="sha384-50oBUHEmvpQ+1lW4y57PTFmhCaXp0ML5d60M1M7uH2+nqUivzIebhndOJK28anvf" crossorigin="anonymous">
<!-- 한글폰트 -->
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Gothic+A1:wght@200;400;700&display=swap" rel="stylesheet">
<!-- 카카오지도 -->
<script type="text/javascript" 
	    src="//dapi.kakao.com/v2/maps/sdk.js?appkey=9f5dcbef1cd3952145377eede59582d7&libraries=services">
</script>
<!-- compaging -->
<script>
$(function() {	
	// SearchType 이 '---' 면 keyword 클리어
	$('#searchType').change(function() {
		if ($(this).val()=='n') $('#keyword').val('');
	}); //change
	$('#searchBtn').on("click", function() {
		self.location="bcplist"
			+"${pageMaker.makeQuery(1)}"
			+"&searchType="
			+$('#searchType').val()
			+'&keyword='
			+$('#keyword').val()				
	}); //on_click	
}) //ready
</script>
</head>
 <body style="padding-top: 72px;">
    <header class="header">
 <!-- Navbar-->
 <nav class="navbar navbar-expand-lg fixed-top shadow navbar-light bg-white">
   <div class="container-fluid">
     <div class="d-flex align-items-center"><a class="navbar-brand py-1" href="home">
       
     <!--  *** 로고만들어서 로고 넣기  -->
     <img src="resources/image/logo.svg" alt="Directory logo"></a>
     </div>
     
     <button class="navbar-toggler navbar-toggler-right" type="button" data-bs-toggle="collapse" data-bs-target="#navbarCollapse" aria-controls="navbarCollapse" aria-expanded="false" aria-label="Toggle navigation"><i class="fa fa-bars"></i></button>
     <!-- Navbar Collapse -->
     <div class="collapse navbar-collapse" id="navbarCollapse">
       <ul class="navbar-nav ms-auto">
         <li class="nav-item dropdown"><a class="nav-link dropdown-toggle active" id="homeDropdownMenuLink" href="home" data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
              Home</a>
           <div class="dropdown-menu" aria-labelledby="homeDropdownMenuLink"><a class="dropdown-item" href="index.html">Rooms</a><a class="dropdown-item" href="index-2.html">Restaurants</a><a class="dropdown-item" href="index-3.html">Travel</a><a class="dropdown-item" href="index-4.html">Real Estate <span class="badge badge-info-light ms-1 mt-n1">New</span></a></div>
         </li>
         <li class="nav-item"><a class="nav-link" href="문의게시판">고객센터</a>
         </li>
         <li class="nav-item dropdown"><a class="nav-link dropdown-toggle " id="docsDropdownMenuLink" href="index.html" data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
              사업자회원메뉴</a>
           <div class="dropdown-menu dropdown-menu-end" aria-labelledby="docsDropdownMenuLink">
             <h6 class="dropdown-header fw-normal">사업자회원</h6>
             	<c:if test="${loginCno==null}">
	             	<a class="dropdown-item" href="cloginf">로그인</a>
    	         	<a class="dropdown-item" href="cjoinf">회원가입</a>
    	         </c:if>
    	         <c:if test="${loginCno!=null}">
	   	         	<a class="dropdown-item" href="cdetail">내정보보기</a>&nbsp;&nbsp;
    	        	<a class="dropdown-item" href="cdetail?cno=${loginCno}&jcode=U">내정보수정</a>&nbsp;&nbsp;
					<a class="dropdown-item" href="cinfo_main">사업자MyInfo</a>&nbsp;&nbsp;
					<a class="dropdown-item" href="clogout">로그아웃</a>&nbsp;&nbsp;
					<a class="dropdown-item" href="cdelete">회원탈퇴</a>&nbsp;&nbsp;
				 </c:if>
             <div class="dropdown-divider"></div>
             <h6 class="dropdown-header fw-normal">Components</h6><a class="dropdown-item" href="resources/docs/components-bootstrap.html">Bootstrap </a><a class="dropdown-item" href="docs/components-directory.html">Theme </a>
           </div>
         </li>
         <li class="nav-item dropdown"><a class="nav-link dropdown-toggle " id="docsDropdownMenuLink" href="index.html" data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
              일반회원메뉴</a>
           <div class="dropdown-menu dropdown-menu-end" aria-labelledby="docsDropdownMenuLink">
             <h6 class="dropdown-header fw-normal">일반회원</h6>
             	<c:if test="${loginID==null}">
	             	<a class="dropdown-item" href="loginf">로그인</a>
    	         	<a class="dropdown-item" href="joinf">회원가입</a>
    	         </c:if>
    	         <c:if test="${loginID!=null}">
					<a class="dropdown-item" href="cinfo_main">일반회원MyInfo</a>&nbsp;&nbsp;
					<a class="dropdown-item" href="logout">로그아웃</a>&nbsp;&nbsp;
				 </c:if>
             <div class="dropdown-divider"></div>
             <h6 class="dropdown-header fw-normal">Components</h6><a class="dropdown-item" href="resources/docs/components-bootstrap.html">Bootstrap </a><a class="dropdown-item" href="docs/components-directory.html">Theme </a>
           </div>
         </li>
         <li class="nav-item"><a class="nav-link" href="cdetail_main">업체정보보기</a></li>
         <li class="nav-item"><a class="nav-link" href="joinf_total">통합회원가입</a></li>
         <li class="nav-item"><a class="nav-link" href="cjoinf01">사업자회원 회원가입테스트</a></li>
         <li class="nav-item mt-3 mt-lg-0 ms-lg-3 d-lg-none d-xl-inline-block"><a class="btn btn-primary" href="rmainf">예약하기</a></li>
       </ul>
     </div>
   </div>
 </nav>
</header>
  <section class="position-relative py-7"><img class="bg-image" src="resources/img/photo/photo-1467987506553-8f3916508521.jpg" alt="">
      <div class="container">
        <div class="row">
          <div class="col-lg-6">
            <div class="card">
              <div class="card-body p-5"><strong class="text-uppercase text-secondary d-inline-block mb-2 text-sm">지역 카테고리</strong>
                <h2 class="mb-3">어디로 떠나볼까</h2>
                <p class="text-muted text-gray-500">다양한 경험을 한번에 예약할 수 있는 안전한 통합 문화 플랫폼 <br>OOO을 이용하여 안전하고 즐거운 예약시스템을 활용해보세요<br>지역별로 다양한 공간들을 클릭하여 구경해보세요</p>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>
    <section class="py-6">
      <div class="container">
        <div class="row mb-5">
          <!-- 1. seoul-->
          <div class="col-lg-4 col-sm-6 mb-4 hover-animate">
            <div class="card shadow border-0 h-100"><a href="ccontent_seoul"><img class="img-fluid card-img-top" src="resources/img/seoul_main.jpg" alt="..." width="200"/></a>
              <div class="card-body"><p class="text-uppercase text-muted text-sm letter-spacing-1">Your Seoul Goes On </p>
                <h5 class="my-2"><a class="text-dark" href="ccontent_seoul">서울 Seoul</a></h5>
                <p class="text-gray-500 text-sm my-3"><i class="fas fa-map-pin me-2"></i> 종로구 · 용산구 · 동대문구 · 강남구</p>
                <p class="my-2 text-muted text-sm">과거와 현재가 공존하며 하루가 다르게 변하는 서울을 여행하는 일은 매일이 새로운 경험을 선사합니다.</p><a class="btn btn-link ps-0" href="ccontent_seoul">서울지역 살펴보기<i class="fa fa-long-arrow-alt-right ms-2"></i></a>
              </div>
            </div>
          </div>
          <!-- 2. Kangwon-->
          <div class="col-lg-4 col-sm-6 mb-4 hover-animate">
            <div class="card shadow border-0 h-100"><a href="ccontent_busan"><img class="img-fluid card-img-top" src="resources/img/busan_main.jpg" alt="..." width="200"/></a>
              <div class="card-body"><p class="text-uppercase text-muted text-sm letter-spacing-1">Dynamic BUSAN </p>
                <h5 class="my-2"><a class="text-dark" href="ccontent_busan">부산 Busan</a></h5>
                <p class="text-gray-500 text-sm my-3"><i class="fas fa-map-pin me-2"></i> 부산중구 · 해운대 · 수영 · 기장</p>
                <p class="my-2 text-muted text-sm">우리나라 제2의 수도 부산광역시. 부산 대표 관광지로 손꼽히는 해운대는 밤에는 마린시티의 야경이 더해져 더욱 화려한 도시를 만나볼 수 있습니다.</p><a class="btn btn-link ps-0" href="ccontent_busan">부산지역 살펴보기<i class="fa fa-long-arrow-alt-right ms-2"></i></a>
              </div>
            </div>
          </div>
          <!-- 3. seoul-->
          <div class="col-lg-4 col-sm-6 mb-4 hover-animate">
            <div class="card shadow border-0 h-100"><a href="ccontent_seoul"><img class="img-fluid card-img-top" src="resources/img/seoul_main.jpg" alt="..." width="200"/></a>
              <div class="card-body"><p class="text-uppercase text-muted text-sm letter-spacing-1">Your Seoul Goes On </p>
                <h5 class="my-2"><a class="text-dark" href="ccontent_seoul">제주 Jeju</a></h5>
                <p class="text-gray-500 text-sm my-3"><i class="fas fa-map-pin me-2"></i> 제주시 · 서귀포 · 애월 </p>
                <p class="my-2 text-muted text-sm">섬 전체가 하나의 거대한 관광자원인 제주도. 파도가 넘보는 주상절리와 바다 위 산책로인 용머리 해안은 제주에서만 볼 수 있는 천혜의 자연경관으로 손꼽힙니다. </p><a class="btn btn-link ps-0" href="ccontent_seoul">서울지역 살펴보기<i class="fa fa-long-arrow-alt-right ms-2"></i></a>
              </div>
            </div>
          </div>
          <!-- 4. seoul-->
          <div class="col-lg-4 col-sm-6 mb-4 hover-animate">
            <div class="card shadow border-0 h-100"><a href="ccontent_seoul"><img class="img-fluid card-img-top" src="resources/img/seoul_main.jpg" alt="..." width="200"/></a>
              <div class="card-body"><p class="text-uppercase text-muted text-sm letter-spacing-1">Your Seoul Goes On </p>
                <h5 class="my-2"><a class="text-dark" href="ccontent_seoul">서울 Seoul</a></h5>
                <p class="text-gray-500 text-sm my-3"><i class="fas fa-map-pin me-2"></i> 종로구 · 용산구 · 동대문구 · 강남구</p>
                <p class="my-2 text-muted text-sm">과거와 현재가 공존하며 하루가 다르게 변하는 서울을 여행하는 일은 매일이 새로운 경험을 선사합니다.</p><a class="btn btn-link ps-0" href="ccontent_seoul">서울지역 살펴보기<i class="fa fa-long-arrow-alt-right ms-2"></i></a>
              </div>
            </div>
          </div>
          <!-- 5. seoul-->
          <div class="col-lg-4 col-sm-6 mb-4 hover-animate">
            <div class="card shadow border-0 h-100"><a href="ccontent_seoul"><img class="img-fluid card-img-top" src="resources/img/seoul_main.jpg" alt="..." width="200"/></a>
              <div class="card-body"><p class="text-uppercase text-muted text-sm letter-spacing-1">Your Seoul Goes On </p>
                <h5 class="my-2"><a class="text-dark" href="ccontent_seoul">서울 Seoul</a></h5>
                <p class="text-gray-500 text-sm my-3"><i class="fas fa-map-pin me-2"></i> 종로구 · 용산구 · 동대문구 · 강남구</p>
                <p class="my-2 text-muted text-sm">과거와 현재가 공존하며 하루가 다르게 변하는 서울을 여행하는 일은 매일이 새로운 경험을 선사합니다.</p><a class="btn btn-link ps-0" href="ccontent_seoul">서울지역 살펴보기<i class="fa fa-long-arrow-alt-right ms-2"></i></a>
              </div>
            </div>
          </div>
          <!-- 6. seoul-->
          <div class="col-lg-4 col-sm-6 mb-4 hover-animate">
            <div class="card shadow border-0 h-100"><a href="ccontent_seoul"><img class="img-fluid card-img-top" src="resources/img/seoul_main.jpg" alt="..." width="200"/></a>
              <div class="card-body"><p class="text-uppercase text-muted text-sm letter-spacing-1">Your Seoul Goes On </p>
                <h5 class="my-2"><a class="text-dark" href="ccontent_seoul">서울 Seoul</a></h5>
                <p class="text-gray-500 text-sm my-3"><i class="fas fa-map-pin me-2"></i> 종로구 · 용산구 · 동대문구 · 강남구</p>
                <p class="my-2 text-muted text-sm">과거와 현재가 공존하며 하루가 다르게 변하는 서울을 여행하는 일은 매일이 새로운 경험을 선사합니다.</p><a class="btn btn-link ps-0" href="ccontent_seoul">서울지역 살펴보기<i class="fa fa-long-arrow-alt-right ms-2"></i></a>
              </div>
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
             <div class="fw-bold text-uppercase text-dark mb-3">Directory</div>
             <p>Lorem ipsum dolor sit amet, consectetur adipisicing.</p>
             <ul class="list-inline">
               <li class="list-inline-item"><a class="text-muted text-primary-hover" href="#" target="_blank" title="twitter"><i class="fab fa-twitter"></i></a></li>
               <li class="list-inline-item"><a class="text-muted text-primary-hover" href="#" target="_blank" title="facebook"><i class="fab fa-facebook"></i></a></li>
               <li class="list-inline-item"><a class="text-muted text-primary-hover" href="#" target="_blank" title="instagram"><i class="fab fa-instagram"></i></a></li>
               <li class="list-inline-item"><a class="text-muted text-primary-hover" href="#" target="_blank" title="pinterest"><i class="fab fa-pinterest"></i></a></li>
               <li class="list-inline-item"><a class="text-muted text-primary-hover" href="#" target="_blank" title="vimeo"><i class="fab fa-vimeo"></i></a></li>
             </ul>
           </div>
           <div class="col-lg-2 col-md-6 mb-5 mb-lg-0">
             <h6 class="text-uppercase text-dark mb-3">Rentals</h6>
             <ul class="list-unstyled">
               <li><a class="text-muted" href="index.html">Rooms</a></li>
               <li><a class="text-muted" href="category-rooms.html">Map on top</a></li>
               <li><a class="text-muted" href="category-2-rooms.html">Side map</a></li>
               <li><a class="text-muted" href="category-3-rooms.html">No map</a></li>
               <li><a class="text-muted" href="detail-rooms.html">Room detail</a></li>
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
                 <input class="form-control bg-transparent border-dark border-end-0" type="email" placeholder="Your Email Address" aria-label="Your Email Address">
                 <button class="btn btn-outline-dark border-start-0" type="submit"> <i class="fa fa-paper-plane text-lg"></i></button>
               </div>
             </form>
           </div>
         </div>
       </div>
     </div>
     <!-- Copyright section of the footer-->
     <div class="py-4 fw-light bg-gray-800 text-gray-300">
       <div class="container">
         <div class="row align-items-center">
           <div class="col-md-6 text-center text-md-start">
             <p class="text-sm mb-md-0">&copy; 2021, Your company.  All rights reserved.</p>
           </div>
           <div class="col-md-6">
             <ul class="list-inline mb-0 mt-2 mt-md-0 text-center text-md-end">
               <li class="list-inline-item"><img class="w-2rem" src="resources/img/visa.svg" alt="..."></li>
               <li class="list-inline-item"><img class="w-2rem" src="resources/img/mastercard.svg" alt="..."></li>
               <li class="list-inline-item"><img class="w-2rem" src="resources/img/paypal.svg" alt="..."></li>
               <li class="list-inline-item"><img class="w-2rem" src="resources/img/western-union.svg" alt="..."></li>
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
   <!-- jQuery-->
   <script src="resources/vendor/jquery/jquery.min.js"></script>
   <!-- Bootstrap JS bundle - Bootstrap + PopperJS-->
   <script src="resources/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
   <!-- Magnific Popup - Lightbox for the gallery-->
   <script src="resources/vendor/magnific-popup/jquery.magnific-popup.min.js"></script>
   <!-- Smooth scroll-->
   <script src="resources/vendor/smooth-scroll/smooth-scroll.polyfills.min.js"></script>
   <!-- Bootstrap Select-->
   <script src="resources/vendor/bootstrap-select/js/bootstrap-select.min.js"></script>
   <!-- Object Fit Images - Fallback for browsers that don't support object-fit-->
   <script src="resources/vendor/object-fit-images/ofi.min.js"></script>
   <!-- Swiper Carousel                       -->
   <script src="https://cdnjs.cloudflare.com/ajax/libs/Swiper/4.4.1/js/swiper.min.js"></script>
   <script>var basePath = ''</script>
   <!-- Main Theme JS file    -->
   <script src="resources/js/theme.js"></script>
   <!-- Map-->
   <script src="https://unpkg.com/leaflet@1.5.1/dist/leaflet.js" integrity="sha512-GffPMF3RvMeYyc1LWMHtK8EbPv0iNZ8/oTtHPx9/cc2ILxQ+u905qIwdpULaqDkyBKgOaB57QTMg7ztg8Jm2Og==" crossorigin=""></script>
   <!-- Available tile layers-->
   <script src="resources/js/map-layers.js"> </script>
   <script src="resources/js/map-category.js">                               </script>
   <script>
     createListingsMap({
         mapId: 'categoryMap',
         jsonFile: 'js/restaurants-geojson.json',
         //tileLayer: tileLayers[5] - uncomment for a different map styling
     }); 
   </script>
 </body>
</html>