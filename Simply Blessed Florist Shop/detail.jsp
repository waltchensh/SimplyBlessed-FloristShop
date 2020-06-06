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
      <link rel="stylesheet" type="text/css" href="css/products2.css" >
    <link rel="stylesheet" href="css/index.css" type="text/css" media="screen">
    <link rel="stylesheet" href="css/cart2.css" type="text/css" media="screen">
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
    <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/2.0.3/jquery.min.js"></script>
      <script src="js/cart.js" type="text/javascript" charset="utf-8" async defer></script>
      <link rel="stylesheet" type="text/css" href="css/bootstrap.css" />
      <link rel="stylesheet" type="text/css" href="css/comment.css" />
      <link rel="stylesheet" type="text/css" href="fontawesome/css/all.css" />
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
<body background="img/background.jpg" style="max-height:100vh;max-width:100%;background: fixed;">
  <%@include file="navbar.jsp"%> 
<div id="site">
  <header id="masthead">
    <h1>Simply Blessed </h1>
  </header>
  <%



  String str ="";

  String item ="";
  String intro ="";
  String type ="";
  String dollar ="";
    String fid ="";
    String name="";
    fid =request.getParameter("fid");
  sql="select * from "+fid+"flowers where flower_id ="+request.getParameter("item");

  try{
  ResultSet rs=con.createStatement().executeQuery(sql);
  rs.next();
  str =rs.getString(2);
  intro =rs.getString(6);
    name =rs.getString(3);
  type = request.getParameter("type");
    item = request.getParameter("item");

  dollar = rs.getString(4);



}
catch(Exception e){
out.print(e.toString());
}




%>


<div class="main">
  <div id="content bgc">
    <div id="products">
      <!--白色系-->
      <ul >
        <li id="<%=fid%>">
          <div class="product-image">
            <img src="<%=str%>" alt="" />
          </div>
          <div class="product-description" data-name="<%=name%>" data-price="<%=dollar%>">
            <h3 class="product-name"><%=name%></h3>
            <p class="product-price">NTD$<%=dollar%></p>
            <form class="add-to-cart" action="cart.jsp" method="post">
              <div>
                <label for="qty-1">數量</label>
                <input type="text" name="qty-1" id="qty-1" class="qty" value="1" />
              </div>
              <p><input type="submit" value="加入購物車" class="btn" /></p>
            </form>
          </div>
        </li>
		<li>
		</li>
      </ul>
    </div>
    <div class="describe">
      <h1><%

      out.print(intro);
      %></h1>

    </div>
    <hr>


    <h2>給予評價:</h2>
    <div class="review">
      <div id="content">
        <div id="post">
          <div style="background:#f5f5f5 ;height:50px;margin-bottom:20px;">
            <center><input type="submit" id="shangtian" name="Submit3" style="border:none; background-color:#f5f5f5; color:black;" value="暱稱" onClick="prom()" /></center>
            <center> <input type="text" id="ritian" style="border:none; background-color:#f5f5f5; color:black;"   onclick="prom()"></center>
            <!--disabled="disabled"-->
          </div>
          <div >
            <div>
              <h2>評價:</h2>
              <span id="1" style="font-size:15px; cursor:pointer;"  class="fa fa-star" onmouseover="startRating(this)" startRating="starmark(this)" ></span>
              <span id="2"  style="font-size:15px; cursor:pointer;" class="fa fa-star" onmouseover="startRating(this)" startRating="starmark(this)"></span>
              <span id="3"  style="font-size:15px; cursor:pointer;" class="fa fa-star" onmouseover="startRating(this)" startRating="starmark(this)"></span>
              <span id="4"  style="font-size:15px; cursor:pointer;" class="fa fa-star" onmouseover="startRating(this)" startRating="starmark(this)"></span>
              <span id="5"  style="font-size:15px; cursor:pointer;" class="fa fa-star" onmouseover="startRating(this)" startRating="starmark(this)"></span>
            </div>
          </div> 
          <div>
            <textarea class="transition"></textarea>
          </div>
          <input id="postBt" type="button" style="border:none; background-color:#f5f5f5; color:black;border-radius:5px; width:80px; height:25px;margin-bottom:20px;" value="留言">
          <input id="clearBt" type="button" style="border:none; background-color:#f5f5f5; color:black;border-radius:5px; width:80px; height:25px;margin-bottom:20px;" value="清空">
        </div>
        <div id="comment"></div>
      </div>
    </div>
  </div>
  
  
  <script src="js/comment.js"></script>
</body>
</html>