<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import ="PPeko.Search" %>
<!DOCTYPE html>
<style>
    @import "resultpage.css";
</style>
    <head>
        <meta charset="UTF-8">
        <title>resultpage</title>
    </head>
    <body>
    	
    	<jsp:useBean id="keyword" class="Search" scope="page"></jsp:useBean>
	    <jsp:setProperty property="*" name="keyword" />
    	
    	<%
    	Search se = new Search();
    	request.setCharacterEncoding("UTF-8");
    	se.gogogo(request.getParameter("keyword"));
	    %>
    
        <div class ="container">
            <a href="Firsttime.jsp" class="icon">
                <img src="icon.png" height="80" width="80">
            </a>
            <form action="result.jsp" method="post" class="parent">
                <input type="text" class="search" name="keyword" placeholder=" ">
            </form>
        </div>
        <div class="contain">
            <div class="resultarea">
            
            	<%= se.printAllArea() %>
            	
                
            </div>
            <div class="options">
                <div class="row">
                    <div class="label">冒險</div>
                    <div class="label">多人合作</div>
                </div>
                <div class="row">
                    <div class="label">格鬥</div>
                    <div class="label">模擬</div>
                </div>
                <div class="row">
                    <div class="label">恐怖</div>
                    <div class="label">大型多人連線</div>
                </div>
            </div>            
        </div>
    </body>
</html>
