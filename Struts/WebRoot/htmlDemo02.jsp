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
			   选择城市
			      <html:select property="city" >
			      	<html:option value="bj">北京</html:option>
			      	<html:option value="wh">威海</html:option>
			      	<html:option value="fz">抚州</html:option>
				  </html:select>
				 
				  <html:submit value="提交"/>
				  <html:reset value="重置"/>
			</html:form>
  </body>
</html:html>
