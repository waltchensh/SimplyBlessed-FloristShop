<%@ page import = "java.sql.*, java.util.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>

<%@include file="config.jsp" %>
<%request.setCharacterEncoding("UTF-8");%>


<%
String id="", pwd="";
if(session.getAttribute("admin_id") != null ){
sql = "SELECT * FROM admin WHERE admin_id='" +session.getAttribute("admin_id")+"';"; 
ResultSet paperrs1 =con.createStatement().executeQuery(sql);
while(paperrs1.next()){
	    //name=paperrs1.getString(1);
	    id=paperrs1.getString("admin_id");
	    pwd=paperrs1.getString("admin_pwd");
	}
%>
   哈囉，<%=id%>，<a href='logout.jsp'>logout</a>
   



<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title></title>
	<link rel="stylesheet" href="css/index.css" type="text/css" media="screen">
	<link rel="stylesheet" href="">
</head>
<body background="img/admin.jpg" style="background-size:100%;;background-attachment: fixed;">
<center>
        <ul style="list-style:none;border:2px solid black;font-family:Microsoft JhengHei;font-size:20px; font-weight:bolder;background-color:white;">
						<li ><a href="admin.jsp">會員資料管理</a></li>
						<li ><a href="add.jsp">商品管理</a></li>
						<li ><a href="consume.jsp">消費紀錄</a>
										
					</ul>
</center>
               
               	   
					<%
					if(!id.equals("")){
            sql="use test";
            con.createStatement().execute(sql);
			sql = "SELECT * FROM order1";
            ResultSet rs2 =con.createStatement().executeQuery(sql);
			
            //讀出id, pwd當成使用者要更改時的內定值
			
            while(rs2.next()){
            %>
            <table style="border:2px solid black;background-color:white;font-family:Microsoft JhengHei;font-size:20px; font-weight:bolder;margin:10px auto 10px auto;">
				<tr>
					<th><%=rs2.getString(1)%></th>
					<th><%=rs2.getString(2)%></th>
					<th><%=rs2.getString(3)%></th>
					<th><%=rs2.getString(4)%></th>
					<th><%=rs2.getString(5)%></th>
					<th><%=rs2.getString(6)%></th>
					<th><%=rs2.getString(7)%></th>
					<th><%=rs2.getString(8)%></th>
					<th><%=rs2.getString(9)%></th>
					<th><%=rs2.getString(10)%></th>
					<th><%=rs2.getString(11)%></th>
					<th><%=rs2.getString(12)%></th>
					<th><a href="consumeDetail.jsp?item=<%=rs2.getString(1)%>">細節</a></th>

				</tr>
				</table>
			<%
		}
			rs2.close();
      
			}
			else {
			out.print("");
		}
			%>
               <%
}
else{
%>

				<h1><font color="red">您尚未登入，請登入！</font></h1>
<form action="admin_check.jsp" method="POST">
帳號：<input type="text" name="admin_id" /><br />
密碼：<input type="password" name="admin_pwd" /><br />
<input type="submit" name="b1" value="登入" />
</form>
<%
}
%>
			 
</body>
</html>
