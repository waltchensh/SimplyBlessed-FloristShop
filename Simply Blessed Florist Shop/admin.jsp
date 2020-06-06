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
                        <h1 align="center" style="border:2px solid black;font-family:Microsoft JhengHei; font-weight:bolder;background-color:white;">會員資料管理</h1><br>
                    
									
					 
					<%
					if(!id.equals("")){
            sql="use test";
            con.createStatement().execute(sql);
			sql = "SELECT * FROM member";
            ResultSet rs =con.createStatement().executeQuery(sql);
			
            //讀出id, pwd當成使用者要更改時的內定值
			
            while(rs.next()){%>
            
                     
                <table style="width:100%;font-family:Microsoft JhengHei; font-weight:bolder;background-color:white;" border="1">
				
					<tr align='center'>
						<th>ID</th>
						<th>名字</th>
						<th>密碼</th>
						<th>email</th>
						<th>phone</th>
						<th>地址</th>
						<th>操作</th>
				<tr align='center'>
					<th><%=rs.getString(1)%></th> <!--id-->
					<th><%=rs.getString(4)%></th> <!--名-->
                    <th><%=rs.getString(3)%></th> <!--pw-->
					<th><%=rs.getString(5)%></th> <!--email-->
					<th><%=rs.getString(6)%></th> <!--phone-->
					<th><%=rs.getString(7)%></th> <!--address-->
					<th><a href='memberedit.jsp?bid=<%=rs.getString(1)%>'>修改</a> - <a href='memberdel.jsp?bid="<%=rs.getString(1)%>"'>刪除</a></th>
				</tr>
				</table>
				<br><br><br><br><br>
			<%}
			rs.close();
			}
			else {
			out.print("");
		}
			%>
               <%
}
else{
%>

<center>
		<p style="border:2px solid black;font-family:Microsoft JhengHei;font-size:50px; font-weight:bolder;">Simply Blessed 員工管理介面</p>
				<h1 style="border:2px solid black;"><font color="red">您尚未登入，請登入！</font></h1>
<form action="admin_check.jsp" method="POST" style="font-family:Microsoft JhengHei;border:2px solid black;">
<p style="margin:10px auto 10px auto;font-family:Microsoft JhengHei;font-size:20px; font-weight:bolder;">帳號：<input type="text" name="admin_id" style="margin:10px auto 10px auto;font-family:Microsoft JhengHei;font-size:20px; font-weight:bolder;"/></p><br />
<p style="margin:10px auto 10px auto;font-family:Microsoft JhengHei;font-size:20px; font-weight:bolder;">密碼：<input type="password" name="admin_pwd" style="margin:10px auto 10px auto;font-family:Microsoft JhengHei;font-size:20px; font-weight:bolder;"/></p><br />
<input type="submit" name="b1" value="登入" style="margin:10px auto 10px auto;font-family:Microsoft JhengHei;font-size:20px; font-weight:bolder;"/>
</form>
</center>
<%
}
%>
			 
</body>
</html>
