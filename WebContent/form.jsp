<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Application</title>
<style rel="stylesheet">
@charset "UTF-8";
@import url(https://fonts.googleapis.com/css?family=Lato:400,700);
* {
  box-sizing: border-box;
}

body {
  font-family: 'Lato', sans-serif;
  background-color: #f8f8f8;
  margin:0;
}

/* 신청서 양식 */
body .application {
  position: relative;
  overflow: hidden;
  width: 700px;
  height: 500px;
  margin: 200px auto 0;
  background-color: #ffffff;
  box-shadow: rgba(0, 0, 0, 0.1) 0px 10px 30px;
}

/* 신청폼 크기 */
body .application .half {
  float: left;
  width: 50%;
  height: 100%;
  padding: 58px 40px 0;
}

/* 신청서 사진 */
body .application .half.bg {
  background-image: url("images/half bg.png");
  background-size: 400px;
  background-repeat: no-repeat;
}

/* title 'APPLICATION' */
body .application h1 {
  font-size: 18px;
  font-weight: 700;
  margin-bottom: 23px;
  text-align: center;
  text-indent: 6px;
  letter-spacing: 7px;
  text-transform: uppercase;
  color: #263238;
}

/* realname anonymity */
body .application .tabs {
  width: 100%;
  margin-bottom: 29px;
  border-bottom: 1px solid #d9d9d9;
}
body .application .tabs .tab {
  display: inline-block;
  margin-bottom: -1px;
  padding: 20px 15px 10px;
  cursor: pointer;
  letter-spacing: 0;
  border-bottom: 1px solid #d9d9d9;
  user-select: none;
  transition: all 0.1s ease-in-out;
}
body .application .tabs .tab a {
  font-size: 11px;
  text-decoration: none;
  text-transform: uppercase;
  color: #d9d9d9;
  transition: all 0.1s ease-in-out;
}
body .application .tabs .tab.active a, body .application .tabs .tab:hover a {
  color: #263238;
}
body .application .tabs .tab.active {
  border-bottom: 1px solid #263238;
}

/* button */
body .application .content form {
  position: relative;
  height: 287px;
}

/* input annimation */
body .application .content label:first-of-type, body .application .content input:first-of-type, body .application .content .more:first-of-type {
  animation: slideIn 0.4s cubic-bezier(0.37, 0.82, 0.2, 1);
}
body .application .content label:nth-of-type(2), body .application .content input:nth-of-type(2), body .application .content .more:nth-of-type(2) {
  animation: slideIn 0.5s cubic-bezier(0.37, 0.82, 0.2, 1);
}
body .application .content label:nth-of-type(3), body .application .content input:nth-of-type(3), body .application .content .more:nth-of-type(3) {
  animation: slideIn 0.6s cubic-bezier(0.37, 0.82, 0.2, 1);
}
body .application .content label {
  font-size: 12px;
  color: #263238;
  user-select: none;
}
body .application .content label:not([for='remember']) {
  display: none;
}

/* input field css */
body .application .content input.inpt {
  font-size: 14px;
  display: block;
  width: 100%;
  height: 42px;
  margin-bottom: 12px;
  padding: 16px 13px;
  color: #999999;
  border: 1px solid #d9d9d9;
  background: transparent;
  border-radius: 2px;
}

/* placeholder */
body .application .content input.inpt::-webkit-input-placeholder {
  font-size: 14px;
  color: #999999;
  font-family: 'Lato', sans-serif;
}

body .application .content input.inpt:focus {
  border-color: #999999;
}

/* button */
body .application .content input.submit {
  font-size: 12px;
  line-height: 42px;
  display: block;
  width: 100%;
  height: 42px;
  cursor: pointer;
  vertical-align: middle;
  letter-spacing: 2px;
  text-transform: uppercase;
  color: #263238;
  border: 1px solid #263238;
  background: transparent;
  border-radius: 2px;
}
body .application .content input.submit:hover {
  background-color: #263238;
  color: #ffffff;
  transition: all 0.2s;
}

/* fucus outline */
body .application .content input:focus {
  outline: none;
}

body .application .content .submit-wrap {
  position: absolute;
  bottom: 0;
  width: 100%;
}
body .application .content .submit-wrap a {
  font-size: 12px;
  display: block;
  margin-top: 20px;
  text-align: center;
  text-decoration: none;
  color: #999999;
}
body .application .content .submit-wrap a:hover {
  text-decoration: underline;
}
body .application .content .anonymity-cont {
  display: none;
}

@keyframes slideIn {
  0% {
    filter: progid:DXImageTransform.Microsoft.Alpha(Opacity=0);
    opacity: 0;
    margin-left: -320px;
  }
  100% {
    filter: progid:DXImageTransform.Microsoft.Alpha(enabled=false);
    opacity: 1;
    margin-left: 0px;
  }
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
    }
    #a1{
        margin-left: 35%;
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
</style>
</head>
<body>
<div class="topnav"> <!--This is menu bar.-->
    <a href="main.jsp" id="a1">HOME</a>
    <a href="Gift.jsp">GIFT</a>
    <a href="donation.jsp">DONATION</a>
    <a href="recommend.do">RECOMMEND</a>
</div>
<br/><br/><br/>
	<section class="application">
		<article class="half">
			<h1>Application</h1>
				<div class="tabs">
					<span class="tab realname active"><a href="#realname">Real name</a></span>
				    <span class="tab anonymity"><a href="#anonymity">Anonymity</a></span>
			    </div>
			        <div class="content">
				    	<div class="realname-cont cont">
					    	<form action="form.do" method="post">
						   		<input type="text" name="name" id="name" class="inpt" required="required" placeholder="Your name">
									<label for="name">Your name</label>
										<input type="text" name="title" id="title" class="inpt" required="required" placeholder="Book title">
										<label for="title">Book title</label>
										<input type="text" name="author" id="author" class="inpt" required="required" placeholder="Author">
										<label for="author">Book author</label>
						                <div class="submit-wrap">
							            	<input type="submit" value="Donate now" class="submit">
						                </div>
        					  </form>
    				    </div>
    				    <div class="anonymity-cont cont">
               				<form action="form2.do" method="post" >
						    	<input type="email" name="email" id="email" class="inpt" required="required" placeholder="Your email">
									<label for="email">Your email</label>
										<input type="title" name="title" id="title" class="inpt" required="required" placeholder="Book title">
										<label for="title">Book title</label>
										<input type="author" name="author" id="author" class="inpt" required="required" placeholder="Author">
										<label for="author">Book author</label>
						                <div class="submit-wrap">
							            	<input type="submit" value="Donate now" class="submit">
						                </div>
        					</form>
            			</div>
			        </div>
		</article>
		<div class="half bg"></div>
	</section>
<br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script> 
	<script type="text/javascript">
	$('.tabs .tab').click(function(){
  		if ($(this).hasClass('realname')) {
        	$('.tabs .tab').removeClass('active');
        	$(this).addClass('active');
        	$('.cont').hide();
        	$('.realname-cont').show();
    	} 
    	if ($(this).hasClass('anonymity')) {
       		$('.tabs .tab').removeClass('active');
        	$(this).addClass('active');
        	$('.cont').hide();
        	$('.anonymity-cont').show();
    	}
	});
	</script>
	
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