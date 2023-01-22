<%@page import="BAKECrud.productDao"%>  
<jsp:useBean id="p" class="BAKECrud.product"></jsp:useBean>  
<jsp:setProperty property="*" name="p"/>  
  
<%  
int i=productDao.save(p);  
if(i>0){  
response.sendRedirect("addProduct-success.jsp");  
}else{  
response.sendRedirect("addProduct-error.jsp");  
}  
%>  