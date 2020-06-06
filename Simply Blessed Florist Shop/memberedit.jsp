<%@ page import = "java.sql.*, java.util.*"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ include file="config.jsp" %>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>後台管理</title>

</head>
<body>
      <form action="member_editup.jsp" method="get" >
  <h2>
  <table>
<%
String bid=request.getParameter("bid");


if(!bid.equals("")){

sql="SELECT* FROM member WHERE member_no='"+bid+"'";
ResultSet rs =con.createStatement().executeQuery(sql);

while (rs.next()){

out.print("<tr><td>會員編號：</td><td>"+rs.getString(1)+"<input type='hidden' name='bid' value='"+rs.getString(1)+"' /></td></tr>");
out.print("<tr><td>名字： </td><td><input type='text' name='name' value="+rs.getString(4)+" /></td></tr>");
out.print("<tr><td>帳號：</td><td><input type='text' name='id' value="+rs.getString(2)+" /></td></tr>");
out.print("<tr><td>密碼： </td><td><input type='text' name='pwd' value="+rs.getString(3)+" /></td></tr>");
out.print("<tr><td>信箱： </td><td><input type='text' name='email' value="+rs.getString(5)+" /></td></tr>");
out.print("<tr><td>電話： </td><td><input type='text' name='phone' value="+rs.getString(6)+" /></td></tr>");
out.print("<tr><td>住址：</td><td><br /><textarea name='address' cols=40' rows='10' wrap='hard'>"+rs.getString(7)+"</textarea></td></tr>");
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