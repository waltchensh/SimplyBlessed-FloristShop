<%@ page import = "java.sql.*, java.util.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" 
autoFlush="false" buffer="300kb"%>

<%@include file="config.jsp" %>


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
int login =0;


String check=request.getParameter("check"); 

String er ="";

try{
String products=new String(request.getParameter("products").getBytes("ISO-8859-1"),"UTF-8"); 
String name=new String(request.getParameter("name").getBytes("ISO-8859-1"),"utf-8"); 
String email=request.getParameter("email"); 
String address=new String(request.getParameter("address").getBytes("ISO-8859-1"),"UTF-8"); 
String city=new String(request.getParameter("city").getBytes("ISO-8859-1"),"UTF-8"); 
String zip=request.getParameter("zip");
java.sql.Date new_date=new java.sql.Date(System.currentTimeMillis());
	    address = city+address; //購買人




	    String sname; 
	    String semail; 
	    String saddress; 
	    String scity; 
	    String szip;


	    if( check==null || check.equals("")){
	    sname=new String(request.getParameter("sname").getBytes("ISO-8859-1"),"utf-8"); 
	    semail=request.getParameter("semail"); 
	    saddress=new String(request.getParameter("saddress").getBytes("ISO-8859-1"),"UTF-8"); 
	    scity=new String(request.getParameter("scity").getBytes("ISO-8859-1"),"UTF-8"); 
	    szip=request.getParameter("szip");	    
		saddress = scity+saddress; //收取人
		//out.print("地址: "+address);
		//out.print("商品: "+products);


	}
	else{ // 同購買人
	sname=name; 
	semail=email; 
	saddress=address; 
	scity=city; 
	szip=zip;	    
	saddress = address; 
}






	//out.print(check);
	//out.print(sname);




	if(products!=null &&!products.equals("")){
	String product_Array[] =products.split(",");

	sql = "SELECT * FROM order1" ; 
	ResultSet res =con.createStatement().executeQuery(sql);
	res.last();
	int index =res.getRow();
	if(index !=0){
	index = Integer.parseInt(res.getString(1));
}



int oID =  index+1;
int total =0;

for(int i=0; i<product_Array.length;i++){
String [] temp = product_Array[i].split("_");
sql="insert ordercontent (no_order, pname, amount, price) ";
sql+="value('"+oID+"','"+temp[0]+"','"+Integer.parseInt(temp[1])+"','"+Integer.parseInt(temp[2])+"')";
total+=Integer.parseInt(temp[2]);
con.createStatement().execute(sql);
} 

String log_name ="";


if(login==1){
log_name =session.getAttribute("id").toString() ;

}
else{

log_name = "訪客" ;
}
sql="insert order1 (id, name, stotal, putdate, email,address,postalcode,sname,semail,saddress,spostalcode) ";
sql+="value ('" + log_name + "','"+name+"',"+total+",'"+new_date+"','"+email+"','"+address+"','"+zip+"','"+sname+"','"+semail+"','"+saddress+"','"+szip +"')";

		/*
		String sql2="insert into order1 (id, name, stotal, putdate, email,address,postalcode) ";
		sql2+="values ('test', ";
		sql2+="'"+sname+"', ";
		sql2+="0, ";
		sql2+="'"+new_date+"', ";
		sql2+="'"+semail+"', ";
		sql2+="'"+address+"', ";   
		sql2+="'"+zip+"')";      
		*/
		//con.createStatement().execute(sql);

		

	for(int i=0; i<product_Array.length;i++){
		String hot = "";
		String amount = "";
		int hit = 0;
		int  amount1= 0;
		String [] temp = product_Array[i].split("_");

		sql="select* from whiteflowers where img_name ='"+temp[0]+"'";

		ResultSet rs =con.createStatement().executeQuery(sql);
		if(rs.next()) {  


		hot = rs.getString(9);

		amount = rs.getString(10);

		hit = Integer.parseInt(rs.getString(9))+1;

		amount1= Integer.parseInt(rs.getString(10))-Integer.parseInt(temp[1]);


		sql="UPDATE whiteflowers set amount='"+amount1+"' WHERE img_name='"+temp[0]+"'";
		con.createStatement().execute(sql);
		sql="UPDATE whiteflowers set hit='"+hit+"' WHERE img_name='"+temp[0]+"'";
		con.createStatement().execute(sql);

		}
	}
		  
		

			for(int i=0; i<product_Array.length;i++){

		String hot = "";
		String amount = "";
		int hit = 0;
		int  amount1= 0;
		String [] temp = product_Array[i].split("_");




		sql="select* from pinkflowers where img_name ='"+temp[0]+"'";
       
		ResultSet rs =con.createStatement().executeQuery(sql);
  if(rs.next()) {  

		hot = rs.getString(9);

		amount = rs.getString(10);

		hit = Integer.parseInt(rs.getString(9))+1;

		amount1= Integer.parseInt(rs.getString(10))-Integer.parseInt(temp[1]);


		sql="UPDATE pinkflowers set amount='"+amount1+"' WHERE img_name='"+temp[0]+"'";
		con.createStatement().execute(sql);
		sql="UPDATE pinkflowers set hit='"+hit+"' WHERE img_name='"+temp[0]+"'";
		con.createStatement().execute(sql);

		}
	}
				
    for(int i=0; i<product_Array.length;i++){
		String hot = "";
		String amount = "";
		int hit = 0;
		int  amount1= 0;
		String [] temp = product_Array[i].split("_");

		sql="select* from redflowers where img_name ='"+temp[0]+"'";

		ResultSet rs =con.createStatement().executeQuery(sql);
		if(rs.next()) {  


		hot = rs.getString(9);

		amount = rs.getString(10);

		hit = Integer.parseInt(rs.getString(9))+1;

		amount1= Integer.parseInt(rs.getString(10))-Integer.parseInt(temp[1]);


		sql="UPDATE redflowers set amount='"+amount1+"' WHERE img_name='"+temp[0]+"'";
		con.createStatement().execute(sql);
		sql="UPDATE redflowers set hit='"+hit+"' WHERE img_name='"+temp[0]+"'";
		con.createStatement().execute(sql);

		}
	}
   for(int i=0; i<product_Array.length;i++){
		String hot = "";
		String amount = "";
		int hit = 0;
		int  amount1= 0;
		String [] temp = product_Array[i].split("_");

		sql="select* from purpleflowers where img_name ='"+temp[0]+"'";

		ResultSet rs =con.createStatement().executeQuery(sql);
		if(rs.next()) {  


		hot = rs.getString(9);

		amount = rs.getString(10);

		hit = Integer.parseInt(rs.getString(9))+1;

		amount1= Integer.parseInt(rs.getString(10))-Integer.parseInt(temp[1]);


		sql="UPDATE purpleflowers set amount='"+amount1+"' WHERE img_name='"+temp[0]+"'";
		con.createStatement().execute(sql);
		sql="UPDATE purpleflowers set hit='"+hit+"' WHERE img_name='"+temp[0]+"'";
		con.createStatement().execute(sql);

		}
	}
	for(int i=0; i<product_Array.length;i++){
		String hot = "";
		String amount = "";
		int hit = 0;
		int  amount1= 0;
		String [] temp = product_Array[i].split("_");

		sql="select* from blueflowers where img_name ='"+temp[0]+"'";

		ResultSet rs =con.createStatement().executeQuery(sql);
		if(rs.next()) {  


		hot = rs.getString(9);

		amount = rs.getString(10);

		hit = Integer.parseInt(rs.getString(9))+1;

		amount1= Integer.parseInt(rs.getString(10))-Integer.parseInt(temp[1]);


		sql="UPDATE blueflowers set amount='"+amount1+"' WHERE img_name='"+temp[0]+"'";
		con.createStatement().execute(sql);
		sql="UPDATE blueflowers set hit='"+hit+"' WHERE img_name='"+temp[0]+"'";
		con.createStatement().execute(sql);

		}
	}



        



    


	



	}

}

catch(Exception e){
er = e.toString();


}








%>



<!DOCTYPE html>
<html lang="en">
<html style="height: 100%;max-height:100%;width:100vw;">
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
<body background="img/background.jpg" style="height: 100%;max-height:100%;width:100vw;background: fixed;" id="checkout-page">
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
<div id="site">
	<header id="masthead">
		<h1>Simply Blessed <span><%=er%>謝謝您!您的訂單已送出。</span></h1>
	</header>
	<div id="content">
		<h1>訂單資料</h1>
		<table id="checkout-cart" class="shopping-cart">
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

		<div id="user-details">
			<h2>付款&運送資料</h2>
			<div id="user-details-content"></div>
		</div>




		<form id="paypal-form" action="" method="post">
			<input type="hidden" name="cmd" value="_cart" />
			<input type="hidden" name="upload" value="1" />
			<input type="hidden" name="business" value="" />

			<input type="hidden" name="currency_code" value="" />
			<a href="index.jsp" class="btn">返回主頁</a>
		</form>


	</div>



</div>

<footer style="margin-top:250px;">	
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

<script type="text/javascript" src="js/cart.js"></script>

</html>