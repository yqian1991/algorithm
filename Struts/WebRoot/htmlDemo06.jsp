<%@ page language="java" pageEncoding="GBK" isELIgnored="false"%>
<%@ page import="java.util.*" %>
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic" %>
<%@ taglib uri="http://struts.apache.org/tags-tiles" prefix="tiles" %>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html:html lang="true">
  <head>   
        <title>htmlDemo01.jsp</title>
  </head>
  
  <body>
 
			<html:form action="demo.do" method="post">
			   个人介绍
			      <html:textarea property="sex" rows="6" cols="18"/>
				  <html:submit value="提交"/>
				  <html:reset value="重置"/>
			</html:form>
  </body>
</html:html>
