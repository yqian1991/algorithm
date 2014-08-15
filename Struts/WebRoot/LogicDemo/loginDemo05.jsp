<%@ page language="java" pageEncoding="GBK" isELIgnored="false"%>
<%@ page import="java.util.*"   %>
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic" %>
<%@ taglib uri="http://struts.apache.org/tags-tiles" prefix="tiles" %>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html:html lang="true">
  <head>  
    <title>loginDemo04.jsp</title>
  </head>
  
  <body><br>
    <%   
    	Set all=new TreeSet(); 
    	all.add("Ç®êÅ");
    	all.add("Íþº£ ");
    	all.add("¸§ÖÝ");
    	request.setAttribute("listall",all);
    %>
    <logic:iterate id="str" name="listall" scope="request">
    	<h2>${str }</h2>
    </logic:iterate>
  </body>
</html:html>
