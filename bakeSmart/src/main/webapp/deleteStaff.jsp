<%@page import="BAKECrud.staffDAO"%>  
<jsp:useBean id="s" class="BAKECrud.staff"></jsp:useBean>  
<jsp:setProperty property="*" name="s"/>  
<%  
staffDAO.delete(s);  
response.sendRedirect("listStaff.jsp");  
%>   