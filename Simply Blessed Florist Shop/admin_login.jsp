<%@ page import = "java.sql.*, java.util.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<%@include file="config.jsp" %>
<%request.setCharacterEncoding("UTF-8");%>


<!DOCTYPE html>
<html lang="en">
<html style="height: 100vh;width:100vw;">
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" href="index.css" type="text/css" media="screen">
	<link rel="stylesheet" href="index02.css" type="text/css" media="screen">
	<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
	<link rel="stylesheet" type="text/css" href="css/component02.css" >
	<script src="js/modernizr.custom.js"></script>
	<script src="index2.js" type="text/javascript" charset="utf-8" async defer></script>
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<!-- Bootstrap CSS -->
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css" integrity="sha384-GJzZqFGwb1QTTN6wy59ffF1BuGJpLSa9DkKMp0DgiMDm4iYMj70gZWKYbI706tWS" crossorigin="anonymous">
	<title>登入註冊</title>
</head>

<body background="img/background.jpg">
   <form action="admin_check.jsp" method="post" accept-charset="utf-8">
				
					
						<h4>admin id：</h4>
							  	
					
						<input type="text" maxlength="10" placeholder="請填寫您id" name="admin_id" class="">
					
				
				
					
						<h4>密碼:</h4>
						  	
					
						<input type="password" placeholder="請填寫密碼" name="admin_pwd" class="">
					
					
				<h4 align="center"><input class="button" type="submit" value="送出"></h4>
			</form>	  
		
	

</body>
</html>
