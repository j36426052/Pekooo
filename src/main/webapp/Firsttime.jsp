<%@ page language="java" contentType="text/html; charset=BIG5"
    pageEncoding="BIG5"%>
<%@ page import ="PPeko.Testing" %>
<!DOCTYPE html>
<style>
    @import "mainpage.css";
</style>
    <head>
        <meta charset="UTF-8">
        <title>Ludum</title>
    </head>
    <body>
    
    	<jsp:useBean id="peko" class="Testing" scope="page"></jsp:useBean>
		
	    <%
	    
	    Testing te = new Testing();
	    te.test();
	    %>
	    
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
        <div class="content">�����D�n�������?�ݬݳo�Ǳ��˧a</div>
        <div class="contain">
                <a class="tile" href="https://store.steampowered.com/search/?filter=topsellers">Steam</a>
                <a class="tile" href="https://www.origin.com/twn/store">Origin</a>
                <a class="tile" href="https://www.ubisoft.com/zh-tw/games">Ubisoft</a>
                <a class="tile" href="https://www.microsoft.com/zh-tw/store/games">Microsoft</a>
                <a class="tile" href="http://soslab.nccu.edu.tw/Welcome.html">Surprise</a>
        </div>
    </body>
</html>