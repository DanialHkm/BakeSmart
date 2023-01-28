<%@page import="BAKECrud.registerDao"%>  
<jsp:useBean id="r" class="BAKECrud.registermodel"></jsp:useBean>  
<jsp:setProperty property="*" name="r"/>  
  
<%  
int i=registerDao.save(r);  
  
response.sendRedirect("custLogin.jsp");   
%> 