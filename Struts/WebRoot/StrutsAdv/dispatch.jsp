<%@ page language="java" pageEncoding="GBK"%>

<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic" %>
<%@ taglib uri="http://struts.apache.org/tags-tiles" prefix="tiles" %>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html:html lang="true">
  <head>
    <title>dispatch.jsp</title>
  </head>
  <body>
  <html:errors/>
  <html:form action="example.do" method="post" onsubmit="return validateMldnForm(this)"> 
  	输入姓名：<html:text property="name"></html:text> <br><br>
  	输入密码：<html:password property="password"></html:password><br><br>
  	<input type="hidden" name="status" value="insert"/>
  	<html:submit value="提交"></html:submit>
  	<html:reset value="重置"></html:reset>
  </html:form>
  <html:javascript formName="hitForm"/>
  </body>
</html:html>
