<%@page import="BAKECrud.productDao"%>  
<jsp:useBean id="p" class="BAKECrud.product"></jsp:useBean>  
<jsp:setProperty property="*" name="p"/>  
<%  
productDao.delete(p);  
response.sendRedirect("viewProduct.jsp");  
%>  