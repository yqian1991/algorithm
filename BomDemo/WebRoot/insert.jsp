<%@ page language="java" import="java.util.*" pageEncoding="GBK" isELIgnored="false"%>
<%@ page import="org.qianyu.dtree.factory.DAOFactory" %>
<%@ page import="org.qianyu.dtree.pojo.Item"%>
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean"%>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html"%>
<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic"%>
<%@ taglib uri="http://struts.apache.org/tags-tiles" prefix="tiles"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>  
       <title>javascript jQuery TreeTable</title>
        <link href="styles.css" rel="stylesheet" type="text/css"/>
  </head>
  
  <body>
   <html:form action="insert.do" method="post">
   <table cellspacing="0" cellpadding="0">
          <tr><td>输入本级序号</td><td><html:text property="clevel" value=""></html:text></td></tr>
          <tr><td>已占用级别</td><td>
          							<%
          							   List all=(List)request.getAttribute("all");
          							   Iterator iter=all.iterator();
          							   while(iter.hasNext()){
          							       Item item=(Item)iter.next();
          							       int clevel=item.getClevel();
          						    %>
          						           <%=clevel%>
          							<% 
          							   }   							   
          							%>
                             </td></tr>
          <tr><td>父节点</td><td><html:text property="plevel" readonly="true" value="${item_in.clevel}"></html:text></td></tr> 
          <tr><td>节点名称</td><td><html:text property="name"></html:text></td></tr>
          <tr><td>节点属性</td><td><html:text property="property"></html:text></td></tr>
          <tr><td>勾选</td><td><input type="radio" name="produce" value="生产">
          <input type="radio" name="outsource" value="外购">
          <input type="radio" name="outadd" value="外携"></td></tr>
          <tr><td><html:submit value="增加"></html:submit></td><td>  
          <input type="hidden" name="status" value="insert">     
          <html:reset value="重置"></html:reset></td></tr>
          
   </table>
   </html:form>
  </body>
</html>
