<%@page contentType="text/html;charset=utf-8" language="java" import="java.sql.*"%>
<%@include file="config.jsp" %>
<html>
<head>
	<meta http-equiv="Content-type" content="text/html; charset=utf-8" />
	<title>會員中心</title>
	<link rel="stylesheet" href="css/style.css" type="text/css" media="all" />
	<link rel="stylesheet" href="css/board.css" type="text/css" media="all" />
	<!--[if lte IE 6]><link rel="stylesheet" href="css/ie6.css" type="text/css" media="all" /><![endif]-->
	
	<meta name="keywwords" content="Shop Around - Great free html template for on-line shop. Use it as a start point for your on line business. The template can be easily implemented in many open source E-commerce platforms" />
	<meta name="description" content="Shop Around - Great free html template for on-line shop. Use it as a start point for your on line business. The template can be easily implemented in many open source E-commerce platforms" />
	
	<!-- JS -->
	<script src="js/jquery-1.4.1.min.js" type="text/javascript"></script>	
	<script src="js/jquery.jcarousel.pack.js" type="text/javascript"></script>	
	<script src="js/jquery-func.js" type="text/javascript"></script>	
	<!-- End JS -->
	
</head>
<body>


<%
if(session.getAttribute("id") != null ){
sql = "SELECT * FROM member WHERE id='" +session.getAttribute("id")+"';";
ResultSet paperrs1 =con.createStatement().executeQuery(sql);
String pwd="";
String opwd= request.getParameter("opwd");
String name = new String(request.getParameter("name").getBytes("ISO-8859-1"),"UTF-8");
while(paperrs1.next()){
pwd=paperrs1.getString("pwd");
}

    if(opwd.equals(pwd)){
    sql = "UPDATE `member` SET address='"+request.getParameter("address")+"', pwd ='"+request.getParameter("npwd")+"',   name= '"+name+"', phone ='"+request.getParameter("phone")+"',email='"+request.getParameter("email")+"' WHERE id='"+session.getAttribute("id")+"'LIMIT 1;";
	con.createStatement().execute(sql);	
	
	out.print("更新成功!! 請<a href='index.jsp'>按此</a>回登入頁面!!");
	}
	else{
	out.print(opwd+"更新失敗!! 舊密碼錯誤，<a href='member_update.jsp'>按此</a>回會員頁面!!"+pwd);
	}

}
else{
out.print("未登入!! 請<a href='login+join.jsp'>按此</a>回登入頁面!!");
}
%>
</body>
</html>