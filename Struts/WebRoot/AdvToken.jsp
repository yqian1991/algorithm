<%@ page language="java" pageEncoding="GBK"%>

<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic" %>
<%@ taglib uri="http://struts.apache.org/tags-tiles" prefix="tiles" %>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html:html lang="true">
  <head>
    <title>AdvToken.jsp</title>
  </head>
  <body>
  	<html:form action="note.do" method="post">
  	            标题：<html:text property="title" /> <br>
    	 作者：<html:text property="author" /> <br>
  	            内容：<br>
  	    <html:textarea property="content"></html:textarea><br>
  	    <html:submit value="提交"></html:submit>
  	    <html:reset value="重置"></html:reset>
  	</html:form>
  </body>
</html:html>
