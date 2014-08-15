<%@ page language="java" pageEncoding="ISO-8859-1" isELIgnored="false"%>

<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic" %>
<%@ taglib uri="http://struts.apache.org/tags-tiles" prefix="tiles" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html:html lang="true">
  <head>  
    <title>beandemo01.jsp</title>
  </head>
  <body>
  	<bean:define id="str" value="hello,qianyu!"></bean:define>
	<h1><bean:write name="str"></bean:write> </h1>
  	<h1>${str}</h1>
  </body>
</html:html>
