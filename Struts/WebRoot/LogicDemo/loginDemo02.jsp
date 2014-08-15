<%@ page language="java" pageEncoding="GBK" isELIgnored="false"%>

<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic" %>
<%@ taglib uri="http://struts.apache.org/tags-tiles" prefix="tiles" %>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html:html lang="true">
  <head>  
    <title>loginDemo02.jsp</title>
  </head>
  
  <body>
    <%  
    	request.setAttribute("uname","Ç®êÅ"); 
    	session.setAttribute("password","123456"); 
    %>
    <logic:equal name="password" scope="request" value="123456">
    	<h2>${uname}</h2>
    </logic:equal>
  </body>
</html:html>
