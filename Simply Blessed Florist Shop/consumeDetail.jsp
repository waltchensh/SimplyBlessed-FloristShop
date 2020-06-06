<%@ page import = "java.sql.*, java.util.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>

<%@include file="config.jsp" %>
<%request.setCharacterEncoding("UTF-8");%>

<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title></title>
	<link rel="stylesheet" href="">
</head>
<body>
     	            <table>   
<%
            sql="use test";
            con.createStatement().execute(sql);

			sql = "SELECT * FROM ordercontent where no_order="+request.getParameter("item");
            ResultSet rs2 =con.createStatement().executeQuery(sql);
                        while(rs2.next()){
                        %>

				<tr>
					<th><%=rs2.getString(3)%></th>
					<th><%=rs2.getString(4)%></th>
					<th><%=rs2.getString(5)%></th>
				</tr>

                        <%
                    }


%>
						</table>	 
</body>
</html>
