<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>

<link rel="stylesheet" href="css/index.css" type="text/css" media="screen">
<link href="css/all.css" rel="stylesheet">
	<script defer src="js/all.js"></script>

<div style="color: rgba(0, 0, 0, 0.5);" scroll="no">
<section style="color: rgba(0, 0, 0, 0.5);" scroll="no">
  			<nav class="shift" scroll="no">
    			<ul>		
    				<div class="logo">
						<div><a href="index.jsp"><img src="img/logo.png" height="200" width="250"></a></div>
					</div>
      				 <li><a href="index.jsp">首頁</a></li>
              <li><a href="products.jsp">商品型錄</a>
                 <ul style=" color: rgba(0, 0, 0, 0.5);">
                <li><a href="products.jsp#white" >白色系</a>
                <ul style=" width:90px;color: rgba(0, 0, 0, 0.5);">
                  <li><a href="white1.jsp" >恰似·初見</a></li>
                  <li><a href="white2.jsp" >人間·繁星</a></li>
                  <li><a href="white3.jsp" >青丘·盎然</a></li>
                      <li><a href="white4.jsp" >悠然·子衿</a></li>
                      <li><a href="white5.jsp" >春風·十裡</a></li>
                      <li><a href="white6.jsp" >今日·限定</a></li>
                    </ul>
                </li>
                <li><a href="products.jsp#pink" >粉色系</a>
                <ul style=" width:90px;color: rgba(0, 0, 0, 0.5);">
                  <li><a href="pink1.jsp" >年少·童話</a></li>
                  <li><a href="pink2.jsp" >如沐·春風</a></li>
                  <li><a href="pink3.jsp" >一見·傾心</a></li>
                      <li><a href="pink4.jsp" >巧笑·嫣然</a></li>
                      <li><a href="pink5.jsp" >絢爛·時光</a></li>
                      <li><a href="pink6.jsp" >怦然·心動</a></li>
                    </ul>
                </li>
                <li><a href="products.jsp#red" >紅色系</a>
                <ul style=" width:90px;color: rgba(0, 0, 0, 0.5);">
                  <li><a href="red1.jsp" >夢醒·餘生</a></li>
                  <li><a href="red2.jsp" >唯此·珍惜</a></li>
                  <li><a href="red3.jsp" >絢爛·煙火</a></li>
                      <li><a href="red4.jsp" >蝶舞·翩躚</a></li>
                      <li><a href="red5.jsp" >鍾情·於你</a></li>
                      <li><a href="red6.jsp" >紅白·玫瑰</a></li>
                    </ul>
                </li>
                    <li><a href="products.jsp#blue" >藍色系</a>
                    <ul style=" width:90px;color: rgba(0, 0, 0, 0.5);">
                  <li><a href="blue1.jsp" >滿天·星火</a></li>
                  <li><a href="blue2.jsp" >天生·浪漫</a></li>
                  <li><a href="blue3.jsp" >萬裡·行路</a></li>
                      <li><a href="blue4.jsp" >年少·如初</a></li>
                      <li><a href="blue5.jsp" >清新·明雅</a></li>
                      <li><a href="blue6.jsp" >湛藍·心事</a></li>
                    </ul>
                    </li>
                    <li><a href="products.jsp#purple" >紫色系</a>
                    <ul style=" width:90px;color: rgba(0, 0, 0, 0.5);">
                  <li><a href="purple1.jsp" >溫暖·模樣</a></li>
                  <li><a href="purple2.jsp" >繁花·似錦</a></li>
                  <li><a href="purple3.jsp" >暖陽·盛開</a></li>
                      <li><a href="purple4.jsp" >清夢·星河</a></li>
                      <li><a href="purple5.jsp" >靜謐·相思</a></li>
                      <li><a href="purple6.jsp" >天上·人間</a></li>
                    </ul>
                    </li>
                  </ul>  
                </li> 
              <li><a href="">關於我們</a>
                <ul style="background: #FFE4B5; color: rgba(0, 0, 0, 0.5);">
                  <li><a href="store.jsp" class="tablinks">品牌故事&店家資訊</a></li>
                <li><a href="questions.jsp" class="tablinks">常見問題</a></li>
                <li><a href="team.jsp" class="tablinks">創作團隊</a></li>
                  </ul>  
              </li>
                 <!-- 登入後改成member.jsp、登入前改成login+join.jsp-->
              <%                  
                if(!id.equals(""))
                	{
                out.print("<li><a href='member.jsp'>會員資料</a></li>");
                }
            else
            {
        out.print("<li><a href='login+join.jsp'>會員</a></li>");
    }
              %>
              <!-- 訪客人數-->
              
              <li><a href="cart.jsp" >購物車</a></li>
              <li><a href="checkout.jsp" >付款</a></li>
			  <li><a href="admin.jsp" >管理者登入</a></li>

			  <%
if(!id.equals(""))
out.println("hi，"+id+"，"+"<a href='logout.jsp' style='color:black'>logout</a>");

		
	%>
	

			<li><a href=""><i class="fab fa-twitter"></i></a></li>
			<li><a href=""><i class="fab fa-facebook"></i></a></li>
			<li><a href=""><i class="fab fa-line"></i></a></li>
			<li><a href="#masthead" >回頂部</a></li>
    			</ul>
  			</nav>
		</section>   
	</div> 