<%@ page language="java" pageEncoding="GBK"%>

<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic" %>
<%@ taglib uri="http://struts.apache.org/tags-tiles" prefix="tiles" %>

<html:html lang="true">
  <head>
    <title>Upload.jsp</title>
  </head>
  <body>
	<html:form action="upload.do" method="post" enctype="multipart/form-data">
		文件的名称<html:text property="name"></html:text><br>
		选择上传的文件：<html:file property="pic"></html:file>
		<html:submit value="上传"></html:submit>
	    <html:reset value="重置"></html:reset>
	</html:form>	
  </body>
</html:html>
