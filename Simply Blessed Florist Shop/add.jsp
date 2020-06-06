<%@ page import = "java.sql.*, java.util.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
	
<%@include file="config.jsp"%>
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


<table>

       <form name="form1" method="post" action="add_1.jsp" style="width:100%;font-family:Microsoft JhengHei; font-weight:bolder;">
<tr>


                <td>類別：<select name="type" style="width:20%" style="margin:5px auto 5px auto;font-family:Microsoft JhengHei;font-size:20px; font-weight:bolder;">
                                <option value="whiteflowers">白</option>
                                <option value="pinkflowers">粉</option>
								<option value="redflowers">紅</option>
								<option value="blueflowers">藍</option>
								<option value="purpleflowers">紫</option>
								 </select><br></td></tr>
								

				<tr>			   
			   <td>名稱：<input type="text" name="product" required style="margin:5px auto 5px auto;font-family:Microsoft JhengHei;font-size:20px; font-weight:bolder;"><br></td>
			   </tr>
			   <tr>
               <td>價格：<input type="text" name="price" value="NTD$" style="margin:5px auto 5px auto;font-family:Microsoft JhengHei;font-size:20px; font-weight:bolder;"> <br></td>
			   </tr>
			   <tr>
			   <td>圖片：<input type="text" name="pic" value="flowers/檔名" style="margin:5px auto 5px auto;font-family:Microsoft JhengHei;font-size:20px; font-weight:bolder;"><br></td>
			   </tr>	   	   
			   
			   <tr>
			   <td><center><input type="submit" name="Submit" value="送出" class="" style="margin:5px auto 5px auto;font-family:Microsoft JhengHei;font-size:15px; font-weight:bolder;">
               <input type="Reset" name="Reset" value="重新填寫" class="" style="margin:5px auto 5px auto;font-family:Microsoft JhengHei;font-size:15px; font-weight:bolder;"></center></td>
			   </center>
			   </tr>
			   </table>
               </form>




</table>


			<table style="width:100%;font-family:Microsoft JhengHei;font-size:20px; font-weight:bolder;">
            <h2 align="center" style="width:100%;">白花</h2><br>
					<tr align='center'>
						<th>編號</th>
						<th>名字</th>
						<th>圖片</th>
						<th>價錢</th>
						<th>評分</th>
						<th>內容</th>
						<th>evalution</th>					
					</tr>

                 <%

sql="SELECT * FROM whiteflowers;";
ResultSet rs =con.createStatement().executeQuery(sql);
while(rs.next()){
out.print("<tr align='center'><td>"+rs.getString(1)+"</td><td>"+rs.getString(3)+"</td><td>"+rs.getString(2)+"</td><td>"+rs.getString(4)+"</td><td>"+rs.getString(5)+"</td><td>"+rs.getString(6)+"</td><td>"+rs.getString(7)+"</td><td><a href='product_edit.jsp?bid="+rs.getString(1)+"'>修改</a> - <a href='product_del.jsp?bid="+rs.getString(1)+"'>刪除</a></td></tr> ");
}

%>


				<table style="width:100%;font-family:Microsoft JhengHei;font-size:20px; font-weight:bolder;">
				<h2 align="center">粉花</h2><br>
					<tr align='center'>
						<th>編號</th>
						<th>名字</th>
						<th>價錢</th>
						<th>評分</th>
						<th>內容</th>
						<th>evalution</th>					
					</tr>


                 

<%
sql="SELECT * FROM pinkflowers;";
ResultSet rs1 =con.createStatement().executeQuery(sql);
while(rs1.next()){
out.print("<tr align='center'><td>"+rs1.getString(1)+"</td><td>"+rs1.getString(3)+"</td><td>"+rs1.getString(2)+"</td><td>"+rs1.getString(4)+"</td><td>"+rs1.getString(5)+"</td><td>"+rs1.getString(6)+"</td><td>"+rs1.getString(7)+"</td><td><a href='product_edit2.jsp?bid="+rs1.getString(1)+"'>修改</a> - <a href='product_del2.jsp?bid="+rs1.getString(1)+"'>刪除</a></td></tr> ");
}

%>

<table style="width:100%; font-family:Microsoft JhengHei;font-size:20px; font-weight:bolder;">
				<h2 align="center">紅花</h2><br>
					<tr align='center'>
						<th>編號</th>
						<th>名字</th>
						<th>價錢</th>
						<th>評分</th>
						<th>內容</th>
						<th>evalution</th>					
					</tr>


                 

<%
sql="SELECT * FROM redflowers;";
ResultSet rs2 =con.createStatement().executeQuery(sql);
while(rs2.next()){
out.print("<tr align='center'><td>"+rs2.getString(1)+"</td><td>"+rs2.getString(3)+"</td><td>"+rs2.getString(2)+"</td><td>"+rs2.getString(4)+"</td><td>"+rs2.getString(5)+"</td><td>"+rs2.getString(6)+"</td><td>"+rs2.getString(7)+"</td><td><a href='product_edit3.jsp?bid="+rs2.getString(1)+"'>修改</a> - <a href='product_del3.jsp?bid="+rs2.getString(1)+"'>刪除</a></td></tr> ");
}

%>


<table style="width:100%; font-family:Microsoft JhengHei;font-size:20px; font-weight:bolder;">
				<h2 align="center">藍花</h2><br>
					<tr align='center'>
						<th>編號</th>
						<th>名字</th>
						<th>價錢</th>
						<th>評分</th>
						<th>內容</th>
						<th>evalution</th>					
					</tr>


                 

<%
sql="SELECT * FROM blueflowers;";
ResultSet rs3 =con.createStatement().executeQuery(sql);
while(rs3.next()){
out.print("<tr align='center'><td>"+rs3.getString(1)+"</td><td>"+rs3.getString(3)+"</td><td>"+rs3.getString(2)+"</td><td>"+rs3.getString(4)+"</td><td>"+rs3.getString(5)+"</td><td>"+rs3.getString(6)+"</td><td>"+rs3.getString(7)+"</td><td><a href='product_edit4.jsp?bid="+rs3.getString(1)+"'>修改</a> - <a href='product_del4.jsp?bid="+rs3.getString(1)+"'>刪除</a></td></tr> ");
}

%>







<table style="width:100%; font-family:Microsoft JhengHei;font-size:20px; font-weight:bolder;">
				<h2 align="center">紫花</h2><br>
					<tr align='center'>
						<th>編號</th>
						<th>名字</th>
						<th>價錢</th>
						<th>評分</th>
						<th>內容</th>
						<th>evalution</th>					
					</tr>


                 

<%
sql="SELECT * FROM purpleflowers;";
ResultSet rs4 =con.createStatement().executeQuery(sql);
while(rs4.next()){
out.print("<tr align='center'><td>"+rs4.getString(1)+"</td><td>"+rs4.getString(3)+"</td><td>"+rs4.getString(2)+"</td><td>"+rs4.getString(4)+"</td><td>"+rs4.getString(5)+"</td><td>"+rs4.getString(6)+"</td><td>"+rs4.getString(7)+"</td><td><a href='product_edit5.jsp?bid="+rs4.getString(1)+"'>修改</a> - <a href='product_del5.jsp?bid="+rs4.getString(1)+"'>刪除</a></td></tr> ");
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
