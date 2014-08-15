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
  
  <body>
    <%   
    	Map m=new HashMap();
    	List all=new ArrayList(); 
    	all.add("Ç®êÅ");
    	all.add("Íþº£ ");
    	all.add("¸§ÖÝ");
    	m.put("qianyu",all);
    	
    	List all1=new ArrayList(); 
    	all1.add("ËïÊ½ËÉ");
    	all1.add("Íþº£ ");
    	all1.add("²×ÖÝ");
    	m.put("sun",all1);
    	
    	request.setAttribute("map",m);
    %>
    <logic:iterate id="str" name="map" scope="request">
    	<h2>${str.key}--><br>
    	<bean:define id="temp" name="str.value"></bean:define>
    	<logic:iterate id="in" name="str.value" scope="request">
    	     <li>${in}
    	</logic:iterate>
    	<h2>
    </logic:iterate>
  </body>
</html:html>
