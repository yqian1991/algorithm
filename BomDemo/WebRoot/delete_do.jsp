<%@ page language="java" import="java.util.*" pageEncoding="GBK" isELIgnored="false"%>
<%@ page import="org.qianyu.dtree.factory.DAOFactory" %>
<%@ page import="org.qianyu.dtree.pojo.Item"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>  
       <title>javascript jQuery TreeTable</title>
      
  </head>
  
  <body>
     <h1><font color="red">操作成功,自动跳转</font></h1>
     <%
	     response.setHeader("refresh", "1;URL=index.jsp");
	%>
	<a href="index.jsp">若未自动跳转，请点击此处</a>
  </body>
</html>
