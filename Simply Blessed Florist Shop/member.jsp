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

<%

String member_name="", member_id="", member_email="", member_phone="",member_address="";



if(session.getAttribute("id")!=null)
{
	sql="use test";
	ResultSet rs;
	con.createStatement().execute(sql);
	sql="SELECT * FROM member WHERE id='"+session.getAttribute("id")+"'";
	rs =con.createStatement().executeQuery(sql);
	
	if(rs.next())
	{ 
		member_name=rs.getString(4);
		member_id=rs.getString(2);
		member_phone=rs.getString(6);
		member_email=rs.getString(5);
		member_address=rs.getString(7);
		 
		
		
	}
}
else
{
%>

  <script LANGUAGE="JavaScript">
                  alert("還沒登入!")
                  location.href="javascript:history.go(-1)"
                  </script> 
  
  <%
}

%>






<!DOCTYPE html>
<html style="height:100%;max-height:100%;">
<head lang="en">
	<title>會員中心</title>

	<!--初學者範本,請不要誤刪！！！-->
	<!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<link rel="stylesheet" href="css/index.css" type="text/css" media="screen">
	<link rel="stylesheet" href="css/index2.css" type="text/css" media="screen">
	<link href="css/all.css" rel="stylesheet">
	<script defer src="js/all.js"></script>
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css" integrity="sha384-GJzZqFGwb1QTTN6wy59ffF1BuGJpLSa9DkKMp0DgiMDm4iYMj70gZWKYbI706tWS" crossorigin="anonymous">
    <style type="text/css">
	    html {
		    background-image: url(img/background.jpg);  
		    background-size: cover;
		    background-repeat: no-repeat;
		    background-attachment: fixed;
	    }
	    body {
	        background-color: rgba(255, 255, 255, 0.8);
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
	</style>
</head>

<body style="height:100%;max-height:100%;max-width:100%;background-attachment: fixed;">
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
		
	
	<!--會員中心-->
	<div style=" padding-top:150px;height:100%;max-height:100%;">
	
		<h1 align="center"><img src="img/center.png" class="int"></h1>  
		<hr>
		<!--會員資料區-->
		<center>
		<div>
			<h2>會員資料</h2>
			<p>ID   ：<%=member_id%></p>
            <p>名字   ：<%=member_name%></p>
			<p>電話   ：<%=member_phone%></p>
			<p>E-mail ：<%=member_email%></p>
			<p>收貨地址：<%=member_address%></p>
			<a href="member_update.jsp">修改</a>
		<hr>
	    </div>

		<!--訂單記錄-->
		<div>
			<h2>歷史訂單</h2>
 <%

String order_img="", order_name="", oder_id="", order_price="",order_amount="",order_date="";

if(session.getAttribute("id")!=null)
{
	sql="use test";
	ResultSet rs1;
	con.createStatement().execute(sql);
	sql="SELECT * FROM order1 WHERE id='"+session.getAttribute("id")+"'";
	rs1 =con.createStatement().executeQuery(sql);
	int i =1;
	while(rs1.next())
	{ 

		 		
    out.print("第"+i+"訂單");
    out.print("total$"+rs1.getString(4));
    out.print("date"+rs1.getString(5));
    out.print("收貨地址："+rs1.getString(11));
    
      out.print("<a href='consumeDetail.jsp?item="+rs1.getString(1)+"'>細節</a>");
  



    i++;
}
	%>

<%
}


%>
         




			<img src="<%=order_img%>" width="30"></img>
			<%=order_name%>
		<%=oder_id%>
		<%=order_price%>
		<%=order_amount%>
		<%=order_date%>
		 
		<hr>
		</div>	
	</center>
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
</html>