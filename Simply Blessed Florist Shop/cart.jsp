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
<html style="height: 100vh;width:100vw;">
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" type="text/css" href="css/products.css" >
	<link rel="stylesheet" href="css/index.css" type="text/css" media="screen">
	<link rel="stylesheet" href="css/cart.css" type="text/css" media="screen">
	<link href="css/all.css" rel="stylesheet">
	<script defer src="js/all.js"></script>
	<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
	<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/2.0.3/jquery.min.js"></script>
	<title>Products</title>
	<style type="text/css">
		html {
			background-image: url(img/background.jpg);  
			background-size: cover;
			background-repeat: no-repeat;
			background-attachment: fixed;
		}
		body {
			background-color: rgba(255, 255, 255, 0.5);
			background-color: white;
		}
		hr{
			color: white;
			background-color: rgba(255, 255, 255, 0);
			text-align: center;
			height: 10px;
		}
		.int{
			width: 300px;
			height: 100px;
			text-align: center;
			vertical-align: center;
		}
		.bgc{
			background-color: white;
			background-color: rgba(255, 255, 255, 0.8);
		}
	</style>
</head>
<body background="img/background.jpg" style="height:100%;max-height:100%;max-width:100%;background-attachment: fixed;">
<%@include file="navbar.jsp"%>  
		<br>
		<div id="site" style="height:100%;max-height:100%;">
			<header id="masthead">
				<h1>Simply Blessed<span class="tagline"></span></h1>
			</header>
		<div id="content">
			<h1>購物車</h1>
		<form id="shopping-cart" action="cart.html" method="post">
			<table class="shopping-cart">
			  <thead>
				<tr>
					<th scope="col">物品</th>
					<th scope="col">數量</th>
					<th scope="col" colspan="2">價錢</th>
				</tr>
			  </thead>
			  <tbody>

			  </tbody>
			</table>
			<p id="sub-total">
				<strong>總計</strong>: <span id="stotal"></span>
			</p>
			<ul id="shopping-cart-actions">
				<li>
					<a href="cart.jsp" name="delete" id="empty-cart" class="btn" >清空購物車</a>
				</li>
				<li>
					<a href="products.jsp" class="btn">繼續購物</a>
				</li>
				<li>
					<a href="checkout.jsp" class="btn">結帳</a>
				</li>
			</ul>
		</form>
	</div>
</div>

	<footer>	
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
	<script src="js/cart.js" type="text/javascript" charset="utf-8" ></script>
</html>
