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
  <% 
    Collection col=new ArrayList();
    col.add(new org.apache.struts.util.LabelValueBean("北京","bj"));
    col.add(new org.apache.struts.util.LabelValueBean("威海","wh"));
    col.add(new org.apache.struts.util.LabelValueBean("抚州","fz"));
    pageContext.setAttribute("ht",col);
  %>
			<html:form action="demo.do" method="post">
			   水果
			      <logic:iterate id="fru" name="demoForm" property="fruit">
					<html:multibox property="select">${fru}</html:multibox>	${fru}
				  </logic:iterate>
			</html:form>
  </body>
</html:html>
