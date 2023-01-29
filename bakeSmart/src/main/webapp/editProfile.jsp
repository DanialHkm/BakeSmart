<%@page import="BAKECrud.custDao"%>  
<jsp:useBean id="c" class="BAKECrud.cust"></jsp:useBean>  
<jsp:setProperty property="*" name="c"/>  
<%  
int i=custDao.save(c);  
response.sendRedirect("homepagecustomer.jsp");  
%> 