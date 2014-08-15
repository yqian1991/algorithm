package com.oreilly.struts.banking.action;

import java.util.List;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.apache.struts.action.*;
import com.oreilly.struts.banking.service.AccountService;
import com.oreilly.struts.banking.IConstants;
import com.oreilly.struts.banking.view.UserView;
import com.oreilly.struts.banking.util.BankingUtil;
/**
 * Struts action that gets a List of AccountSummaryView objects for the user
 * based on the user's id. The id is stored in a UserView inside the session.
 */
public class GetAccountInformationAction extends Action {
   public ActionForward execute( ActionMapping mapping, ActionForm form,
     HttpServletRequest request, HttpServletResponse response)
     throws Exception {

       if ( !BankingUtil.isLoggedIn(request) ){
         return mapping.findForward( "SessionTimeOut" );
       }

      // Get the UserView from the session
      UserView userView =
        (UserView)request.getSession().getAttribute( IConstants.USER_VIEW_KEY );

      // Create an instance of the account service and call it
      AccountService service = new AccountService();
      List accounts = service.getAccountSummaries( userView.getId() );
      // Put the accounts into the form and return
      ((DynaActionForm)form).set( "accounts", accounts );
      return mapping.findForward( IConstants.SUCCESS_KEY );
  }
}
