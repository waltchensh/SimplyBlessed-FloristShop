<%@ page contentType="text/html;charset=utf-8" import="java.sql.*"%>
<%@ include file="config.jsp" %>



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





<html>
<head>
</head>
<body>

	





<%
String bid=request.getParameter("bid");
if(!bid.equals("")){
sql="DELETE FROM member WHERE member_no ="+bid+";";
con.createStatement().execute(sql);
%>
<script>
					alert("刪除成功!!");
					
				</script>
				<%
				out.print("刪除成功，回<a href='admin.jsp'>會員資料</a>");
}
else{
%>
<script>
					alert("失敗!!");
					location.href="javascript:history.go(-1)"
				</script>
				<%
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