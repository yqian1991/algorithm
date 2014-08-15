<%@ page language="java" pageEncoding="GBK" isELIgnored="false"%>

<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic" %>
<%@ taglib uri="http://struts.apache.org/tags-tiles" prefix="tiles" %>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html:html lang="true">
  <head>  
    <title>loginDemo01.jsp</title>
  </head>
  
  <body><br>
    <%  
    	request.setAttribute("name","钱昱"); 
    	session.setAttribute("password","123456"); 
    %>
    <logic:present name="name" scope="request">
    	<h2>指定的属性存在，内容为：${name}</h2>
    </logic:present>
    <logic:notPresent name="password" scope="request">
    	<h2>指定的属性存在,${password} </h2>
    </logic:notPresent>
  </body>
</html:html>
