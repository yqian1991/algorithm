<%@ page language="java" pageEncoding="GBK"%>

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
			   性别
			      <html:radio property="sex" value="男"/>男
				  <html:radio property="sex" value="女"/>女<br>
				  <html:submit value="提交"/>
				  <html:reset value="重置"/>
			</html:form>
  </body>
</html:html>
