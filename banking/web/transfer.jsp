<%@ page contentType="text/html; charset=utf-8" %>

<%@ taglib uri="/WEB-INF/struts-bean.tld" prefix="bean" %>
<%@ taglib uri="/WEB-INF/struts-html.tld" prefix="html" %>
<%@ taglib uri="/WEB-INF/struts-logic.tld" prefix="logic" %>

<html:html locale="true">
<head>
 <html:base/>
 <title><bean:message key="title.accountdetail"/></title>
 <link rel="stylesheet" href="stylesheets/login_style_ie.css" type="text/css">
</head>

<body  bgcolor="#6699FF" alink="#660000" vlink="#999999" link="#003300" text="#000000" topmargin="0" leftmargin="5" marginheight="0" marginwidth="0">

<html:form action="transferaccount">
 <%@include file="include/header.jsp"%>

<TABLE BORDER="0" CELLPADDING="0" CELLSPACING="0" width="600">
<TR>

 <TD VALIGN="TOP" width="470"><FONT FACE="arial,helvetica,geneva" SIZE="2"> 
 <TABLE BORDER="0" CELLPADDING="0" CELLSPACING="0" width="470">
   <TR>
      <TD VALIGN="TOP" BGCOLOR="#6699FF" width="470" COLSPAN="3" height="15">&nbsp;</TD>
  </TR>
<TR>
 <TD VALIGN="TOP" BGCOLOR="#6699FF" width="470" COLSPAN="3">
     <html:img srcKey="image.clear" height="2" width="470" align="TOP" alt="" border="0"/></TD>
</TR>
<TR>
<TD VALIGN="TOP" BGCOLOR="#6699FF" class="options">
<B><bean:message key="label.account"/>:</B>

<bean:write name="accountDetailForm" property="view.accountType"/> 
<bean:write name="accountDetailForm" property="view.accountId"/>
<bean:define id="str" name="accountDetailForm" property="view.accountId"/>
<html:hidden property="accountPid" value="<%=str.toString()%>"/>
</td>
</TR>
<TABLE BORDER="0" CELLPADDING="0" CELLSPACING="0" width="470">
 <TR>
  <TD width="2"><html:img srcKey="image.clear" width="2" height="1"/></TD>
  <TD BGCOLOR="#336633" height="2" width="466"><html:img srcKey="image.clear" width="466" height="2"/></TD>
  <TD width="2"><html:img srcKey="image.clear" width="2" height="1"/></TD>
 </TR>
</TABLE>


<TABLE BORDER="0" CELLPADDING="0" CELLSPACING="3" width="470">
</TABLE>
<TABLE BORDER="0" CELLPADDING="0" CELLSPACING="0" width="470">
	<TR>
		<TD width="2"><html:img srcKey="image.clear" width="2" height="1"/></TD>
		<TD BGCOLOR="#336633" height="2" width="466"><html:img srcKey="image.clear" width="466" height="2"/></TD>
		<TD width="2"><html:img srcKey="image.clear" width="2" height="1"/></TD>
	</TR>
</TABLE>
<TABLE BORDER="0" CELLPADDING="1" CELLSPACING="2" width="470">

	<TR ALIGN="LEFT" VALIGN="TOP" BGCOLOR="#E1E1E1">
		    <TD><FONT FACE="arial,helvetica,geneva" SIZE="3"><B><bean:message key="label.balance"/>: 
              &nbsp;&nbsp;&nbsp;$<bean:write name="accountDetailForm" property="view.accountBalance"/></B></FONT></TD>
	</TR>

</TABLE>
<TABLE BORDER="0" CELLPADDING="0" CELLSPACING="0" width="470">
	<TR>
		<TD width="2"><html:img srcKey="image.clear" width="2" height="1"/></TD>
		<TD BGCOLOR="#336633" height="2" width="466"><html:img srcKey="image.clear" width="466" height="2"/></TD>
		<TD width="2"><html:img srcKey="image.clear" width="2" height="1"/></TD>
	</TR>
</TABLE>
<TABLE BORDER="0" CELLPADDING="0" CELLSPACING="2" width="470">
	<TR ALIGN="LEFT" VALIGN="TOP">
		<TD>
		  <FONT FACE="arial,helvetica,geneva" size="2" COLOR="black">
			 <B><bean:message key="label.transferAccount"/>:</B> 
         </FONT>
	   </TD>
	   <TD>
	          <html:select property="accountId">
					<logic:iterate name="account" scope="request" id="view">
					<bean:define id="id" name='view' property='accountId'/>
						<html:option value="<%=id.toString() %>">
						       <bean:write name="view" property="accountType"/>
					     </html:option>
					</logic:iterate>
			  </html:select>
	   </TD>
   </TR>
   <TR ALIGN="LEFT" VALIGN="TOP">
		<TD>
		  <FONT FACE="arial,helvetica,geneva" size="2" COLOR="black">
			 <B><bean:message key="label.transferValue"/>:</B> 
         </FONT>
	   </TD>
	   <TD>
	         <html:text property="accountNum" value="100.00"/>
	   </TD>
   </TR>
   <TR>
	<TD><html:submit styleClass="fieldlabel" value="Submit"/></TD>
   </TR>
</TABLE>

        <BR>
        <BR></FONT></TD>

</TR>
</TABLE>
</html:form>
 <%@include file="include/footer.jsp"%>
<BR>
</body>
</html:html>