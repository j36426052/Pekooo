<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<style>
    @import "mainpage.css";
</style>
    <head>
        <meta charset="UTF-8">
        <title>Ludum</title>
    </head>
    <body>
	    
        <div class="flex">
            <a >
                <img src="icon.png" height="250px" width="250px">
            </a>
        </div>
        <div class="container">
            <form action="result.jsp" method="post" class="parent">
                <input type="text" name = "keyword" class="search" placeholder=" ">
                <input type="submit" name="" id="" class="btn" >
            </form>
        </div>
        <div class="content">不知道要玩什麼嗎?看看這些推薦吧</div>
        <div class="contain">
                <a class="tile" href="https://store.steampowered.com/search/?filter=topsellers">Steam</a>
                <a class="tile" href="https://www.origin.com/twn/store">Origin</a>
                <a class="tile" href="https://www.ubisoft.com/zh-tw/games">Ubisoft</a>
                <a class="tile" href="https://www.microsoft.com/zh-tw/store/games">Microsoft</a>
                <a class="tile" href="http://soslab.nccu.edu.tw/Welcome.html">Surprise</a>
        </div>
    </body>
</html>