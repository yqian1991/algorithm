package com.oreilly.struts.banking.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.apache.struts.action.*;
import com.oreilly.struts.banking.IConstants;
import com.oreilly.struts.banking.view.AccountDetailView;
import com.oreilly.struts.banking.service.AccountService;
import com.oreilly.struts.banking.util.BankingUtil;
/**
 * Struts action that gets the AccountDetailView object based on
 * an id. The id must be passed in a request parameter with the name id.
 */
public class GetAccountDetailAction extends Action {
 public ActionForward execute( ActionMapping mapping,
                                 ActionForm form,
                                 HttpServletRequest request,
                                 HttpServletResponse response)
    throws Exception {
      // Check for a timeout
      if ( !BankingUtil.isLoggedIn(request) ){
        return mapping.findForward( "SessionTimeOut" );
      }

      // Get the id for the account from the request parameters
      String acctId = request.getParameter( "id" );
      // Create an instance of the account service and call it
      AccountService service = new AccountService();
      AccountDetailView detailView = service.getAccountDetailView( acctId );
      // Insert the returned view back into the form and return
      ((DynaActionForm)form).set( "view",  detailView );
      return mapping.findForward( IConstants.SUCCESS_KEY );
  }


}
