<%@ page import = "java.sql.*, java.util.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>





<%@include file="config.jsp"%>




<!DOCTYPE html>

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
	<script charset=utf-8>
		var content= [] ;
		var values="";
	</script>

</head>
<body background="img/background.jpg" style="height: 100%;max-height:100%;width:100vw;;background: fixed;">
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
                    <ul style=" color: rgba(0, 0, 0, 0.5);">
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
              <li><a href="#contact">關於我們</a>
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
out.println("hi，"+id+"，"+"<a href='logout.jsp'>logout</a>");

		
	%>
			
			<li><a href=""><i class="fab fa-twitter"></i></a></li>
			<li><a href=""><i class="fab fa-facebook"></i></a></li>
			<li><a href=""><i class="fab fa-line"></i></a></li>
			<li><a href="#masthead" >回頂部</a></li>
			
    			</ul>
  			</nav>
		</section>   
	</div> 
<br>
<div id="site">
	<header id="masthead">
		<h1>Simply Blessed </h1>
	</header>
	<div id="content">
		<h1>付款</h1>
		<table id="checkout-cart" class="shopping-cart" style="background-color:white;">
			<thead>
				<tr>
					<th scope="col">商品</th>
					<th scope="col">數量</th>
					<th scope="col">價錢</th>
				</tr>
			</thead>
			<tbody>

			</tbody>
		</table>
		<div id="pricing">

			<p id="shipping">
				<strong>運費</strong>: <span id="sshipping"></span>
			</p>

			<p id="sub-total">
				<strong>總計</strong>: <span id="stotal"></span>
			</p>
		</div>

		<form action="order.jsp"  id="checkout-order-form"  method="POST">
			<input type="hidden" name="products" id="test" value="hello">
			<h2>訂單資料</h2>
			<center>
				<fieldset id="fieldset-billing">
					<legend>付款人資料</legend>
					<div>
						<label for="name">姓名</label>
						<input type="text" name="name" id="name" data-type="string" data-message="This field cannot be empty" />
					</div>
					<div>
						<label for="email">電子郵箱</label>
						<input type="text" name="email" id="email" data-type="expression" data-message="Not a valid email address" />
					</div>
					<div>
						<label for="city">縣市</label>
						<input type="text" name="city" id="city" data-type="string" data-message="This field cannot be empty" />
					</div>
					<div>
						<label for="address">地址</label>
						<input type="text" name="address" id="address" data-type="string" data-message="This field cannot be empty" />
					</div>
					<div>
						<label for="zip">郵遞區號5碼</label>
						<input type="text" name="zip" id="zip" data-type="string" data-message="This field cannot be empty" />
					</div>
				</fieldset>

				<div id="shipping-same">同上 <input type="checkbox" name="check" id="same-as-billing" value="same"/></div>

				<fieldset id="fieldset-shipping">

					<legend>收貨人資料</legend>

					<div>
						<label for="sname">姓名</label>
						<input type="text" name="sname" id="sname" data-type="string" data-message="This field cannot be empty" />
					</div>
					<div>
						<label for="semail">電子郵箱</label>
						<input type="text" name="semail" id="semail" data-type="expression" data-message="Not a valid email address" />
					</div>
					<div>
						<label for="scity">縣市</label>
						<input type="text" name="scity" id="scity" data-type="string" data-message="This field cannot be empty" />
					</div>
					<div>
						<label for="saddress">地址</label>
						<input type="text" name="saddress" id="saddress" data-type="string" data-message="This field cannot be empty" />
					</div>

					<div>
						<label for="szip">郵遞區號5碼</label>
						<input type="text" name="szip" id="szip" data-type="string" data-message="This field cannot be empty" />
					</div>
				</fieldset>

				<p><input type="submit" id="submit-order" value="送出" class="btn" /></p>
			</center>
		</form>
	</div>



</div>

	<footer style="margin-top:300px;">	
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

<script type="text/javascript" src="js/cart.js"></script>
<script charset=utf-8>


	$(document).ready(function () {



		$('#test').val(values);

	});
</script>
</html>
