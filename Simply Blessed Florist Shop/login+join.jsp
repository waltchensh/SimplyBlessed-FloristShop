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
<html style="height: 100%;max-height:100%;width:100vw;">
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" href="css/index.css" type="text/css" media="screen">
	<link rel="stylesheet" href="css/index02.css" type="text/css" media="screen">
	<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
	<link href="css/all.css" rel="stylesheet">
	<script defer src="js/all.js"></script>
	<link rel="stylesheet" type="text/css" href="css/component02.css" >
	<script src="js/modernizr.custom.js"></script>
	<script src="js/index2.js" type="text/javascript" charset="utf-8" async defer></script>
	<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/2.0.3/jquery.min.js"></script>
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<!-- Bootstrap CSS -->
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css" integrity="sha384-GJzZqFGwb1QTTN6wy59ffF1BuGJpLSa9DkKMp0DgiMDm4iYMj70gZWKYbI706tWS" crossorigin="anonymous">
	<title>登入註冊</title>
</head>

<body background="img/background.jpg" style="height: 100%;max-height:100%;">
	<!--初學者範本,請不要誤刪！！！-->
	<!-- Optional JavaScript -->
	<!-- jQuery first, then Popper.js, then Bootstrap JS -->
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

	<div class="bian" style="height:90%;max-height:100%;padding-top:150px;">
		<div style="background-color: black;color:white;">
			<div style="width:50%;margin:0 auto;text-align:center">


				<button class="w3-bar-item w3-button" onclick="openCity('login')">登入</button>
				<button class="w3-bar-item w3-button" onclick="openCity('join')">註冊</button>
			</div>
		</div>

<div id="login" class="w3-container w3-display-container city" style="padding:0;">

	<!--登入表格-->
	<form method="POST" action="check.jsp" >
	<div class="login bgc">   

		<h1 align="center"><img src="img/login.png" class="int"></h1>
		<hr>

		<div class="container">
			
				<div class="row">
					<div class="col-4">
						<h4>ID：</h4>
					</div>		  	
					<div class="col-8">
						<input type="text" maxlength="10" placeholder="請填寫您ID" name="id" class="">
					</div>
				</div>
				<div class="row">
					<div class="col-4">
						<h4>密碼:</h4>
					</div>		  	
					<div class="col-8">
						<input type="password" placeholder="請填寫密碼" name="pwd" class="">
					</div>
				</div>	
				<h4 align="center"><input class="button" type="submit" value="送出"></h4>

		</div>
</form>	
	</div>
    


	

</div>

<div id="join" class="w3-container w3-display-container city" style="display:none;padding:0;">

	<!--註冊表格-->
	<div class="join bgc">    
		<h1 align="center"><img src="img/join.png" class="int"></h1>
		<hr>
		<form method="post" action="join.jsp" >
			<div class="container">
				<div class="row">
					<div class="col-4">
						<h4>ID：</h4>
					</div>		  	
					<div class="col-8">
						<input type="text" placeholder="請填寫您的暱稱" name="id" class="">
					</div>
				</div>
				<div class="row">
					<div class="col-4">
						<h4>暱稱：</h4>
					</div>		  	
					<div class="col-8">
						<input type="text" placeholder="請填寫您的暱稱" name="name" class="">
					</div>
				</div>
				<div class="row">
					<div class="col-4">
						<h4>電話：</h4>
					</div>		  	
					<div class="col-8">
						<input type="text" placeholder="請填寫您的電話作為登入憑證" name="phone" class="">
					</div>
				</div>
				<div class="row">
					<div class="col-4">
						<h4>E-mail：</h4>
					</div>		  	
					<div class="col-8">
						<input type="text" name="semail"  placeholder="請填寫您的郵箱" id="semail" data-type="expression" data-message="Not a valid email address" />
					</div>
				</div>
				<div class="row">
					<div class="col-4">
						<h4>收貨地址：</h4>
					</div>		  	
					<div class="col-8">
						<input type="text" placeholder="請填寫您的收貨地址" name="address" class="">
					</div>
				</div>
				<div class="row">
					<div class="col-4">
						<h4>密碼：</h4>
					</div>		  	
					<div class="col-8">
						<input type="password" placeholder="請填寫您的密碼" name="pwd" class="">
					</div>
				</div>		
				<div class="row">
					<div class="col-4">
						<h4>確認密碼：</h4>
					</div>		  	
					<div class="col-8">
						<input type="password" placeholder="請確認您的密碼" name="pwd2" class="">
					</div>
				</div>	  
			</div>
			<h4 align="center"><input class="button" type="submit" value="送出">
				<input class="button" type="reset" value="重設"></h4>
			</form>
		</div>
	</div>
</div>


<script>
	function openCity(cityName) {
		var i;
		var x = document.getElementsByClassName("city");
		for (i = 0; i < x.length; i++) {
			x[i].style.display = "none";  
		}
		document.getElementById(cityName).style.display = "block";  
	}
</script>


<footer >  
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

</html>
