<%@page import="BAKECrud.staffDAO"%>  
<jsp:useBean id="s" class="BAKECrud.staff"></jsp:useBean>  
<jsp:setProperty property="*" name="s"/>  
<%  
int i=staffDAO.update(s);  
response.sendRedirect("listStaff.jsp");  
%> 