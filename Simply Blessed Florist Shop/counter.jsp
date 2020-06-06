<%@ page import = "java.sql2.*, java.util.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%request.setCharacterEncoding("UTF-8");%>
<%
try
{
//Step 3: 選擇資料庫  
			int ct=0;
			String sql2="";
			Class.forName("com.mysql.jdbc.Driver");
            
	String url2="jdbc:mysql://localhost/";
	Connection con2=DriverManager.getConnection(url2,"root","1234");
			sql2="use test";
			con2.createStatement().execute(sql2);
//Step 4: 執行 sql2 指令, 若要操作記錄集, 需使用executeQuery, 才能傳回ResultSet	
			sql2="select * from counter"; 
			ResultSet rs=con2.createStatement().executeQuery(sql2);
			
			while(rs.next())
			{	
				if (session.isNew())
				{
					ct=Integer.parseInt(rs.getString("count"))+1;
					out.println("您是本站第<span style='font-weight:bold'>"+ct+"</span>位訪客。");
				}
				
				else 
				{
					ct=Integer.parseInt(rs.getString("count"));
					out.println("您是本站第<span style='font-weight:bold'>"+ct+"</span>位訪客。");
				}
			}
			
			sql2="update counter set count="+ct;
			con2.createStatement().executeUpdate(sql2);
			
        
    }
    catch (SQLException sExec) {
           out.println("sql錯誤"+sExec);
    }
%>