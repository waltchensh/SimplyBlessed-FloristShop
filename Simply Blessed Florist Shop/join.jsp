<%@ page import = "java.sql.*, java.util.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>

<html>
<head>
	<title>join</title>
</head>
<body>
	<%
	try 
	{
//Step 1: 載入資料庫驅動程式 
Class.forName("com.mysql.jdbc.Driver");
try 
{
//Step 2: 建立連線 	
String url="jdbc:mysql://localhost/?useUnicode=true&characterEncoding=utf-8";
String sql="";
Connection con=DriverManager.getConnection(url,"root","1234");
if(con.isClosed())
out.println("連線建立失敗");
else 
{

	out.println("test1");
	try
	{  


	out.println("test2");
	sql="use test";
	con.createStatement().execute(sql);


	String new_id=new String(request.getParameter("id").getBytes("ISO-8859-1"),"UTF-8");
	int new_pwd=Integer.parseInt(request.getParameter("pwd"));
	int new_pwd2=Integer.parseInt(request.getParameter("pwd2"));
	String new_name=new String(request.getParameter("name").getBytes("ISO-8859-1"),"UTF-8");
	String new_email=request.getParameter("email");
	String new_address=new String(request.getParameter("address").getBytes("ISO-8859-1"),"UTF-8");

	int new_phone=Integer.parseInt(request.getParameter("phone"));


	String sql2 = "select * from member where id='"+new_id+"'"; 
	ResultSet rs=con.createStatement().executeQuery(sql2);
	out.println("test3");
	rs.last();
	if(rs.getRow()==0){
	
	if(new_pwd!=new_pwd2)
	{

	%>
	<script LANGUAGE="JavaScript">
		alert("密碼確認跟密碼不符!")
		location.href="javascript:history.go(-1)"
	</script>
	<%
}

else
	{


					//java.sql.Date new_date=new java.sql.Date(System.currentTimeMillis());
	//Step 4: 執行 SQL 指令	
	sql="insert member (id, pwd, name, email, address, phone) ";
	sql+="value ('" + new_id + "', ";
	sql+="'"+new_pwd+"', ";
	sql+="'"+new_name+"', ";
	sql+="'"+new_email+"', "; 
	sql+="'"+new_address+"', "; 
	sql+="'"+new_phone+"')";      
	//out.println(sql);
	con.createStatement().execute(sql);

	//Step 6: 關閉連線			   
	con.close();
	response.sendRedirect("login+join.jsp");

}

}
else{
out.println("test5");

%>
<script>
	alert("帳號存在");
    location.href="javascript:history.go(-1)";

</script>


<%          


}



}
catch(Exception e)
{
	%>
	<script>
		alert("密碼和手機號碼請輸入數字!!");
		location.href="javascript:history.go(-1)";
	</script>
	<%
}
}
}


catch (SQLException sExec) 
{
	out.println("SQL錯誤");
}
}	
catch (ClassNotFoundException err) {
out.println("class錯誤"+err.toString());
}
%>
</body>
</html>
