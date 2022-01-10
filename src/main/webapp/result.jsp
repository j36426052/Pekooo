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
		<input type="sibmit" name="search" id="" class="btn" value="Search">
            </form>
        </div>
        <div class="contain">
            <div class="resultarea">
            
            	<%= se.printAllArea() %>
            	
                
            </div>           
        </div>
    </body>
</html>
