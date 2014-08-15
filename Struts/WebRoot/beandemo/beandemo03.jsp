<%@ page language="java" pageEncoding="GBK" isELIgnored="false"%>
<%@page import="java.util.*"%>
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic" %>
<%@ taglib uri="http://struts.apache.org/tags-tiles" prefix="tiles" %>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html:html lang="true">
  <head>
        <title>beandemo03.jsp</title>
  </head>
  
  <body>
   			<%
				Collection  col=new ArrayList();
			    col.add("钱昱");
				col.add("孙式松");
				col.add("王韧");
				request.setAttribute("collection",col); 
			%>
			<bean:size id="len" name="collection" scope="request"></bean:size>
			<h1>长度是：${len}</h1>
  </body>
</html:html>
