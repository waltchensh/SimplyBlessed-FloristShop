<%@ page import = "java.sql.*, java.util.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<%@include file="config.jsp" %>
<%request.setCharacterEncoding("UTF-8");%>



<!DOCTYPE html>
<html lang="en">
<html style="height: 100vh;width:100vw;">
<head>

</head>

<body background="img/background.jpg">

<form action="join.jsp" method="get" >
		
						<h4>暱稱：</h4>
					
						<input type="text" placeholder="請填寫您的暱稱" name="id" class="">
			             
                        <h4>名字：</h4>
					
						<input type="text" placeholder="請填寫您的暱稱" name="name" class="">

						<h4>電話：</h4>
					
						<input type="text" placeholder="請填寫您的電話作為登入憑證" name="phone" class="">
			
						<h4>E-mail：</h4>
					
						<input type="text" placeholder="請填寫您的郵箱" name="email" class="">
				
			
					
						<h4>收貨地址：</h4>
				
						<input type="text" placeholder="請填寫您的收貨地址" name="address" class="">
			
				
						<h4>密碼：</h4>
					
						<input type="password" placeholder="請填寫您的密碼" name="pwd" class="">
				
						<h4>密碼2：</h4>
					
						<input type="password" placeholder="請填寫您的密碼" name="pwd2" class="">
				
			<h4 align="center"><input class="button" type="submit" value="送出">
				<input class="button" type="reset" value="重設"></h4>
			</form>


</body>
</html>