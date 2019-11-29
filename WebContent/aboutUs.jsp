<!DOCTYPE html>
<html lang="en">
    <head>
    <meta charset="UTF-8">
        <link rel="stylesheet" type="text/css" href="./about_style.css"/>
        <link rel="stylesheet" type="text/css" href="./slick/slick.css"/>
        <link rel="stylesheet" type="text/css" href="./slick/slick-theme.css"/>
        <link rel="stylesheet" href="https://cdn.rawgit.com/michalsnik/aos/2.1.1/dist/aos.css" />
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/c3/0.4.11/c3.min.css"/>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.0/jquery.min.js"></script>
        <script>
            $(function() {
                $(".meter > span").each(function() {
                    $(this)
                        .data("origWidth", $(this).width())
                        .width(0)
                        .animate({
                            width: $(this).data("origWidth")
                        }, 1200);
                });
            });
        </script>
<style>
    *{
        font-family: 'Lato', sans-serif;

    }
    body{
        background-color: #f8f8f8;
        margin: 0;
        color: #263238;
    }
    .topnav {
        z-index: 9999;
        margin-right: auto;
        overflow: hidden;
        background-color: rgb(152, 154, 154);
        text-align: center;
        /* transition: top .25s ease .5s;*/
        position: fixed;
        width: 100%;
        left:0px;
        top:0px;
        display:none;
    }
    #a1{
        margin-left: 37%;
    }
    .topnav a {
        float: left;
        display: block;
        color: #fafdfd;
        font-size: 27px;
        text-align: center;
        padding: 14px 16px;
        text-decoration: none;
    }
    /* Change color on hover */
    .topnav a:hover {
        background-color: rgb(119, 119, 119);
        color: white;
    }


</style>
</head>
<body>
<div class="topnav"> <!--This is menu bar.-->
    <a href="main.jsp" id="a1">HOME</a>
    <a href="Gift.jsp">GIFT</a>
    <a href="donation.jsp">DONATION</a>
    <a href="recommend.do">RECOMMEND</a>
</div>

<script type="text/javascript">
    $(function(){
        var vi = 300;  // 하단에 메뉴 표시할 스크롤 위치값 지정
        $(window).scroll(function(){
            var num = $(window).scrollTop();

            if( num > vi ){
                $(".topnav").fadeIn();
            }else{
                $(".topnav").fadeOut();
            }
        });
    });
</script>

<div id="top">
    <h1 id="aboutUs">About Us</h1>
    <h1>Best Seller</h1>
</div>
<div class=box style="width:80%; height: 2200px; background-color:white; ">
    <h1 id="intro" style="text-align: center; font-size: 40px;">Live always in best company when you read.</h1>
    <br/><br/>
    <div style="margin-left: 10%; margin-right: 30px;  height:300px; float: left; ">
        <table width=550>
            <tr>
                <td colspan=2><B style="font-size: 23px; color: #5d5d5d;">Average number of readings per year per person</B><br/><br/><br/></td>
            </tr>
            <tr>
                <td width=60>2011</td>
                <td width=400><img src=g1.png id=chart0 width=0 height=40 align=absmiddle> 12.8</td>
            </tr>
            <tr >
                <td>2013</td>
                <td><img src=g2.png id=chart1 width=0 height=40 align=absmiddle> 11.2</td>
            </tr>
            <tr>
                <td>2015</td>
                <td><img src=g3.png id=chart2 width=0 height=40 align=absmiddle> 9.1</td>
            </tr>
            <tr>
                <td>2017</td>
                <td><img src=g4.png id=chart3 width=0 height=40 align=absmiddle> 8.3</td>
            </tr>
        </table>
    </div>
    <br/>

    <script language=javascript>

        var data=new Array(330,280,242,213);

        for(i=0;i<4;i++){
            if(eval("chart" + i + ".width") < data[i]){ //eval 함수는 문자열을 코드로 인식하게하는 함수
                gph("chart" + i,data[i]);
            }
        }

        function gph(what,limit){
            if(eval(what + ".width") < limit){
                if(eval(what + ".width")+5 > limit)
                    eval(what +".width=" + limit);
                else
                    eval(what +".width=" + what + ".width + 5");
                setTimeout("gph('"+ what + "'," + limit + ")",50);
            }
        }
    </script>
    <div style="font-size: 25px; line-height: 1.8em;">
        <br/><br/>
        Look at this graph,<br/>
        This graph is data provided by Statistics Korea.<br/>
        And You can see that graph continues to decrease.<br/>
        This shows that the average adult reading is decreasing gradually.<br/>
        <br/>
    </div>

    <div id="Piechart" style="float: right;" data-aos="fade-left">
        <div id="pie" style="color: black;"></div>
    </div>
        <script src="https://d3js.org/d3.v3.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/c3/0.4.11/c3.min.js"></script>
        <script>
            var chart = c3.generate({
                bindto: "#pie",
                data: {
                    columns: [
                        ['more thad 1',59.9],
                        ['never read',40.1]
                    ],
                    type:'pie'
                }
            });
        </script>
    <div style="font-size: 25px; text-align: right; line-height: 1.8em;">
        <br/><br/><br/>
        Forty percent of adults do not read a book a year.<br/>
        According to the results of the 2017 National Reading Survey,<br/>59.9 percent of adults read even one book in a year.<br/>
        <!--<div class="meter orange nostripesv" style="margin-right: auto; margin-left: auto;">
            <span style="width: 50.3%; font-size:20px;">&nbsp;&nbsp;&nbsp;50.3%</span>
        </div>-->
    </div>

        <div class="so" style="clear: both;">
            <br/>
            <h1>So, we try to create some events to improve our reading!</h1>
            <h2>First, Anyone who likes books can participate.</h2>
            <br/>
        </div>

    <br/><br/><br/><br/>
    <div class="divImg">
        <div class="flip-box">
            <div class="flip-box-inner">
                <div class="flip-box-front">
        <img src="giftbox.png" alt="gift_image" class="circleImg" data-aos="flip-left" class="front"/>
            </div><!--flip-box-front-->
                <div class="flip-box-back">
                    <h1 style="text-align: center">GIFT</h1>
                    <p>One, Prepare a book that you like.</p>
                    <p>Two, Just send it to someone you don't know.</p>
                    <p>Three, you will get a book as a gift!</p>
                    <p>What a exciting event!</p>
                </div>
            </div><!--flip-box-inner-->
        </div><!--flip-box-->
        <div class="flip-box">
            <div class="flip-box-inner">
                <div class="flip-box-front">
                    <img src="heart.png" alt="gift_image" class="circleImg" data-aos="flip-left" class="front"/>
                </div><!--flip-box-front-->
                <div class="flip-box-back">
                    <h1 style="text-align: center;">DONATION</h1>
                    <p>Make a donation</p>
                    <p>Give a book, Give your love.</p>
                    <p>Give a book away and brighten someone's day.</p>
                    <p>Donated books are sent to foundations or organizations.</p>

                </div>
            </div><!--flip-box-inner-->
        </div><!--flip-box-->
        <div class="flip-box">
            <div class="flip-box-inner">
                <div class="flip-box-front">
                    <img src="good.png" alt="gift_image" class="circleImg" data-aos="flip-left" class="front"/>
                </div><!--flip-box-front-->
                <div class="flip-box-back">
                    <h1 style="text-align: center;">RECOMMEND</h1>
                    <p>Please recommend me a book that I read interestingly.</p>
                    <p>Register for your one-line evaluation!</p>
                    <p>Also, take a look at what other people read interestingly!</p>
                </div>
            </div><!--flip-box-inner-->
        </div><!--flip-box-->


        </div>
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

    <br/><br/><br/><br/><br/>

    <!-- Team -->
    <h1 style="text-align: center">Our Amazing Team</h1><br/>
    <div class="team">
        <div class="teamMem"  style="float: left;">
            <img src="ahyun.jpg" alt="mem_ahyun" class="memImg"/>
            <h2>Cheon Ahyun</h2>
            <a href="https://www.instagram.com/a_hyun1000" target="_blank"><img src="instagram.png" alt="insta"/>&nbsp;&nbsp;</a>
            <a href="#emailCopy" class="emailCopy"><img src="gmail.png" alt="mail"/>&nbsp;&nbsp;</a>
            <input type="text" value="cah0512@naver.com" id="emailAddress1" style="display:none;">
            <div id="contents" style=" display:inline;">
            <a href="#layerPopup"><img src="phone.png" alt="phone"/>&nbsp;&nbsp;</a>
            <!--pop_up layer-->
            <div style="text-align:center;" id="layerPopup">
                <br/>
                <h2>010-6792-0512</h2>
                <br/>
                <button type="button" class="Xbtn"><img src="error.png"></button>
            </div>
            </div>
            <!-- -->
        </div>
        <script type="text/javascript">
            $('.emailCopy').click(function(){
                var urlAddress= $('#emailAddress1');
                urlAddress.css('display','block').select();
                document.execCommand("Copy");
                urlAddress.css('display','none');
                alert('URL 주소가 복사 되었습니다');
                return false;
            });
        </script>
        <script>
            $(document).ready(function(){
                $("#layerPopup").hide();
                $("#contents > a").click(function(){
                    $("#contents > a").blur();
                    $("#layerPopup").show();
                    $("#layerPopup a").focus();
                    return false;
                });
                          $("#layerPopup button").click(function(){
                    $("#contents > a").focus();
                    $("#layerPopup").hide();
                });
            });
        </script>

        <div class="teamMem" style="float: left;">
            <img src="jh.jpg" alt="mem2" class="memImg"/>
            <h2>Kim Jeong Hoon</h2>
            <a href="https://www.instagram.com/hooonij" target="_blank"><img src="instagram.png" alt="insta"/>&nbsp;&nbsp;</a>
            <a href="#emailCopy2" class="emailCopy2"><img src="gmail.png" alt="mail"/>&nbsp;&nbsp;</a>
            <input type="text" value="sjsrh96@naver.com" id="emailAddress2" style="display:none;">
            <div id="contents2" style=" display:inline;">
                <a href="#layerPopup"><img src="phone.png" alt="phone"/>&nbsp;&nbsp;</a>
                <!--pop_up layer-->
                <div style="text-align:center;" id="layerPopup2">
                    <br/>
                    <h2>010-9859-6664</h2>
                    <br/>
                    <button type="button" class="Xbtn"><img src="error.png"></button>
                </div>
            </div>
            <!-- -->
        </div>
        <script type="text/javascript">
            $('.emailCopy2').click(function(){
                var urlAddress= $('#emailAddress2');
                urlAddress.css('display','block').select();
                document.execCommand("Copy");
                urlAddress.css('display','none');
                alert('URL 주소가 복사 되었습니다');
                return false;
            });
        </script>
        <script>
            $(document).ready(function(){
                $("#layerPopup2").hide();
                $("#contents2 > a").click(function(){
                    $("#contents2 > a").blur();
                    $("#layerPopup2").show();
                    $("#layerPopup2 a").focus();
                    return false;
                });
                $("#layerPopup2 button").click(function(){
                    $("#contents2 > a").focus();
                    $("#layerPopup2").hide();
                });
            });
        </script>

        <div class="teamMem" style="float: left;">
            <img src="et.jpg" alt="mem3" class="memImg"/>
            <h2>Lee Eun Taek</h2>
            <a href="https://www.instagram.com/letoasis" target="_blank"><img src="instagram.png" alt="insta"/>&nbsp;&nbsp;</a>
            <a href="#emailCopy3" class="emailCopy3"><img src="gmail.png" alt="mail"/>&nbsp;&nbsp;</a>
            <input type="text" value="euntaek@naver.com" id="emailAddress3" style="display:none;">
            <div id="contents3" style=" display:inline;">
                <a href="#layerPopup"><img src="phone.png" alt="phone"/>&nbsp;&nbsp;</a>
                <!--pop_up layer-->
                <div style="text-align:center;" id="layerPopup3">
                    <br/>
                    <h2>010-6312-6809</h2>
                    <br/>
                    <button type="button" class="Xbtn"><img src="error.png"></button>
                </div>
            </div>
            <!-- -->
        </div>
        <script type="text/javascript">
            $('.emailCopy3').click(function(){
                var urlAddress= $('#emailAddress3');
                urlAddress.css('display','block').select();
                document.execCommand("Copy");
                urlAddress.css('display','none');
                alert('URL 주소가 복사 되었습니다');
                return false;
            });
        </script>
        <script>
            $(document).ready(function(){
                $("#layerPopup3").hide();
                $("#contents3 > a").click(function(){
                    $("#contents3 > a").blur();
                    $("#layerPopup3").show();
                    $("#layerPopup3 a").focus();
                    return false;
                });
                $("#layerPopup3 button").click(function(){
                    $("#contents3 > a").focus();
                    $("#layerPopup3").hide();
                });
            });
        </script>

    </div>
    </div>





<div class="footNav" style="clear: both;"> <!--This is menu bar.-->
    <a href="aboutUs.jsp" style="margin-left: 20px;">About Us</a>
    <a href="#order">Privacy Statement</a>
    <a href="#event">FAQ</a>
    <a href="#contact">Site map</a>
    <a href="#" style="margin-left: 70%;" class="top"> &nbsp;TOP&nbsp; </a>
</div>
<footer>
    <br/><br/>
    <div style="margin-left: 40px;">
        <p>Team / Best Seller</p>
        <p>Member / Cheon, Ahyun &nbsp;|&nbsp; Kim, Jung Hoon &nbsp;|&nbsp; Lee, Eun Taek
        <p>Instagram / @a_hyun1000 &nbsp;|&nbsp; @letoasis &nbsp;|&nbsp; @hooonij</p>
        <p>Address / 1, Cheongdaero, Seowon-gu, Cheoungju, Chungbuk</p>
        <p>COPYRIGHT(C)2019 BEST SELLER. ALL RIGHTS RESERVED. &nbsp;DESIGN BY BEST SELLER</p>
    </div>
    <br/><br/>
</footer>
</body>
</html>
