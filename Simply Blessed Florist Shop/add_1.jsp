<%@ page import = "java.sql.*, java.util.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%request.setCharacterEncoding("utf-8");%>




<%
try {
//Step 1: 載入資料庫驅動程式 
    Class.forName("com.mysql.jdbc.Driver");
    try {
//Step 2: 建立連線 	
        String url="jdbc:mysql://localhost/?useUnicode=true&characterEncoding=utf-8";
        String sql="";
        Connection con=DriverManager.getConnection(url,"root","1234");
        if(con.isClosed())
           out.println("連線建立失敗");
        else {
//Step 3: 選擇資料庫   
           sql="use test";
           con.createStatement().execute(sql);
           //從表格傳遞中文到資料庫, 必須使用getBytes("ISO-8859-1"),"UTF-8"編碼

		   String new_type=new String(request.getParameter("type").getBytes("ISO-8859-1"),"UTF-8");
       String new_product=new String(request.getParameter("product").getBytes("ISO-8859-1"),"UTF-8");
       String new_price=new String(request.getParameter("price").getBytes("ISO-8859-1"),"UTF-8");
       String new_pic=new String(request.getParameter("pic").getBytes("ISO-8859-1"),"UTF-8");
		   
		   
		   
		 
           
//Step 4: 執行 SQL 指令	
           sql="insert "+new_type+" (img_id ,img_name ,dollar )";
           sql+="value ('"+new_pic+"', ";
           sql+="'"+new_product+"', "; 
           sql+="'"+new_price+"')"; 
      

           con.createStatement().execute(sql);
//Step 6: 關閉連線
           con.close();
//Step 5: 顯示結果 
          //直接顯示最新的資料
		  %>
		  <script LANGUAGE="JavaScript">
				  alert("新增成功!!!")
				  location.href="javascript:history.go(-1)"
				  </script>
		  <%
         
       }
    }
    catch (SQLException sExec) {
           out.println("SQL錯誤"+sExec.toString());
    }
}
catch (ClassNotFoundException err) {
   out.println("class錯誤"+err.toString());
}
%>