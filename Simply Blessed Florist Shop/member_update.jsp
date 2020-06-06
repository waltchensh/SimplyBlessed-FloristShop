<%@page contentType="text/html;charset=utf-8" language="java" import="java.sql.*"%>
<%@include file="config.jsp" %>
<html>
<head>
	<meta http-equiv="Content-type" content="text/html; charset=utf-8" />
	<title>會員中心</title>
</head>
<body>



<%
if(session.getAttribute("id") != null ){
    sql = "SELECT * FROM member WHERE id='" +session.getAttribute("id")+"';"; 
	ResultSet paperrs1 =con.createStatement().executeQuery(sql);
	String id="", pwd="",email="",phone="",address="",no="",name="";
	while(paperrs1.next()){
	    //name=paperrs1.getString(1);
	    id=paperrs1.getString("id");
		pwd=paperrs1.getString("pwd");
		name=paperrs1.getString("name");
        email=paperrs1.getString("email");
		address=paperrs1.getString("address");
		no=paperrs1.getString("member_no");
		phone=paperrs1.getString("phone");




	}
   out.println("hi，"+id+"，"+"<a href='logout.jsp'>logout</a><br>");
%>

請修改會員資料：<br />
<form action="update.jsp" method="POST">
您的編號:<%=no%><br><br>
您的ID:<%=id%><br><br>
您的姓名：<input type="text" name="name" value="<%=name%>" ><br><br>
會員密碼：<input type="password" name="npwd" value="<%=pwd%>" ><br><br>
舊密碼:<input type="password" name="opwd" value="" ><br><br>
電子信箱：<input type='text' name='email' value="<%=email%>" ><br><br>
會員電話：<input type='text' name='phone' value="<%=phone%>" ><br><br>
會員地址：<input type='text' name='address' value="<%=address%>" ><br><br>
<input type="submit" name="b1" value="更新資料" />
</form>
<%
}
		

		else{
		%>
	                           <script>
					alert("未登入!!");
					location.href="javascript:history.go(-1)"
				</script>
			 
					<%
		}
		%>
</body>
</html>