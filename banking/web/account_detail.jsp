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

<html:form action="getaccountdetail">
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
		<TD><FONT FACE="arial,helvetica,geneva" size="4" COLOR="#FFFFFF">
<html:img srcKey="image.clear" width="1" height="5"/><BR>
 <html:img srcKey="image.clear" width="1" height="5"/>
 <B>Summary</B><td><html:img srcKey="image.transfer" align="TOP" altKey="image.transfer.alt" border="0"/></td>
 <html:img srcKey="image.clear" width="1" height="5"/></FONT></TD>
</TR>
</TABLE>

<TABLE BORDER="0" CELLPADDING="0" CELLSPACING="0" width="470">
 <TR>
  <TD width="2"><html:img srcKey="image.clear" width="2" height="1"/></TD>
  <TD BGCOLOR="#336633" height="2" width="466"><html:img srcKey="image.clear" width="466" height="2"/></TD>
  <TD width="2"><html:img srcKey="image.clear" width="2" height="1"/></TD>
 </TR>
</TABLE>

<TABLE BORDER="0" CELLPADDING="4" CELLSPACING="2" width="470">
  <TR ALIGN="CENTER" VALIGN="TOP" BGCOLOR="#6699FF">
   <TD><FONT FACE="arial,helvetica,geneva" SIZE="2">
     <html:img srcKey="image.clear" height="1" width="342" alt="" border="0"/><BR><B><bean:message key="label.description"/></B></FONT></TD>
  <TD><FONT FACE="arial,helvetica,geneva" SIZE="2">
     <html:img srcKey="image.clear" height="1" width="106" alt="" border="0"/><BR><B><bean:message key="label.amount"/></B></FONT></TD>
 </TR>

       <TR ALIGN="RIGHT" VALIGN="TOP" BGCOLOR="#E1E1E1">
                
            <TD ALIGN="LEFT"><FONT FACE="arial,helvetica,geneva" SIZE="2"><bean:message key="label.openingbalance"/> (<bean:write name="accountDetailForm" property="view.openingDate"/>) </FONT></TD>
                
            <TD><FONT FACE="arial,helvetica,geneva" SIZE="2">$<bean:write name="accountDetailForm" property="view.accountBalance"/></FONT></TD>
        </TR>
        <TR ALIGN="RIGHT" VALIGN="TOP" BGCOLOR="#E1E1E1">
                
            <TD ALIGN="LEFT"><FONT FACE="arial,helvetica,geneva" SIZE="2"><bean:message key="label.deposits"/></FONT></TD>
                
            <TD><FONT FACE="arial,helvetica,geneva" SIZE="2">
             $<bean:write name="accountDetailForm" property="view.deposits"/></FONT></TD>
        </TR>
        <TR ALIGN="RIGHT" VALIGN="TOP" BGCOLOR="#E1E1E1">
                
            <TD ALIGN="LEFT"><FONT FACE="arial,helvetica,geneva" SIZE="2"><bean:message key="label.withdrawls"/>
              </FONT></TD>
                
           <TD><FONT FACE="arial,helvetica,geneva" SIZE="2">
             $<bean:write name="accountDetailForm" property="view.withdrawls"/></FONT></TD>
        </TR>
        <TR ALIGN="RIGHT" VALIGN="TOP" BGCOLOR="#E1E1E1">
                
            <TD ALIGN="LEFT"><FONT FACE="arial,helvetica,geneva" SIZE="2">Total 
              Available Balance </FONT></TD>
                
            <TD><FONT FACE="arial,helvetica,geneva" SIZE="2"> $<bean:write name="accountDetailForm" property="view.accountBalance"/></FONT></TD>
        </TR>
</TABLE>
<TABLE BORDER="0" CELLPADDING="0" CELLSPACING="0" width="470">
	<TR>
		<TD width="2"><html:img srcKey="image.clear" width="2" height="1"/></TD>
		<TD BGCOLOR="#336633" height="2" width="466"><html:img srcKey="image.clear" width="466" height="2"/></TD>
		<TD width="2"><html:img srcKey="image.clear" width="2" height="1"/></TD>
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