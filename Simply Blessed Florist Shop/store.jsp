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
<html style="height:100%;max-height:100%;width:100vw;">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="css/index.css" type="text/css" media="screen">
    <link rel="stylesheet" href="css/index02.css" type="text/css" media="screen">
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
    <link rel="stylesheet" type="text/css" href="css/component02.css" >
    <script src="js/modernizr.custom.js"></script>
    <script src="js/index2.js" type="text/javascript" charset="utf-8" async defer></script>
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css" integrity="sha384-GJzZqFGwb1QTTN6wy59ffF1BuGJpLSa9DkKMp0DgiMDm4iYMj70gZWKYbI706tWS" crossorigin="anonymous">
    <title>品牌故事</title>
  </head>

  <body background="img/background.jpg" style="height:100%;max-height:100%;">
    <!--初學者範本,請不要誤刪！！！-->
    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
	<link href="css/all.css" rel="stylesheet">
	<script defer src="js/all.js"></script>
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.6/umd/popper.min.js" integrity="sha384-wHAiFfRlMFy6i5SRaxvfOCifBUQy1xHdJ/yoi7FRNXMRBu5WHdZYu1hA6ZOblgut" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/js/bootstrap.min.js" integrity="sha384-B0UglyR+jN6CkvvICOB2joaf5I4l3gm9GU6Hc1og6Ls7i6U/mkkaduKaBhlAXv9k" crossorigin="anonymous"></script>
    <!--初學者範本到這裡結束,請不要誤刪！！！-->

    <%@include file="navbar.jsp"%>  

		
	<center>
			<header id="masthead">
				<h1>Simply Blessed</h1>
		</header>
	</center>
	
    <!--品牌故事-->
    <div class="container bgc" style="padding-top:150px">
	<h1 align="center"><img src="img/brand.png" class="int"></h1>
	<hr>

	  <div class="row">
	    <div class="col-sm">
		<h1 id="masthead">Simply Blessed</h1>
	    <h4>只是祝福</h4>
	    <h4>Fading is true while flowering is past.</h4>
	    <h4>凋零是事實，盛開只是過去</h4>
	    <h4>雖然花朵註定凋落，但我願意在最好的時光為你盛開</h4>
	    <h4>只為祝福。</h4>
	    </div>
	    <div class="col-sm" align="right">
			<img src="img/pinpai.jpg" class="int">

	    </div>
	  </div>
	</div>

    <hr>
    <!--店家資訊-->
    <div class="container bgc">
	<h1 align="center"><img src="img/store.png" class="int"></h1>
	<hr>
	  <div class="row">
	    <div class="col-sm"></p>
	    <p><h4>店名  ：Simply Blessed</h4></p>
	    <p><h4>地址  ：桃園市中壢區中北路200號</h4></h4></p>
	    <p><h4>電話  ：+886-3-265-9999</h4></p>
	    <p><h4>E-mail:<a href="mailto:simplyblessed@gmail.com">simplyblessed@gmail.com<a></h4></p>
	    </div>
	    <div class="col-sm">
			<iframe src="https://www.google.com/maps/embed/v1/place?q=place_id:ChIJIfCgRxQiaDQR_7y4C2XShis&key=AIzaSyCqPFK3D5ruI-UIdoWwRuJPwpcKbPV5Mn4" frameborder="0" style="border:0"></iframe>

	    </div>
	  </div>
	</div>

  <hr>


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
</html>




















