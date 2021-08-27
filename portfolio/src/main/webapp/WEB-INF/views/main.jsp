<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<head>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Start_UP</title>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <link rel="stylesheet" href="https://ajax.googleapis.com/ajax/libs/jqueryui/1.12.1/themes/smoothness/jquery-ui.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jqueryui/1.12.1/jquery-ui.min.js"></script>
    <link rel="stylesheet" type="text/css" href="../resources/css/style.css">
    <link rel="stylesheet" media="screen" href="../resources/css/m_style.css">
    <script src="../resources/js/script.js"></script>
</head>
<body>
    <div id="Wrap" class="Wrap">
        <header class="head">
            <div class="headInner">
                <h1 class="logo">
                    <a href="#">
                        Start_UP
                    </a>
                </h1>
                <!-- Web Menu -->
                <div class="Gnb">
                    <nav class="gnb">
                        <ul class="dep01">
                            <li>
                                <a href="#" class="menu1">Why We Start_UP</a>
                                <div class="dep02">
                                    <ul>
                                        <li><a href="#">Brand Story</a></li>
                                        <li><a href="#">Main Function</a></li>
                                    </ul>
                                </div>
                            </li>
                            <li>
                                <a href="#" class="menu1">Guide</a>
                                <div class="dep02">
                                    <ul>
                                        <li><a href="#">What's NEW</a></li>
                                        <li><a href="#" target="_blank">Start_UP Use Guide</a></li>
                                        <li><a href="#" target="_blank">My Activity</a></li>
                                    </ul>
                                </div>
                            </li>
                            <li>
                                <a href="#" class="menu1">Store</a>
                                <div class="dep02">
                                    <ul>
                                        <li><a href="#" target="_blank">Expansion Map</a></li>
                                        <li><a href="#" target="_blank">Background Thema</a></li>
                                        <li><a href="#" target="_blank">Developer Center</a></li>
                                    </ul>
                                </div>
                            </li>
                            <li>
                                <a href="#" class="menu1">Laboratory</a>
                                <div class="dep02">
                                    <ul>
                                        <li><a href="#" target="_blank">Laboratory Home</a></li>
                                        <li><a href="#" target="_blank">Best Study</a></li>
                                        <li><a href="#" target="_blank">Program</a></li>
                                    </ul>
                                </div>
                            </li>
                            <li>
                                <a href="#" class="menu1">Start_UP Space</a>
                                <div class="dep02">
                                    <ul>
                                        <li><a href="#" target="_blank">Item Introduce</a></li>
                                        <li><a href="#" target="_blank">Function</a></li>
                                        <li><a href="#" target="_blank">Service</a></li>
                                    </ul>
                                </div>
                            </li>
                        </ul>
                    </nav>
                </div>
                <!-- Web Menu -->
                
                <!-- Mobile Menu -->
                <div class="Gnb_m">
                    <p class="menu_button" title="menu"><span></span></p>
                    <nav class="menu-panel">
                        <ul class="menu-list">
                            <li class="menu-label">
                                <a href="#" class="menu-list_text">Why We Start_UP</a>
                                <span class="menu-list_arrow"></span>
                                <ul class="sub-menu">
                                    <li><a href="#">Brand Story</a></li>
                                    <li><a href="#">Main Function</a></li>
                                </ul>
                            </li>
                            <li class="menu-label">
                                <a href="#" class="menu-list_text">Guide</a>
                                <span class="menu-list_arrow"></span>
                                <ul class="sub-menu">
                                    <li><a href="#">What's NEW</a></li>
                                    <li><a href="#" target="_blank">Start_UP Use Guide</a></li>
                                    <li><a href="#" target="_blank">My Activity</a></li>
                                </ul>
                            </li>
                            <li class="menu-label">
                                <a href="#" target="_blank" class="menu-list_text">Store</a>
                                <span class="menu-list_arrow"></span>
                                <ul class="sub-menu">
                                    <li><a href="#" target="_blank">Expansion Map</a></li>
                                    <li><a href="#" target="_blank">Background Thema</a></li>
                                    <li><a href="#" target="_blank">Developer Center</a></li>
                                </ul>
                            </li>
                            <li class="menu-label">
                                <a href="#" target="_blank" class="menu-list_text">Laboratory</a>
                                <span class="menu-list_arrow"></span>
                                <ul class="sub-menu">
                                    <li><a href="#" target="_blank">Laboratory Home</a></li>
                                    <li><a href="#" target="_blank">Best Study</a></li>
                                    <li><a href="#" target="_blank">Program</a></li>
                                </ul>
                            </li>
                            <li class="menu-label">
                                <a href="#" target="_blank" class="menu-list_text">Start_UP Space</a>
                                <span class="menu-list_arrow"></span>
                                <ul class="sub-menu">
                                    <li><a href="#" target="_blank">Item Introduce</a></li>
                                    <li><a href="#" target="_blank">Function</a></li>
                                    <li><a href="#" target="_blank">Service</a></li>
                                </ul>
                            </li>
                            <li class="menu-btn">
                                <a href="../login/sign_in" class="gnb_btn_login">Sign In</a>
                                <a href="../login/sign_up" class="gnb_btn_account">Sign Up</a>
                            </li>
                        </ul>
                    </nav>
                    <div class="menu-panel-overlay"></div>
                </div>
                <!-- //Mobile Menu -->

                <div class="login">
                    <ul>
                        <li><a href="../login/sign_in">Sign In</a></li>
                        <li><a href="../login/sign_up">Sign Up</a></li>
                    </ul>
                </div>
            </div>
            <!--.headinner end-->
        </header>
    </div>
    <!-- container -->
    <section class="whats_new">
        <article class="contents_banner WhatsNew_banner">
                <div class="inner">
                    <div class="text_area">
                        <h3>What’s NEW</h3>
                        <p class="sub_title">최신 업데이트 소식을 전해 드립니다.</p>
                    </div>
                </div>
        </article>
        <article class="WhatsNew_contents News">
            <div class="inner">
                <div class="article_title">
                    <h4>NEWS</h4>
                    <p class="more">
                        <a href="#"><span>+</span>더보기</a>
                    </p>
                </div>
                <ul class="col_two clearfix">
                    <li>
                        <ul class="newsList_area">
                            <li class="clearfix">
                                <a href="#">
                                    <span class="left">NO.1 News</span>
                                    <span class="right">2021-08-10</span>
                                </a>
                            </li>
                            <li class="clearfix">
                                <a href="#">
                                    <span class="left">NO.2 News</span>
                                    <span class="right">2021-06-03</span>
                                </a>
                            </li>
                            <li class="clearfix">
                                <a href="#">
                                    <span class="left">NO.3 News</span>
                                    <span class="right">2021-05-02</span>
                                </a>
                            </li>
                        </ul>
                    </li>
                    <li>
                        <ul class="newsList_area">
                            <li class="clearfix">
                                <a href="#">
                                    <span class="left">NO.4 News</span>
                                    <span class="right">2021-06-15</span>
                                </a>
                            </li>
                            <li class="clearfix">
                                <a href="#">
                                    <span class="left">NO.5 News</span>
                                    <span class="right">2021-05-05</span>
                                </a>
                            </li>
                            <li class="clearfix">
                                <a href="#">
                                    <span class="left">NO.6 News</span>
                                    <span class="right">2021-04-27</span>
                                </a>
                            </li>
                        </ul>
                    </li>
                </ul>
            </div>
        </article>
    </section>
    <footer class="Footer">
        <div class="inner">
        <h2><a href="#">LOGO image</a></h2>
            <ul>
                <li><a href="#" target="_blank">이용약관</a></li>
                <li><a href="#" target="_blank">개인정보 처리방침</a></li>
                <li><a href="#" target="_blank">개인정보 보호를 위한 백서</a></li>
                <li><a href="#" target="_blank">제휴 제안</a></li>
                <li><a href="#" target="_blank">고객센터</a></li>
                <li><a href="#" target="_blank">© START_UP Corp.</a></li>
            </ul>
        </div>
    </footer>
</body>
</html>
