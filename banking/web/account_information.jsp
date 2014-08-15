<%@ page contentType="text/html; charset=utf-8" %>

<%@ taglib uri="/WEB-INF/struts-bean.tld" prefix="bean" %>
<%@ taglib uri="/WEB-INF/struts-html.tld" prefix="html" %>
<%@ taglib uri="/WEB-INF/struts-logic.tld" prefix="logic" %>

<html:html locale="true">
<head>
 <html:base/>
 <title><bean:message key="title.accountinfo"/></title>
 <link rel="stylesheet" href="stylesheets/login_style_ie.css" type="text/css">
</head>

<body bgcolor="#6699FF" alink="#660000" vlink="#999999" link="#003300"
    text="#000000" topmargin="0" leftmargin="5" marginheight="0" marginwidth="0">
<form>

<%@include file="include/header.jsp"%>

<TABLE BORDER="0" CELLPADDING="0" CELLSPACING="0" WIDTH="387">
  <TR ALIGN="LEFT" VALIGN="TOP">
  </TR>
</TABLE>

   
      <TABLE BORDER="0" CELLPADDING="0" CELLSPACING="0">
        <TR BGCOLOR="#336633">
          <TD COLSPAN="3">
            <TABLE BORDER="0" CELLPADDING="0" CELLSPACING="0" HEIGHT="2" WIDTH="100%">
              <TR><TD></TD></TR>
            </TABLE>
          </TD>
        </TR>

        <TR BGCOLOR="#FFFFFF">
          <TD COLSPAN="3">
            <TABLE BORDER="0" CELLPADDING="0" CELLSPACING="0" HEIGHT="2" WIDTH="100%">
              <TR><TD></TD></TR>
            </TABLE>
          </TD>
        </TR>
        <TR BGCOLOR="#6699FF">
          <TD><TABLE BORDER="0" CELLPADDING="4" CELLSPACING="0" WIDTH="100%"><TR>
            <TD ALIGN="CENTER" VALIGN="MIDDLE">
              <FONT FACE="arial,helvetica,geneva" SIZE="2">
                <html:img srcKey="image.clear" height="1" width="342" alt=""/><BR>
                  <B><bean:message key="label.accounts"/></B>
              </FONT>
            </TD></TR></TABLE>
          </TD>

          <TD ROWSPAN=7 WIDTH=2 BGCOLOR="#FFFFFF">
            <html:img srcKey="image.clear" height="1" width="2" alt=""/>
          </TD>

          <TD><TABLE BORDER="0" CELLPADDING="4" CELLSPACING="0" WIDTH="100%"><TR>
            <TD ALIGN="CENTER" VALIGN="MIDDLE">
              <FONT FACE="arial,helvetica,geneva" SIZE="2">
                <html:img srcKey="image.clear" height="1" width="106" alt="" border="0"/><BR>
                  <B><bean:message key="label.balance"/></B>
              </FONT>
            </TD>
          </TR></TABLE></TD>
        </TR>
<TR BGCOLOR="#FFFFFF">
  <TD COLSPAN="3">
    <TABLE BORDER="0" CELLPADDING="0" CELLSPACING="0" HEIGHT="2" WIDTH="100%">
      <TR><TD></TD></TR>
    </TABLE>
  </TD>
</TR>

<%-- Iterate through the accounts and print them out inside the table --%>
<logic:iterate name="accountInformationForm" property="accounts" id="accountSummaryView">

<TR BGCOLOR="#E1E1E1">
  <TD>
    <TABLE BORDER=0 CELLPADDING=4 CELLSPACING=0 WIDTH=100%>
      <TR class="fieldlabel">
         <%-- Write out the account type here --%>
         <TD VALIGN="MIDDLE" ALIGN="LEFT" width="55%">
         
         <html:link 
           page="/action/getaccountdetail"
           paramId="id"
           paramName="accountSummaryView"
           paramProperty="accountId">           
           <bean:write name="accountSummaryView" property="accountType"/>         
         </html:link>     
        </TD>

              <%-- Write out a hyperlink to view account detail --%>
        <TD VALIGN="MIDDLE" ALIGN="RIGHT" width="45%">
                
        </TD>
        <td>                  
         <html:link 
           page="/action/pretransfer"
           paramId="id"
           paramName="accountSummaryView"
           paramProperty="accountId"> 
              <html:img srcKey="image.transfer" altKey="image.transfer.alt" border="0"/>
         </html:link>
        </td>
      </TR>
    </TABLE>
  </TD>
  <!-- balance  -->
  <TD>
    <TABLE BORDER=0 CELLPADDING=4 CELLSPACING=0 WIDTH=100%>
      <TR>
        <TD VALIGN="MIDDLE" ALIGN="RIGHT" class="currency">
          <%-- Write out the account balance --%> 
          <B>$<bean:write name="accountSummaryView" property="accountBalance"/></B>
        </TD>
      </TR>
    </TABLE>
  </TD>  
</TR>
</logic:iterate>


<TR BGCOLOR="#FFFFFF">
  <TD COLSPAN=3>
    <TABLE BORDER=0 CELLPADDING=0 CELLSPACING=0 HEIGHT=2 WIDTH=100%>
      <TR><TD></TD></TR>
    </TABLE>
  </TD>
</TR>

<TR BGCOLOR="#E1E1E1">
  <TD>
    <TABLE BORDER=0 CELLPADDING=4 CELLSPACING=0 WIDTH=100%>
      <TR><TD VALIGN="MIDDLE" ALIGN="LEFT" class="fieldlabel">
        <B><bean:message key="label.totalassets"/></B>
      </TD></TR>
    </TABLE>
  </TD>
  <TD>
    <TABLE BORDER=0 CELLPADDING=4 CELLSPACING=0 WIDTH=100%>
      <TR><TD VALIGN="MIDDLE" ALIGN="RIGHT" class="currency">
        $6,745.26
      </TD></TR>
    </TABLE>
  </TD>
</TR>

        <TR BGCOLOR="#FFFFFF">
          <TD COLSPAN=3>
            <TABLE BORDER=0 CELLPADDING=0 CELLSPACING=0 HEIGHT=2 WIDTH=100%>
              <TR><TD></TD></TR>
            </TABLE>
          </TD>
        </TR>

        <TR BGCOLOR="#336633">
          <TD COLSPAN=3>
            <TABLE BORDER=0 CELLPADDING=0 CELLSPACING=0 HEIGHT=2 WIDTH=100%>
              <TR><TD></TD></TR>
            </TABLE>
          </TD>
        </TR>       

        <TR BGCOLOR="#FFFFFF">
          <TD COLSPAN=3>
            <TABLE BORDER=0 CELLPADDING=0 CELLSPACING=0 HEIGHT=2 WIDTH=100%>
              <TR><TD></TD></TR>
            </TABLE>
          </TD>
        </TR>
      </TABLE>

<%@include file="include/footer.jsp"%>
</form>
<BR><BR>
</body>
</html:html>