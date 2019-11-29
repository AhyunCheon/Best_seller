
 <%@ page language="java" contentType="text/html; charset=euc_kr" pageEncoding="euc_kr"%>

<% request.setCharacterEncoding("euc-kr"); %>

    <%@ page import="user.User" %>
	<%@ page import="java.util.ArrayList" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
 <html>
<head>
<title>send here!</title>
  <link rel="stylesheet" type="text/css" href="./list_style.css"/>
 <style>
   body{
            font-family: 'Lato', sans-serif;
            background-color: #f8f8f8;
            margin: 0;
        }
    
    </style>
</head>
<body>
<div class="topnav"> <!--This is menu bar.-->
    <a href="main.jsp" id="a1">HOME</a>
    <a href="aboutUs.jsp">ABOUT US</a>
    <a href="donation.jsp">DONATION</a>
    <a href="recommend.do">RECOMMENDED</a>
</div>

<br/><br/>
<h1 id="giftTitle">Please send the book to the address<br/>and contact number below!</h1>
<div class="square">
    <div id="applyForm">
        <br/><br/>
        <p>It's very interesting!</p>
        <br/>
        <div id="s1">
            <c:forEach items="${articleList}" var="article">
                <p><b>Name</b></p>
                <p>${article.name}</p>
                <p><b>Phone</b></p>
                <p>${article.phone}</p>
                <p><b>Address</b><p>${article.road_name} ${article.detail_add}</p>
            </c:forEach>
        </div>
   
    </div>
</div>
<br/><br/>
<div class="footNav"> <!--This is menu bar.-->
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
        <p>Instagram / @a_hyun1000 &nbsp;|&nbsp; @hooonij  &nbsp;|&nbsp; @letoasis</p>
        <p>Address / 1, Cheongdaero, Seowon-gu, Cheoungju, Chungbuk</p>
        <p>COPYRIGHT(C)2019 BEST SELLER. ALL RIGHTS RESERVED. &nbsp;DESIGN BY BEST SELLER</p>
    </div>
    <br/><br/>
</footer>
</body>
</html>