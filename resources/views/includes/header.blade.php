<!DOCTYPE html>
<html lang="en" class="no-js">
<head>
    <meta charset="utf-8">
    <meta name="robots" content="noindex,nofollow">
    <title>Karo</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="<?php echo url('/'); ?>/css/font-awesome.css" media="all">
    <link rel="stylesheet" href="<?php echo url('/'); ?>/css/owl.carousel.css" media="all">
    <link rel="stylesheet" href="<?php echo url('/'); ?>/css/jquery-ui.css" media="all">
    <link rel="stylesheet" href="<?php echo url('/'); ?>/css/reset.css" media="all">
    <link rel="stylesheet" href="<?php echo url('/'); ?>/css/grid.css" media="all">
    <link rel="stylesheet" href="<?php echo url('/'); ?>/css/superfish.css" media="all">
    <link rel="stylesheet" href="<?php echo url('/'); ?>/css/bxslider.css" media="all"/>
    <link rel="stylesheet" href="<?php echo url('/'); ?>/css/navgoco.css" media="all">
    <link rel="stylesheet" href="<?php echo url('/'); ?>/css/style.css" media="all">
    <link href="<?php echo url('/'); ?>/css/responsive.css" rel="stylesheet" media="all">
    <!-- Le fav and touch icons -->
    <link rel="Shortcut icon" href="<?php echo url('/'); ?>/favicon.ico">
    <link rel="apple-touch-icon" href="<?php echo url('/'); ?>/images/apple-touch-icon.png">
    <link rel="apple-touch-icon" sizes="72x72" href="<?php echo url('/'); ?>/images/apple-touch-icon-72x72.png">
    <link rel="apple-touch-icon" sizes="114x114" href="<?php echo url('/'); ?>/images/apple-touch-icon-114x114.png">
    <script src="<?php echo url('/'); ?>/js/modernizr.custom.js"></script>
</head>
<body class="kopa-home">
<header id="kopa-header" class="header-2">
    <div class="kopa-header-top">
        <div class="container">
            <div class="menu-second pull-left">
                <ul class="list-unstyled clearfix">
                    <li><a href="/">home</a></li>

                    @if (Auth::guest())
                        <li><a href="{{ url('/login') }}">Login</a></li>
                        <li><a href="{{ url('/register') }}">Register</a></li>
                    @else
                        <li class="dropdown">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">
                                Hi, <b>{{ Auth::user()->name }}!</b>!
                            </a>
                        </li>
                        <li>
                            <a href="{{ url('/logout') }}"
                               onclick="event.preventDefault();
                                                   document.getElementById('logout-form').submit();">
                                Logout
                            </a>

                            <form id="logout-form" action="{{ url('/logout') }}" method="POST" style="display: none;">
                                {{ csrf_field() }}
                            </form>
                        </li>
                    @endif
                </ul>
            </div>
            <div class="kopa-social pull-right">
                <a href="#" class="fa fa-facebook"></a>
                <a href="#" class="fa fa-twitter"></a>
                <a href="#" class="fa fa-google-plus"></a>
                <a href="#" class="fa fa-pinterest-square"></a>
                <a href="#" class="fa fa-skype"></a>
                <a href="#" class="fa fa-youtube"></a>
            </div>
            <!-- social -->
        </div>
    </div>
    <!-- kopa header top -->
    <div class="kopa-header-middle">
        <div class="container">
            <div class="kopa-logo pull-left">
                <a href="/"><img src="<?php echo url('/'); ?>/images/logo.png" alt=""></a>
            </div>
            <!-- logo -->
            <div class="kopa-baner pull-right">
                <a href="#"><img src="<?php echo url('/'); ?>/images/3.jpg" alt=""></a>
            </div>
            <!-- banner -->
        </div>
        <!-- container -->
    </div>
    <!-- kopa header middle -->
    <div class="kopa-header-bottom">
        <div class="container">
            <div class="main-menu">
                <span class="mobile-menu-icon fa fa-align-justify"></span>
                <ul class="kopa-menu sf-menu">
                    <li>
                        <a href="/">home</a>
                    </li>
                    <li>
                        <a href="/page">page</a>
                    </li>
                    <li>
                        <a href="/events">events</a>
                    </li>
                    <li>
                        <a href="single-blog.html">single</a>
                        <ul>
                            <li><a href="single-blog.html">single blog</a></li>
                            <li><a href="single-audio.html">single audio</a></li>
                            <li><a href="single-souncloud.html">single souncloud</a></li>
                            <li><a href="single-gallery.html">single gallery</a></li>
                            <li><a href="single-video.html">single video</a></li>
                        </ul>
                    </li>
                    <li>
                        <a href="#">blog</a>
                        <ul>
                            <li><a href="blog-1.html">blog 1</a></li>
                            <li><a href="blog-2.html">blog 2</a></li>
                            <li><a href="gallery.html">gallery</a></li>
                        </ul>
                    </li>
                    <li>
                        <a href="#">my account</a>
                        <ul>
                            <li><a href="#">item 1</a></li>
                            <li><a href="#">item 2</a></li>
                        </ul>
                    </li>
                    <li>
                        <a href="#">demo</a>
                    </li>
                    <li>
                        <a href="#">forum</a>
                    </li>
                    <li>
                        <a href="#">contact</a>
                    </li>
                </ul>
                <ul class="kopa-menu mobile-menu">
                    <li class="current-menu-item">
                        <a href="index-1.html">home</a>
                        <ul>
                            <li><a href="index-1.html">index 1</a></li>
                            <li><a href="index-2.html">index 2</a></li>
                            <li><a href="index-3.html">index 3</a></li>
                            <li><a href="index-4.html">index 4</a></li>
                        </ul>
                    </li>
                    <li>
                        <a href="contact.html">page</a>
                        <ul>
                            <li><a href="element.html">Element</a></li>
                            <li><a href="contact.html">contact</a></li>
                        </ul>
                    </li>
                    <li>
                        <a href="single-blog.html">single</a>
                        <ul>
                            <li><a href="single-blog.html">single blog</a></li>
                            <li><a href="single-audio.html">single audio</a></li>
                            <li><a href="single-souncloud.html">single souncloud</a></li>
                            <li><a href="single-gallery.html">single gallery</a></li>
                            <li><a href="single-video.html">single video</a></li>
                        </ul>
                    </li>
                    <li>
                        <a href="#">blog</a>
                        <ul>
                            <li><a href="blog-1.html">blog 1</a></li>
                            <li><a href="blog-2.html">blog 2</a></li>
                            <li><a href="gallery.html">gallery</a></li>
                        </ul>
                    </li>
                    <li>
                        <a href="#">my account</a>
                        <ul>
                            <li><a href="#">item 1</a></li>
                            <li><a href="#">item 2</a></li>
                        </ul>
                    </li>
                    <li>
                        <a href="#">demo</a>
                    </li>
                    <li>
                        <a href="#">forum</a>
                    </li>
                    <li>
                        <a href="#">contact</a>
                    </li>
                </ul>
            </div>
            <!-- main-menu -->
        </div>
    </div>
    <!-- kopa header bottom -->
    <div class="kopa-head-line clearfix">
        <div class="container">
            <div class="kopa-list-news-carousel-widget">
                <h3 class="widget-title">Breaking News</h3>
                <div class="kp-headline clearfix">
                    <dl class="ticker-1 clearfix">
                        <dd><a href="#">August .12 .2012 - Syrian prime minister defects, fighting goes on</a></dd>
                        <dd><a href="#">Dalai Lama Visit: President Obama Meets Spiritual Leader, China Complains</a></dd>
                        <dd><a href="#">August .10 .2012 - Syrian prime minister defects, fighting goes on</a></dd>
                    </dl>
                    <!--ticker-1-->
                </div>
                <!--kp-headline-->
            </div>
            <!-- widget news carousel -->
            <div class="kopa-search-box">
                <form action="/" method="post" class="search-form">
                    <input type="text"  name="search-text" onBlur="if (this.value == '')
                                this.value = this.defaultValue;" onFocus="if (this.value == this.defaultValue)
                                this.value = '';" value="Search this site" >
                    <span class="fa fa-search"></span>
                    <button type="submit" class="fa fa-search"></button>
                </form>
            </div>
            <!-- search box -->
        </div>
        <!-- container -->
    </div>
    <!-- kopa head line -->
</header>
<!-- page header -->
