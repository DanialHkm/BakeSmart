<%@page import="BAKECrud.staffDAO"%>  
<jsp:useBean id="s" class="BAKECrud.staff"></jsp:useBean>  
<jsp:setProperty property="*" name="s"/>  
  
<%  
int i=staffDAO.save(s);   
response.sendRedirect("listStaff.jsp");  
%>  