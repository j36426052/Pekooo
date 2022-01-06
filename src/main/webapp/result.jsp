<%@ page language="java" contentType="text/html; charset=BIG5"
    pageEncoding="BIG5"%>
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
                <div class="resultlist">
                	<a href=<%= se.output(0, 3) %>>
                    <div class="chunk">
                        <div class="gamename"><%= se.output(0, 1) %></div>
                        <div class="gameprice"><%= se.output(0, 2) %></div><br>
                        <div class="gametags">Tag1 Tag2 Tag3</div>
                    </div>
                    </a>
                    <div class="scorearea">
                        <div class="mainscore">總分數：<span class="score">100</span>分</div><br>
                        <div class="subscore">子網頁1：<span class="score">30</span>分</div><br>
                        <div class="subscore">子網頁2：<span class="score">25</span>分</div><br>
                        <div class="subscore">子網頁3：<span class="score">19</span>分</div><br>
                    </div>
                </div>
                <div class="resultlist">
                	<a href=<%= se.output(1, 3) %>>
                    <div class="chunk">
                        <div class="gamename"><%= se.output(1, 1) %></div>
                        <div class="gameprice"><%= se.output(1, 2) %></div><br>
                        <div class="gametags">Tag1 Tag2 Tag3</div>
                    </div>
                    </a>
                    <div class="scorearea">
                        <div class="mainscore">總分數：<span class="score">80</span>分</div><br>
                        <div class="subscore">子網頁1：<span class="score">19</span>分</div><br>
                        <div class="subscore">子網頁2：<span class="score">25</span>分</div><br>
                        <div class="subscore">子網頁3：<span class="score">14</span>分</div><br>
                    </div>
                </div>
                <div class="resultlist">
                	<a href=<%= se.output(2, 3) %>>
                    <div class="chunk">
                        <div class="gamename"><%= se.output(2, 1) %></div>
                        <div class="gameprice"><%= se.output(2, 2) %></div><br>
                        <div class="gametags">Tag1 Tag2 Tag3</div>
                    </div>
                    </a>
                    <div class="scorearea">
                        <div class="mainscore">總分數：<span class="score">65</span>分</div><br>
                        <div class="subscore">子網頁1：<span class="score">12</span>分</div><br>
                        <div class="subscore">子網頁2：<span class="score">17</span>分</div><br>
                        <div class="subscore">子網頁3：<span class="score">14</span>分</div><br>
                    </div>
                </div>
                <div class="resultlist">
                	<a href=<%= se.output(3, 3) %>>
                    <div class="chunk">
                        <div class="gamename"><%= se.output(3, 1) %></div>
                        <div class="gameprice"><%= se.output(3, 2) %></div><br>
                        <div class="gametags">Tag1 Tag2 Tag3</div>
                    </div>
                    </a>
                    <div class="scorearea">
                        <div class="mainscore">總分數：<span class="score">54</span>分</div><br>
                        <div class="subscore">子網頁1：<span class="score">10</span>分</div><br>
                        <div class="subscore">子網頁2：<span class="score">9</span>分</div><br>
                        <div class="subscore">子網頁3：<span class="score">11</span>分</div><br>
                    </div>
                </div>
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