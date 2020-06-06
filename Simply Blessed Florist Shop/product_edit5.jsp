<%@ page import = "java.sql.*, java.util.*"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
pageEncoding="utf-8"%>

<%@ include file="config.jsp" %>
<html>
<head>
	
    <title>後台管理</title>
	
    
	
</head>
<body>
			<form action="edit_update5.jsp">
	<h2>
	<table>
<%
String bid=request.getParameter("bid");
if(!bid.equals("")){
sql="SELECT * FROM `purpleflowers` WHERE flower_id='"+bid+"'";
ResultSet rs =con.createStatement().executeQuery(sql);
while (rs.next()){
out.print("<tr><td>編號：</td><td>"+rs.getString(1)+"<input type='hidden' name='bid' value='"+rs.getString(1)+"' /></td></tr>");
out.print("<tr><td>名字： </td><td><input type='text' name='img_name' value="+rs.getString(3)+" /></td></tr>");
out.print("<tr><td>價錢：</td><td><input type='text' name='dollar' value="+rs.getString(4)+" /></td></tr>");
out.print("<tr><td>圖片： </td><td><input type='text' name='img_id' value="+rs.getString(2)+" /></td></tr>");
out.print("<tr><td>簡介：</td><td><br /><textarea name='introduction' cols=40' rows='10' wrap='hard'>"+rs.getString(6)+"</textarea></td></tr>");
   }
}
else{
out.print("有問題，請回上一頁");
}
%>
				</table>
				<input type="submit" value="送出" /><input type="button" value="取消" onclick="javascript: history.back(-1);"/>
			</form>

		</center>

</body>
</html>