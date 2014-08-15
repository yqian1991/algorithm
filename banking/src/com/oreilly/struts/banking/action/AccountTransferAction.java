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
public class AccountTransferAction extends Action {
 public ActionForward execute( ActionMapping mapping,
                                 ActionForm form,
                                 HttpServletRequest request,
                                 HttpServletResponse response)
    throws Exception {
      // Check for a timeout
      if ( !BankingUtil.isLoggedIn(request) ){
        return mapping.findForward( "SessionTimeOut" );
      }
      //transfer money
      String accountNum = (String) ((DynaActionForm)form).get("accountNum");
	  String accountId =(String) ((DynaActionForm)form).get("accountId");	 //+
	  String pid =(String) ((DynaActionForm)form).get("accountPid");//-
	  System.out.println("form data :"+accountNum+" "+accountId+" "+pid);
	  AccountService service=new AccountService();
	  service.transferAccount(pid, accountId, accountNum);
      return mapping.findForward( IConstants.SUCCESS_KEY );
  }


}
