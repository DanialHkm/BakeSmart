<%@page import="BAKECrud.productDao"%>  
<jsp:useBean id="p" class="BAKECrud.product"></jsp:useBean>  
<jsp:setProperty property="*" name="p"/>  
<%  
int i=productDao.update(p);  
response.sendRedirect("viewProduct.jsp");  
%>  