<%@ page import = "java.sql.*, java.util.*"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>

<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>後台管理</title>

</head>
<body>

			
<%
try {
//Step 1: 載入資料庫驅動程式 
    Class.forName("com.mysql.jdbc.Driver");
    try {
		//Step 2: 建立連線 	
        String url="jdbc:mysql://localhost/";
        String sql="";
        Connection con=DriverManager.getConnection(url,"root","1234");
        if(con.isClosed())
           out.println("連線建立失敗");
        else {
//Step 3: 選擇資料庫   
           sql="use test";
           con.createStatement().execute(sql);
String bid=request.getParameter("bid");
if(!bid.equals(""))
{

String name=new String(request.getParameter("name"));
String new_id=new String(request.getParameter("id"));
String new_pwd=new String(request.getParameter("pwd"));
String new_email=new String(request.getParameter("email"));
String new_phone=new String(request.getParameter("phone"));
String new_address=new String(request.getParameter("address"));



sql="UPDATE member SET id='"+new_id+"', pwd='"+new_pwd+"', email='"+new_email+"', address='"+new_address+"', name='"+name+"' where member_no='"+bid+"' LIMIT 1;";
con.createStatement().execute(sql);




out.print("<h3>更新成功，回<a href='admin.jsp'>會員管理</a>");


}
else{
%>
<script>
	alert("有問題，請回上一頁");
	location.href="javascript:history.go(-1)"
</script>

<%
}
    }
	}
    catch (SQLException sExec) {
           out.println(sExec);
	       out.println("SQL錯誤");
    }
}
catch (ClassNotFoundException err) {
   out.println("class錯誤"+err.toString());
}

%>
			
</div>	
</body>
</html>