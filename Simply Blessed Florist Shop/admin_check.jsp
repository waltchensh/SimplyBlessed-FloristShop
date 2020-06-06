<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<%@page contentType="text/html;charset=utf-8" language="java" import="java.sql.*"%>
<%@include file="config.jsp" %>
<%


if(request.getParameter("admin_id") !=null && request.getParameter("admin_pwd") != null){
    sql="USE test";  
    
    //sql = "SELECT * FROM member WHERE id='" +request.getParameter("id") + 
	//      "'  AND pwd='" + request.getParameter("pwd") + "'"  ; 
    sql = "SELECT * FROM admin WHERE admin_id=? AND admin_pwd=?";
	//' OR 1=1; #
	//out.println(sql);
	//out.close();//程式結束
    PreparedStatement pstmt = null;
	pstmt=con.prepareStatement(sql);
    pstmt.setString(1,request.getParameter("admin_id"));
    pstmt.setString(2,request.getParameter("admin_pwd"));
	
	ResultSet paperrs = pstmt.executeQuery();
	//ResultSet paperrs =con.createStatement().executeQuery(test);
    
    if(paperrs.next()){            
        session.setAttribute("admin_id",request.getParameter("admin_id"));
        response.sendRedirect("admin.jsp") ;
    }
    else 
    %>
                 <script LANGUAGE="JavaScript">
                  alert("帳號跟密碼不符!")
                  location.href="javascript:history.go(-1)"
                  </script>     
              <%        
        out.println("密碼帳號不符 !! <a href='login+join.jsp'>按此</a>重新登入") ;

}
%>

