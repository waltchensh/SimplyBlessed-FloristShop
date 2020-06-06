<%@ page contentType="text/html;charset=utf-8" import="java.sql.*"%>
<%@include file="config.jsp" %>
<%request.setCharacterEncoding("UTF-8");%>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>後台管理</title>
	<link rel="stylesheet" href="../css/style.css" type="text/css" media="all" />
	<link rel="stylesheet" href="../css/board.css" type="text/css" media="all" />
    

</head>
<body>

	

<%
String bid=request.getParameter("bid");
if(!bid.equals("")){
sql="DELETE FROM redflowers WHERE flower_id='"+bid+"';";

con.createStatement().execute(sql);
out.print("刪除成功，回<a href='add.jsp'>商品總覽</a>");
}
else{
out.print("有問題，請回上一頁");
}
%>

	
</body>
</html>