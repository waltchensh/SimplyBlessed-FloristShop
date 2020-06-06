<%
Class.forName("com.mysql.jdbc.Driver");
String url="jdbc:mysql://localhost:8080/";
Connection con=DriverManager.getConnection(url,"root","1234");
String sql="use test";
con.createStatement().execute(sql);
%>