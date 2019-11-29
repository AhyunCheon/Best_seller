<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
    <!-- Theme Made By www.w3schools.com - No Copyright -->
    <title>Best seller</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
    <link href="https://fonts.googleapis.com/css?family=Lato" rel="stylesheet" type="text/css">
    <link href="https://fonts.googleapis.com/css?family=Montserrat" rel="stylesheet" type="text/css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.0/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>

    <!--slick / aos -->
    <link rel="stylesheet" type="text/css" href="./first_style2.css"/>
    <link rel="stylesheet" type="text/css" href="./slick/slick.css"/>
    <link rel="stylesheet" type="text/css" href="./slick/slick-theme.css"/>
    <link rel="stylesheet" href="https://cdn.rawgit.com/michalsnik/aos/2.1.1/dist/aos.css" />

    <style>
        body {
            font: 400 15px/1.5 Lato, sans-serif;
            color: #777;
        }
        h3, h4 {
            margin: 10px 0 30px 0;
            letter-spacing: 5px;
            font-size: 20px;
            color: #111;
        }
        .container {
            padding: 80px 120px;
        }
        
        
        .carousel-inner img {
            -webkit-filter: grayscale(30%);
            filter: grayscale(30%); /* make all photos black and white */
            width: 100%; /* Set width to 100% */
            margin: auto;
        }
        .carousel-caption h3 {
            color: #fff !important;
        }
        @media (max-width: 600px) {
            .carousel-caption {
                display: none; /* Hide the carousel text when the screen is less than 600 pixels wide */
            }
        }
        .bg-1 {
            background-color: rgb(152, 154, 154);
            color: #bdbdbd;
        }
        .bg-1 h3 {color: #fff;}
        .bg-1 p {font-style: italic;}
        .thumbnail {
            padding: 0 0 15px 0;
            border: none;
            border-radius: 0;
        }
        .thumbnail p {
            margin-top: 15px;
            color: #555;
        }
        .btn {
            padding: 10px 20px;
            background-color: #333;
            color: #f1f1f1;
            border-radius: 0;
            transition: .2s;
        }
        .btn:hover, .btn:focus {
            border: 1px solid #333;
            background-color: #fff;
            color: #000;
        }
        .modal-header, h4, .close {
            background-color: #333;
            color: #fff !important;
            text-align: center;
            font-size: 30px;
        }
        .modal-header, .modal-body {
            padding: 40px 50px;
        }
        .nav-tabs li a {
            color: #777;
        }
        .anyone{
        	font-weight:900;
            text-shadow: 3px 3px 3px gray;
            padding-bottom:33%;
        }
        .navbar {
            font-family: Montserrat, sans-serif;
            margin-bottom: 0;
            background-color: rgb(152, 154, 154);
            border: 0;
            font-size: 11px !important;
            letter-spacing: 4px;
            opacity: 0.9;
        }
        .navbar li a, .navbar .navbar-brand {
            color: #f0f9ff !important;
        }
        .navbar-nav li a:hover {
            color: #272727 !important;
            font-weight: bold;
        }
        .navbar-nav li.active a {
            color: #3c3f41 !important;
            background-color: #dadada !important;
        }
        .navbar-default .navbar-toggle {
            border-color: transparent;
        }

        footer {
            background-color: #2d2d30;
            color: #f5f5f5;
            font-size: 15px;
            padding: 32px;
        }
        footer a {
            color: #f5f5f5;
        }
        footer a:hover {
            color: #777;
            text-decoration: none;
        }
        .footNav {
            margin-right: auto;
            overflow: hidden;
            background-color: rgb(152, 154, 154);
            text-align: center;
        }
        .footNav a {
            float: left;
            display: block;
            color: white;
            font-size: 18px;
            text-align: center;
            padding: 14px 16px;
            text-decoration: none;
        }
        /* Change color on hover */
        .footNav a:hover {
            background-color: #D1D3CF;
            color: #6C4F70;
        }
        .form-control {
            border-radius: 0;
        }
        textarea {
            resize: none;
        }
        .startDiv:before{
            content:'';
            height:100%;
            display:inline-block;
            vertical-align:middle;
        }
        .startDiv{
            z-index: 6000;
            width: 100%;
            padding-top: 8px;
            padding-bottom: 1px;
            background-color: #3c3f41;
            color: white;
            cursor: pointer;
            transition: 800ms ease all;
            outline: none;
        }
        .startDiv:hover{
            z-index: 6000;
            background-color: #fafdfd;
            color: #3c3f41;

        }
        .startDiv:before,.startDiv:after{
            z-index: 6000;
            content:'';
            position:absolute;
            top:0;
            right:0;
            height:8px;
            width:0;
            background: #ffffff;
            transition:400ms ease all;
        }
        .startDiv:after{
            right:inherit;
            top:inherit;
            left:0;
            bottom:0;
        }
        .startDiv:hover:before,.startDiv:hover:after {
            width: 100%;
            transition: 800ms ease all;

        }
        .blinking{
            -webkit-animation:blink 0.9s ease-in-out infinite alternate;
        }
        @-webkit-keyframes blink{
            0% {opacity:0;}
            100% {opacity:1;}
        }
    </style>
</head>
<body id="myPage" data-spy="scroll" data-target=".navbar" data-offset="50">

<nav class="navbar navbar-default navbar-fixed-top">
    <div class="container-fluid">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="main.jsp">BEST SELLER</a>
        </div>
        <div class="collapse navbar-collapse" id="myNavbar">
            <ul class="nav navbar-nav navbar-right">
                <li><a href="main.jsp">HOME</a></li>
                <li><a href="aboutUs.jsp">ABOUT US</a></li>
                <li><a href="Gift.jsp">GIFT</a></li>
                <li><a href="donation.jsp">DONATION</a></li>
                <li><a href="recommend.do">RECOMMENDED</a></li>
            </ul>
        </div>
    </div>
</nav>

<div id="myCarousel" class="carousel slide" data-ride="carousel" style="height: 900px">
    <!-- Indicators -->


    <!-- Wrapper for slides -->
    <div class="carousel-inner" role="listbox">
        <div class="item active" style="height: 900px">
            <img src="slide1.jpg">
            <div class="carousel-caption">
                <h2 class="anyone">Anyone who likes books can participate!</h2>
            </div>
        </div>

        <div class="item"  style="height: 900px">
            <img src="slide2.jpg">
            <div class="carousel-caption">
                <h2 class="anyone">A novel and exciting book exchange project!</h2>
            </div>
        </div>

        <div class="item" style="height: 900px">
            <img src="slide3.jpg" height="700px">
            <div class="carousel-caption">
                <h2 class="anyone">You can prepare one of your favorite books.</h2>
            </div>
        </div>

        <div class="item" style="height: 900px">
            <img src="slide4.jpg" height="700px">
            <div class="carousel-caption">
                <h2 class="anyone">And then, Just send it to someone you don't know.</h2>
            </div>
        </div>

        <div class="item" style="height: 900px">
            <img src="slide5.jpg" height="700px">
            <div class="carousel-caption">
                <h2 class="anyone">You will get a book as a gift from someone too!</h2>
            </div>
        </div>
    </div>

    <div class="startDiv"><!--Gift event 끝나고 시작하는 부분-->
        <h3 id="scrollDown" style="text-align: center;" class="clickID blinking" onclick="fnMove()">Click</h3></a>
    </div>
    <!-- Left and right controls -->
    <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
        <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
        <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
        <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
        <span class="sr-only">Next</span>
    </a>
</div>

<script>
    function fnMove(){
        var offset = $("#downScroll").offset();
        $('html, body').animate({scrollTop : offset.top}, 1000);
    }
</script>
<br/><br/><br/><br/>
<div id="downScroll"></div>
<!-- Container (The Band Section) -->
<div id="band" class="container text-center">
    <h3 data-aos="zoom-in">A book that you might get as a gift</h3>
    <p><em>What a exciting event!</em></p>

        <div class="regular slider">
            <div><img src="book1.jpg" class="bi"></div>
            <div><img src="book2.jpg" class="bi"></div>
            <div><img src="book3.jpg" class="bi"></div>
            <div><img src="book4.jpg" class="bi"></div>
            <div><img src="book5.jpg" class="bi"></div>
            <div><img src="book6.jpg" class="bi"></div>
            <div><img src="book7.jpg" class="bi"></div>
            <div><img src="book8.jpg" class="bi"></div>
        </div>

    <script src="https://code.jquery.com/jquery-2.2.0.min.js" type="text/javascript"></script>
    <script src="./slick/slick.min.js" type="text/javascript" charset="utf-8"></script>
        <script type="text/javascript">
            var newJquery=$.noConflict(true);

            newJquery(document).on('ready', function() {
                newJquery(".regular").slick({
                    dots: false,
                    infinite: true,
                    slidesToShow: 4,
                    slidesToScroll: 1,
                    autoplay:true,
                    autoplaySpeed:2000,
                });

            });
        </script>

</div>


<!-- Container (TOUR Section) -->
<div id="tour" class="bg-1">
    <div class="container">
        <h3 class="text-center">PRESENT</h3>
        <p class="text-center">We've prepared a variety of events.<br>Try meeting right now!</p>


        <div class="row text-center">
            <div class="col-sm-4" data-aos="flip-up">
                <div class="thumbnail">
                    <img src="bookex.png" alt="bookes.png" width="400" height="300" style="padding-top: 40px; padding-bottom: 45px;">
                    <p><strong>What is GIFT event?</strong></p>
                    <button class="btn" data-toggle="modal" OnClick="window.location='Gift.jsp'">Let's Go!</button>
                </div>
            </div>
            <div class="col-sm-4" data-aos="flip-up">
                <div class="thumbnail">
                    <img src="donateIntro.png" alt="donation.png" width="400" height="300" style="padding-top: 30px; padding-bottom:8px;">
                    <p><strong>How to participated in donation?</strong></p>
                    <button class="btn" data-toggle="modal" OnClick="window.location='donation.jsp'">Let's Go!</button>
                </div>
            </div>
            <div class="col-sm-4" data-aos="flip-up">
                <div class="thumbnail">
                    <img src="recommend.png" alt="recommend" width="400" height="300">
                    <p><strong>I like this book!</strong></p>
                    <button class="btn" data-toggle="modal" OnClick="window.location='recommend.do'">Let's Go!</button>
                </div>
            </div>
        </div>
    </div>

    <!-- contact -->
    <div class="modal fade" id="myModal" role="dialog">
        <div class="modal-dialog">

            <!-- Modal content-->
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal">×</button>
                    <h4><span class="glyphicon glyphicon-lock"></span> Tickets</h4>
                </div>
                <div class="modal-body">
                    <form role="form">
                        <div class="form-group">
                            <label for="psw"><span class="glyphicon glyphicon-shopping-cart"></span> Tickets, $23 per person</label>
                            <input type="number" class="form-control" id="psw" placeholder="How many?">
                        </div>
                        <div class="form-group">
                            <label for="usrname"><span class="glyphicon glyphicon-user"></span> Send To</label>
                            <input type="text" class="form-control" id="usrname" placeholder="Enter email">
                        </div>
                        <button type="submit" class="btn btn-block">Pay
                            <span class="glyphicon glyphicon-ok"></span>
                        </button>
                    </form>
                </div>
                <div class="modal-footer">
                    <button type="submit" class="btn btn-danger btn-default pull-left" data-dismiss="modal">
                        <span class="glyphicon glyphicon-remove"></span> Cancel
                    </button>
                    <p>Need <a href="#">help?</a></p>
                </div>
            </div>
        </div>
    </div>
</div>

<!-- Container (Contact Section) -->
<div id="contact" class="container" style="padding-right: 40px; padding-left: 40px;">
    <h3 class="text-center">Contact</h3>
    <p class="text-center"><em>We love our fans!</em></p>
    <br/>

    <div class="row">
        <div class="col-lg-6 contactBox" data-aos="fade-right">
            <div id="map" style="width:540px; height: 275px;"></div>
            <br/>
            <p class="text-center"><span class="glyphicon glyphicon-map-marker"></span>1, Cheongdaero, Seowon-gu, Cheoungju, Chungbuk</p>

            <script>
            function myMap() {
                var mapCanvas = document.getElementById("map");
                var myCenter = new google.maps.LatLng(36.625556,127.454387);
                var mapOptions = {
                    center: myCenter,
                    zoom: 18
                };
                var map = new google.maps.Map(mapCanvas, mapOptions);

                var marker = new google.maps.Marker({
                    position:myCenter,
                    animation:google.maps.Animation.BOUNCE,
                    icon:'pointer.png'
                });
                marker.setMap(map);
            }
        </script>

        <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBAlOjojzJqN5CEy7iGWtTTiWgCMiPUhXI&callback=myMap"></script>
    </div>
        <div class="col-lg-6 contactBox" data-aos="fade-left">
            <div class="row">
                <div class="col-sm-6 form-group">
                    <input class="form-control" id="name" name="name" placeholder="Name" type="text" required>
                </div>
                <div class="col-sm-6 form-group">
                    <input class="form-control" id="email" name="email" placeholder="Email" type="email" required>
                </div>
            </div>
            <textarea class="form-control" id="comments" name="comments" placeholder="Comment" rows="5"></textarea>
            <br>
            <div class="row">
                <div class="col-md-12 form-group">
                    <button class="btn pull-right" type="submit">Send</button>
                </div>
            </div>
        </div>
    </div>
    <br>

</div>


<!--footer-->
<div class="footNav" > <!--This is menu bar.-->
    <a href="aboutUs.jsp" style="margin-left: 20px;">About Us</a>
    <a href="#order">Privacy Statement</a>
    <a href="#event">FAQ</a>
    <a href="#contact">Site map</a>
    <a href="#" style="margin-left: 70%;" class="top">TOP ▲</a>
</div>
<footer>
    <div style="margin-left: 40px;">
        <p>Team / Best Seller</p>
        <p>Member / Cheon, Ahyun &nbsp;|&nbsp; Kim, Jung Hoon &nbsp;|&nbsp; Lee, Eun Taek
        <p>Instagram / @a_hyun1000 &nbsp;|&nbsp; @letoasis &nbsp;|&nbsp; @hooonij</p>
        <p>Address / 1, Cheongdaero, Seowon-gu, Cheoungju, Chungbuk</p>
        <p>COPYRIGHT(C)2019 BEST SELLER. ALL RIGHTS RESERVED. &nbsp;DESIGN BY BEST SELLER</p>
    </div>
</footer>










<script src="https://cdn.rawgit.com/michalsnik/aos/2.1.1/dist/aos.js"></script>
<script>
    AOS.init({
        easing: 'ease-out-back',
        duration: 1000
    });
    $(window).on('load', function() {
        AOS.refresh();
    });
</script>
</body>
</html>
