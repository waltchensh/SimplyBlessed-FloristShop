<%@ page import = "java.sql.*, java.util.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>

<%@include file="config.jsp" %>
<%request.setCharacterEncoding("UTF-8");%>

<%
String id="", pwd="";
if(session.getAttribute("id") != null ){
sql = "SELECT * FROM member WHERE id='" +session.getAttribute("id")+"';"; 
ResultSet paperrs1 =con.createStatement().executeQuery(sql);
while(paperrs1.next()){
	    //name=paperrs1.getString(1);
	    id=paperrs1.getString("id");
	    pwd=paperrs1.getString("pwd");
	}
}

%>




<!DOCTYPE html>
<html lang="en">
<html style="height:100%;width:100vw;">
	<head>
		<meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<link rel="stylesheet" href="css/index.css" type="text/css" media="screen">
		<link rel="stylesheet" href="css/index2.css" type="text/css" media="screen">
		<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
		<link href="css/all.css" rel="stylesheet">
	<script defer src="js/all.js"></script>
		<link rel="stylesheet" type="text/css" href="css/component.css" >
		<script src="js/modernizr.custom.js"></script>
		<script src="js/index2.js" type="text/javascript" charset="utf-8" async defer></script>
		<title>Home</title>
	</head>
	<body background="img/background.jpg" style="height:100%;max-height:100%;max-width:100%;background-attachment: fixed;">
		<div style="margin-top:-10px;">
		<%@include file="navbar.jsp"%>
		</div>
		<div>
		<header id="masthead">
				<h1>Simply Blessed</h1>
		</header>
		<div class="container">
			<div class="mySlides">
  				<img src="img/slider1.jpg" style="width:100%;height:68vh;border: 1px solid black;">
  				<div class="w3-display-bottomright w3-large w3-container w3-padding-16 w3-black">
    				Simply Blessed
  				</div>
			</div>
			<div class="mySlides">
  				<img src="img/slider2.jpg" style="width:100%;height:68vh;border: 1px solid black;">
  				<div class="w3-display-bottomright w3-large w3-container w3-padding-16 w3-black">
    				Simply Blessed
  				</div>
			</div>
			<div class="mySlides">
  				<img src="img/slider3.jpg" style="width:100%;height:68vh;border: 1px solid black;">
  				<div class="w3-display-bottomright w3-large w3-container w3-padding-16 w3-black">
    				Simply Blessed
  				</div>
			</div>
			<div class="mySlides">
  				<img src="img/slider.jpg" style="width:100%;height:68vh;border: 1px solid black;">
  				<div class="w3-display-bottomright w3-large w3-container w3-padding-16 w3-black">
    				Simply Blessed
  				</div>
			</div>
			<button class="w3-button w3-display-left w3-black" onclick="plusDivs(-1)">&#10094;</button>
			<button class="w3-button w3-display-right w3-black" onclick="plusDivs(1)">&#10095;</button>
		</div>
 		</div>

 		<div class="top">
 			<h1>促銷商品</h1>
 			<div class="w3-card-4" style="width:25%">
 				<div class="crown" style="width:50%; height:60px;"><img src="img/onsale.gif" style="width:100%; height:60px;"></div>
  				<img src="flowers/white01.jpg" class="toppic" style="width:90%">
    		<div class="w3-container w3-center">
      			<p>恰似·初見</p>
    		</div>
 	 	</div>
 	 	 <div class="w3-card-4" style="width:25%">
 	 	 	<div class="crown" style="width:50%; height:60px;"><img src="img/onsale.gif" style="width:100%; height:60px;"></div>
    		<img src="flowers/purple05.jpg" class="toppic" style="width:90% ">
    		<div class="w3-container w3-center">
      			<p>靜謐·相思</p>
    		</div>
 	 	</div>
 	 	 <div class="w3-card-4" style="width:25%">
 	 	 	<div class="crown" style="width:50%; height:60px;"><img src="img/onsale.gif" style="width:100%; height:60px;"></div>
    		<img src="flowers/blue02.jpg" class="toppic"  style="width:90% ">
    		<div class="w3-container w3-center">
      			<p>天生·浪漫</p>
    		</div>		
 	 	</div> 
 	 	</div>
                           <% 
                    sql="select * from whiteflowers union select *from redflowers  union select *from blueflowers union select *from pinkflowers  union select *from purpleflowers   order by hit desc limit 3";

                           
		              ResultSet rs5 =con.createStatement().executeQuery(sql);
rs5.next();
                                   
                           %>
 		<!--热销商品-->
 		<div class="top">
 			<h1><img src="img/rexiao.png" class="int"></h1>
 			<div class="w3-card-4" style="width:25%">
 				<div class="crown" style="width:50%; height:60px;"><img src="img/crown.jpg" style="width:50%; height:60px;"></div>
  				<img src="<%=rs5.getString(2)%>" class="toppic" style="width:90%">
    		<div class="w3-container w3-center">
      			<p>蝶舞·翩躚</p>
    		</div>
 	 	</div>
 	 	<%
rs5.next();

 	 	%>
 	 	 <div class="w3-card-4" style="width:25%">
 	 	 	<div class="crown" style="width:50%; height:60px;"><img src="img/crown.jpg" style="width:50%; height:60px;"></div>
    		<img src="<%=rs5.getString(2)%>" class="toppic" style="width:90% ">
    		<div class="w3-container w3-center">
      			<p>今日·限定</p>
    		</div>
 	 	</div>
 	 	 	 	<%
rs5.next();

 	 	%>
 	 	 <div class="w3-card-4" style="width:25%">
 	 	 	<div class="crown" style="width:50%; height:60px;"><img src="img/crown.jpg" style="width:50%; height:60px;"></div>
    		<img src="<%=rs5.getString(2)%>" class="toppic"  style="width:90% ">
    		<div class="w3-container w3-center">
      			<p>絢爛·時光</p>
    		</div>		
 	 	</div> 
 	 	</div>

        <!--商品目录-->
 	 	<div id="wrapper">
 	 	<div class="products" style="height: 100%;max-height:100%;"><a name="products" id="products"></a>
 			<h1><img src="img/seriors.png" class="int"></h1>
 		<div class="tab">
  			<button class="tablinks" onclick="openCity(event, 'White')" id="defaultOpen">白色系</button>
  			<button class="tablinks" onclick="openCity(event, 'Pink')">粉色系</button>
  			<button class="tablinks" onclick="openCity(event, 'Red')">紅色系</button>
  			<button class="tablinks" onclick="openCity(event, 'Blue')">藍色系</button>
  			<button class="tablinks" onclick="openCity(event, 'Purple')">紫色系</button>
		</div>

		<div id="White" class="tabcontent" >
  			<ul class="grid cs-style-4" style="width:90%">
			<li>
  			<figure >
				<img src="flowers/white01.jpg" class="pics">
				<figcaption>
					<h3>恰似</h3><h3>初見</h3>
					<a href="white1.jsp">Take a look</a>
				</figcaption>
			</figure>
			</li>
			<li>
			<figure >
				<img src="flowers/white02.jpg" class="pics">
				<figcaption>
					<h3>人間</h3><h3>繁星</h3>
					<a href="white2.jsp">Take a look</a>
				</figcaption>
			</figure>
			</li>
			<li>
			<figure >
				<img src="flowers/white03.jpg" class="pics">
				<figcaption>
					<h3>青丘</h3><h3>盎然</h3>
					<a href="white3.jsp">Take a look</a>
				</figcaption>
			</figure>
			</li>
			<li>
			<figure >
				<img src="flowers/white04.jpg" class="pics">
				<figcaption>
					<h3>悠然</h3><h3>子衿</h3>
					<a href="white4.jsp">Take a look</a>
				</figcaption>
			</figure>
			</li>
			<li>
			<figure >
				<img src="flowers/white05.jpg" class="pics">
				<figcaption>
					<h3>春風</h3><h3>十裡</h3>
					<a href="white5.jsp">Take a look</a>
				</figcaption>
			</figure>
			</li>
			<li>
			<figure >
				<img src="flowers/white06.jpg" class="pics">
				<figcaption>
					<h3>今日</h3><h3>限定</h3>
					<a href="white6.jsp">Take a look</a>
				</figcaption>
			</figure>
			</li>
			</ul>
		</div>

		<div id="Pink" class="tabcontent">
  			<ul class="grid cs-style-4" style="width:90%">
  			<li>
  			<figure>
				<img src="flowers/pink01.jpg" class="pics">
				<figcaption>
					<h3>年少</h3><h3>童話</h3>
					<a href="pink1.jsp">Take a look</a>
				</figcaption>
			</figure>
			</li>
			<li>
			<figure>
				<img src="flowers/pink02.jpg" class="pics">
				<figcaption>
					<h3>如沐</h3><h3>春風</h3>
					<a href="pink2.jsp">Take a look</a>
				</figcaption>
			</figure>
			</li>
			<li>
			<figure>
				<img src="flowers/pink03.jpg" class="pics">
				<figcaption>
					<h3>一見</h3><h3>傾心</h3>
					<a href="pink3.jsp">Take a look</a>
				</figcaption>
			</figure>
			</li>
			<li>
			<figure>
				<img src="flowers/pink04.jpg" class="pics">
				<figcaption>
					<h3>巧笑</h3><h3>嫣然</h3>
					<a href="pink4.jsp">Take a look</a>
				</figcaption>
			</figure>
			</li>
			<li>
			<figure>
				<img src="flowers/pink05.jpg" class="pics">
				<figcaption>
					<h3>絢爛</h3><h3>時光</h3>
					<a href="pink5.jsp" >Take a look</a>
				</figcaption>
			</figure>
			</li>
			<li>
			<figure>
				<img src="flowers/pink06.jpg" class="pics">
				<figcaption>
					<h3>怦然</h3><h3>心動</h3>
					<a href="pink6.jsp" >Take a look</a>
				</figcaption>
			</figure>
			</li>
			</ul>
		</div>

		<div id="Red" class="tabcontent">
  			<ul class="grid cs-style-4" style="width:90%">
  			<li>
  			<figure>
				<img src="flowers/red01.jpg" class="pics">
				<figcaption>
					<h3>夢醒<br>餘生</h3>
					<a href="red1.jsp">Take a look</a>
				</figcaption>
			</figure>
			</li>
			<li>
			<figure>
				<img src="flowers/red02.jpg" class="pics">
				<figcaption>
					<h3>唯此<br>珍惜</h3>
					<a href="red2.jsp">Take a look</a>
				</figcaption>
			</figure>
			</li>
			<li>
			<figure>
				<img src="flowers/red03.jpg" class="pics">
				<figcaption>
					<h3>絢爛<br>煙火</h3>
					<a href="red3.jsp">Take a look</a>
				</figcaption>
			</figure>
			</li>
			<li>
			<figure>
				<img src="flowers/red04.jpg" class="pics">
				<figcaption>
					<h3>蝶舞<br>翩躚</h3>
					<a href="red4.jsp">Take a look</a>
				</figcaption>
			</figure>
			</li>
			<li>
			<figure>
				<img src="flowers/red05.jpg" class="pics">
				<figcaption>
					<h3>鍾情<br>於你</h3>
					<a href="red5.jsp">Take a look</a>
				</figcaption>
			</figure>
			</li>
			<li>
  			<figure>
				<img src="flowers/red06.jpg" class="pics">
				<figcaption>
					<h3>紅白<br>玫瑰</h3>
					<a href="red6.jsp">Take a look</a>
				</figcaption>
			</figure>
			</li>
			</ul>
		</div>

		<div id="Blue" class="tabcontent">
  			<ul class="grid cs-style-4" style="width:90%">
  			<li>
  			<figure>
				<img src="flowers/blue01.jpg" class="pics">
				<figcaption>
					<h3>滿天<br>星火</h3>
					<a href="blue1.jsp">Take a look</a>
				</figcaption>
			</figure>
			</li>
			<li>
			<figure>
				<img src="flowers/blue02.jpg" class="pics">
				<figcaption>
					<h3>天生<br>浪漫</h3>
					<a href="blue2.jsp">Take a look</a>
				</figcaption>
			</figure>
			</li>
			<li>
			<figure>
				<img src="flowers/blue03.jpg" class="pics">
				<figcaption>
					<h3>萬裡<br>行路</h3>
					<a href="blue3.jsp">Take a look</a>
				</figcaption>
			</figure>
			</li>
			<li>
			<figure>
				<img src="flowers/blue04.jpg" class="pics">
				<figcaption>
					<h3>碧波<br>恬淡</h3>
					<a href="blue4.jsp">Take a look</a>
				</figcaption>
			</figure>
			</li>
			<li>
			<figure>
				<img src="flowers/blue05.jpg" class="pics">
				<figcaption>
					<h3>清新<br>明雅</h3>
					<a href="blue5.jsp">Take a look</a>
				</figcaption>
			</figure>
			</li>
			<li>
  			<figure>
				<img src="flowers/blue06.jpg" class="pics">
				<figcaption>
					<h3>湛藍<br>心事</h3>
					<a href="blue6.jsp">Take a look</a>
				</figcaption>
			</figure>
			</li>
			</ul>
		</div>

		<div id="Purple" class="tabcontent">
  			<ul class="grid cs-style-4" style="width:90%">
  			<li>
  			<figure>
				<img src="flowers/purple01.jpg" class="pics">
				<figcaption>
					<h3>溫暖<br>模樣</h3>
					<a href="purple1.jsp">Take a look</a>
				</figcaption>
			</figure>
			</li>
			<li>
			<figure>
				<img src="flowers/purple02.jpg" class="pics">
				<figcaption>
					<h3>繁花<br>似錦</h3>
					<a href="purple2.jsp">Take a look</a>
				</figcaption>
			</figure>
			</li>
			<li>
			<figure>
				<img src="flowers/purple03.jpg" class="pics">
				<figcaption>
					<h3>暖陽<br>盛開</h3>
					<a href="purple3.jsp">Take a look</a>
				</figcaption>
			</figure>
			</li>
			<li>
			<figure>
				<img src="flowers/purple04.jpg" class="pics">
				<figcaption>
					<h3>清夢<br>星河</h3>
					<a href="purple4.jsp">Take a look</a>
				</figcaption>
			</figure>
			</li>
			<li>
			<figure>
				<img src="flowers/purple05.jpg" class="pics">
				<figcaption>
					<h3>靜謐<br>相思</h3>
					<a href="purple5.jsp">Take a look</a>
				</figcaption>
			</figure>
			</li>
			<li>
  			<figure>
				<img src="flowers/purple06.jpg" class="pics">
				<figcaption>
					<h3>天上<br>人間</h3>
					<a href="purple6.jsp">Take a look</a>
				</figcaption>
			</figure>
			</li>
			</ul>
		</div>
		</div>
	</div>
	<div style="clear: both"></div>

	<footer style="margin-top:130px;">	
		<div style="color:black;font-weight: 600; font-family:Microsoft JhengHei;font-size: 20px;">
		     <%@include file="counter.jsp" %> <!-- 訪客人數-->
			      <span>聯絡我們: <a href="" style="color:black;font-weight: 600; font-family:Microsoft JhengHei;font-size: 20px;">email</a></br>
	  電話  ：+886-3-265-9999
	  地址  ：桃園市中壢區中北路200號
	  </span>
			<h4>Copyright © 2019 Simply Blessed Flower Store. All rights reserved</h4>
		</div>
	</footer>
	</body>
</html>