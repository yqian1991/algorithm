<%@ page language="java" pageEncoding="GBK" isELIgnored="false"%>

<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic" %>
<%@ taglib uri="http://struts.apache.org/tags-tiles" prefix="tiles" %>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html:html lang="true">
  <head>  
    <title>loginDemo03.jsp</title>
  </head>
  
  <body>
    <%  
    	request.setAttribute("ref",new Integer(2)); 
    	session.setAttribute("password","123456"); 
    %>
    <logic:equal name="ref" scope="request" value="1">
    	<h2>1</h2>
    </logic:equal>
    <logic:notEqual name="ref" scope="request" value="1">
    	<h2>ÄÚÈÝ²»ÊÇ1</h2>
    </logic:notEqual>
  </body>
</html:html>
