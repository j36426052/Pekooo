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
                        <div class="mainscore">�`���ơG<span class="score">100</span>��</div><br>
                        <div class="subscore">�l����1�G<span class="score">30</span>��</div><br>
                        <div class="subscore">�l����2�G<span class="score">25</span>��</div><br>
                        <div class="subscore">�l����3�G<span class="score">19</span>��</div><br>
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
                        <div class="mainscore">�`���ơG<span class="score">80</span>��</div><br>
                        <div class="subscore">�l����1�G<span class="score">19</span>��</div><br>
                        <div class="subscore">�l����2�G<span class="score">25</span>��</div><br>
                        <div class="subscore">�l����3�G<span class="score">14</span>��</div><br>
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
                        <div class="mainscore">�`���ơG<span class="score">65</span>��</div><br>
                        <div class="subscore">�l����1�G<span class="score">12</span>��</div><br>
                        <div class="subscore">�l����2�G<span class="score">17</span>��</div><br>
                        <div class="subscore">�l����3�G<span class="score">14</span>��</div><br>
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
                        <div class="mainscore">�`���ơG<span class="score">54</span>��</div><br>
                        <div class="subscore">�l����1�G<span class="score">10</span>��</div><br>
                        <div class="subscore">�l����2�G<span class="score">9</span>��</div><br>
                        <div class="subscore">�l����3�G<span class="score">11</span>��</div><br>
                    </div>
                </div>
            </div>
            <div class="options">
                <div class="row">
                    <div class="label">�_�I</div>
                    <div class="label">�h�H�X�@</div>
                </div>
                <div class="row">
                    <div class="label">�氫</div>
                    <div class="label">����</div>
                </div>
                <div class="row">
                    <div class="label">����</div>
                    <div class="label">�j���h�H�s�u</div>
                </div>
            </div>            
        </div>
    </body>
</html>