<%
session.removeAttribute("id");
session.removeAttribute("admin_id");
response.sendRedirect("index.jsp") ;
%>