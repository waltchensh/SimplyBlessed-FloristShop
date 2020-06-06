<%@ page import = "java.sql.*, java.util.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" 
autoFlush="false" buffer="300kb"%>

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
<body background="img/background.jpg" style="max-height:100vh;max-width:100%;background-attachment: fixed;">
<%@include file="navbar.jsp"%>
		<br>
		<div id="site">
			<header id="masthead">
				<h1>Simply Blessed </h1>
			</header>
			<div id="content bgc">
				<div id="products">
					<!--白色系-->
					<center><h1><img src="img/white.png" class="int"></h1></center>
					<ul >
					<div class="series">
					<%
					int index = 1;
					try
					{
					sql="use test";  
					sql="select * from whiteflowers";
					ResultSet rs=con.createStatement().executeQuery(sql);
					String w = "hot";
					while(rs.next())
					{
                 session.setAttribute(rs.getString(3).toString(),rs.getString(10).toString()); 
                 session.setAttribute((rs.getString(3).toString()+w),rs.getString(9).toString()); 

					%>		
					                
					<li id="white">
						<div class="product-image">
							
							<img src="<%=rs.getString(2)%>"></img>
						</div>
						<div class="product-description" data-name="<%=rs.getString(3)%>" data-price="<%=rs.getString(4)%>">
							<h3 class="product-name"><%=rs.getString(3)%></h3>
							<p class="product-price">NTD$<%=rs.getString(4)%></p>
							
							<form class="add-to-cart" action="cart.jsp" method="post">

								<div>
									<label for="qty-1">數量</label>
									<select  name="qty-1" id="qty-1" class="qty">
										<%

										int count=5;
                                        int i=1;
                                        if(Integer.parseInt(rs.getString(10))<5)
                                        {
                                            count=Integer.parseInt(rs.getString(10));

                                        }
										while(i<=count)
										{
										   out.print("<option value='"+i+"'>"+i+"</option>");
										   i++;
										}

										
										%>
									</select>
									
									<label for="amount">庫存量:<%=rs.getString(10)%></label>
								</div>
								<%
								out.print("<p><a href='detail.jsp?item="+index+"&type=白色&fid=white'>查看商品詳情==></a></p>") ;
								index++;
               
                                
                                          
                                       


								%>

                             
                               


								<p><input type="submit" value="加入購物車" class="btn" /></p>
							</form>
						</div>
					</li>

										
					<%
				}
				
			}  
			
			
			catch (SQLException sExec) 
			{
			out.println("SQL錯誤");
		}
		%>
		
		<!--粉色系-->

		<center><h1><img src="img/pink.png" class="int"></h1></center>


		<%
		index=1; 
		try
		{
		sql="use test";
		sql="select * from pinkflowers";
		ResultSet rs=con.createStatement().executeQuery(sql);
		
		String w = "hot";
					while(rs.next())
					{

                 session.setAttribute(rs.getString(3).toString(),rs.getString(10).toString()); 
                 session.setAttribute((rs.getString(3).toString()+w),rs.getString(9).toString()); 

		%>		
		
		<li id="pink">
			<div class="product-image">
				
				<img src="<%=rs.getString(2)%>"></img>
			</div>
			<div class="product-description" data-name="<%=rs.getString(3)%>" data-price="<%=rs.getString(4)%>">
				<h3 class="product-name"><%=rs.getString(3)%></h3>
				<p class="product-price">NTD$<%=rs.getString(4)%></p>
				
				<form class="add-to-cart" action="cart.jsp" method="post">
					<div>
						<label for="qty-1">數量</label>
						<select  name="qty-1" id="qty-1" class="qty">
										<%

										int count=5;
                                        int i=1;
                                        if(Integer.parseInt(rs.getString(10))<5)
                                        {
                                            count=Integer.parseInt(rs.getString(10));

                                        }
										while(i<=count)
										{
										   out.print("<option value='"+i+"'>"+i+"</option>");
										   i++;
										}

										
										%>
									</select>
									
									<label for="amount">庫存量:<%=rs.getString(10)%></label>
					</div>
					<%
					out.print("<p><a href='detail.jsp?item="+index+"&type=粉色&fid=pink'>查看商品詳情==></a></p>") ;
					index++;

					%>
					<p><input type="submit" value="加入購物車" class="btn" /></p>
				</form>
			</div>
		</li>


		<%
	}
	
}  


catch (SQLException sExec) 
{
	out.println("SQL錯誤");
}
%>

<!--紅色系-->

<center><h1><img src="img/red.png" class="int"></h1></center>


<%
index =1;
try
{
	sql="use test";
	sql="select * from redflowers";
	ResultSet rs=con.createStatement().executeQuery(sql);
	
	String w = "hot";
					while(rs.next())
					{

                 session.setAttribute(rs.getString(3).toString(),rs.getString(10).toString()); 
                 session.setAttribute((rs.getString(3).toString()+w),rs.getString(9).toString()); 


	%>		
	
	<li id="red">
		<div class="product-image">
			
			<img src="<%=rs.getString(2)%>"></img>
		</div>
		<div class="product-description" data-name="<%=rs.getString(3)%>" data-price="<%=rs.getString(4)%>">
			<h3 class="product-name"><%=rs.getString(3)%></h3>
			<p class="product-price">NTD$<%=rs.getString(4)%></p>
			
			<form class="add-to-cart" action="cart.jsp" method="post">
				<div>
					<label for="qty-1">數量</label>
					<select  name="qty-1" id="qty-1" class="qty">
										<%

										int count=5;
                                        int i=1;
                                        if(Integer.parseInt(rs.getString(10))<5)
                                        {
                                            count=Integer.parseInt(rs.getString(10));

                                        }
										while(i<=count)
										{
										   out.print("<option value='"+i+"'>"+i+"</option>");
										   i++;
										}

										
										%>
									</select>
									<label for="amount">庫存量:<%=rs.getString(10)%></label>
				</div>
				<%
				out.print("<p><a href='detail.jsp?item="+index+"&type=紅色&fid=red'>查看商品詳情==></a></p>") ;
				index++;

				%>
				<p><input type="submit" value="加入購物車" class="btn" /></p>
			</form>
		</div>
	</li>


	<%
}

}  


catch (SQLException sExec) 
{
	out.println("SQL錯誤");
}
%>

<!--藍色系-->

<center><h1><img src="img/blue.png" class="int"></h1></center>


<%
index =1;
try
{
	sql="use test";
	sql="select * from blueflowers";
	ResultSet rs=con.createStatement().executeQuery(sql);
	
	String w = "hot";
					while(rs.next())
					{

                 session.setAttribute(rs.getString(3).toString(),rs.getString(10).toString()); 
                 session.setAttribute((rs.getString(3).toString()+w),rs.getString(9).toString()); 


	%>		

	<li id="blue">
		<div class="product-image">
			
			<img src="<%=rs.getString(2)%>"></img>
		</div>
		<div class="product-description" data-name="<%=rs.getString(3)%>" data-price="<%=rs.getString(4)%>">
			<h3 class="product-name"><%=rs.getString(3)%></h3>
			<p class="product-price">NTD$<%=rs.getString(4)%></p>
			
			<form class="add-to-cart" action="cart.jsp" method="post">
				<div>
					<label for="qty-1">數量</label>
					<select  name="qty-1" id="qty-1" class="qty">
										<%

										int count=5;
                                        int i=1;
                                        if(Integer.parseInt(rs.getString(10))<5)
                                        {
                                            count=Integer.parseInt(rs.getString(10));

                                        }
										while(i<=count)
										{
										   out.print("<option value='"+i+"'>"+i+"</option>");
										   i++;
										}

										
										%>
									</select>
									<label for="amount">庫存量:<%=rs.getString(10)%></label>
				</div>
				<%
				out.print("<p><a href='detail.jsp?item="+index+"&type=藍色&fid=blue'>查看商品詳情==></a></p>") ;
				index++;

				%>
				<p><input type="submit" value="加入購物車" class="btn" /></p>
			</form>
		</div>
	</li>


	<%
}

}  


catch (SQLException sExec) 
{
	out.println("SQL錯誤");
}
%>
<!--藍色系-->

<center><h1><img src="img/purple.png" class="int"></h1></center>


<%
index =1;
try
{
	sql="use test";
	sql="select * from purpleflowers";
	ResultSet rs=con.createStatement().executeQuery(sql);
	
	String w = "hot";
					while(rs.next())
					{
	
                 session.setAttribute(rs.getString(3).toString(),rs.getString(10).toString()); 
                 session.setAttribute((rs.getString(3).toString()+w),rs.getString(9).toString()); 

  
	%>		

	<li id="purple">
		<div class="product-image">
			
			<img src="<%=rs.getString(2)%>"></img>
		</div>
		<div class="product-description" data-name="<%=rs.getString(3)%>" data-price="<%=rs.getString(4)%>">
			<h3 class="product-name"><%=rs.getString(3)%></h3>
			<p class="product-price">NTD$<%=rs.getString(4)%></p>
			
			<form class="add-to-cart" action="cart.jsp" method="post">
				<div>
					<label for="qty-1">數量</label>
					<select  name="qty-1" id="qty-1" class="qty">
										<%

										int count=5;
                                        int i=1;
                                        if(Integer.parseInt(rs.getString(10))<5)
                                        {
                                            count=Integer.parseInt(rs.getString(10));

                                        }
										while(i<=count)
										{
										   out.print("<option value='"+i+"'>"+i+"</option>");
										   i++;
										}

										
										%>
									</select>
									<label for="amount">庫存量:<%=rs.getString(10)%></label>
				</div>
				<%
				out.print("<p><a href='detail.jsp?item="+index+"&type=紫色&fid=purple'>查看商品詳情==></a></p>") ;
				index++;

				%>
				<p><input type="submit" value="加入購物車" class="btn" /></p>
			</form>
		</div>
	</li>		
	<%
}

}  


catch (SQLException sExec) 
{
	out.println("SQL錯誤");
}
%>

</div>
</ul>
</div>
</div>
</div>
	<footer>	
		<div  style="color:black;font-weight: 600; font-family:Microsoft JhengHei;font-size: 20px;">
		     <%@include file="counter.jsp" %> <!-- 訪客人數-->
			      <span>聯絡我們: <a href="" style="color:black;font-weight: 600; font-family:Microsoft JhengHei;font-size: 20px;">email</a></br>
	  電話  ：+886-3-265-9999
	  地址  ：桃園市中壢區中北路200號
	  </span>
			<h4>Copyright © 2019 Simply Blessed Flower Store. All rights reserved</h4>
		</div>
	</footer>
</body>
<script src="js/cart.js" type="text/javascript" charset="utf-8" async defer></script>
</html>