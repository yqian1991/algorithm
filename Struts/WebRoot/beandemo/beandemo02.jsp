<%@ page language="java" pageEncoding="GBK" isELIgnored="false"%>
<%@page import="java.util.*"%>
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic" %>
<%@ taglib uri="http://struts.apache.org/tags-tiles" prefix="tiles" %>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html:html lang="true">
  <head>
        <title>beandemo02.jsp</title>
  </head>
  
  <body>
   			<%
				Map m=new HashMap();
			    m.put("one","1");
				m.put("two","2");
				m.put("three","3");
				m.put("four","4");
				request.setAttribute("mapname",m); 
			%>
			<bean:size id="len" name="mapname" scope="request"></bean:size>
			<h1>≥§∂» «£∫${len}</h1>
  </body>
</html:html>
