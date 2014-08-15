package com.oreilly.struts.banking.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.apache.struts.action.Action;
import org.apache.struts.action.ActionMapping;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import com.oreilly.struts.banking.IConstants;
import com.oreilly.struts.banking.service.IAuthentication;
import com.oreilly.struts.banking.service.SecurityService;
import com.oreilly.struts.banking.view.UserView;
import com.oreilly.struts.banking.form.LoginForm;
/**
 * This Action is called by the ActionServlet when a login attempt
 * is made by the user. The ActionForm should be an instance of
 * a LoginForm and contain the credentials needed by the SecurityService.
 */
public class LoginAction extends Action {
   public ActionForward execute( ActionMapping mapping,
                                 ActionForm form,
                                 HttpServletRequest request,
                                 HttpServletResponse response)
    throws Exception {

      // The ActionForward to return when completed
      ActionForward forward = null;
      UserView userView = null;

      // Get the credentials from the LoginForm
      String accessNbr = ((LoginForm)form).getAccessNumber();
      String pinNbr = ((LoginForm)form).getPinNumber();

      /*
       * In a real application, you would typically get a reference
       * to a security service through something like JNDI or a factory.
       */
      IAuthentication service = new SecurityService();

      // Attempt to login
      userView = service.login(accessNbr, pinNbr);

      // Since an exception wasn't thrown, login was successful

      // Invalidate existing session if it exists
      HttpSession session = request.getSession(false);
      if(session != null) {
        session.invalidate();
      }

      // Create a new session for this user
      session = request.getSession(true);

      // Store the UserView into the session and return
      session.setAttribute( IConstants.USER_VIEW_KEY, userView );
      forward = mapping.findForward(IConstants.SUCCESS_KEY );
      return forward;
  }
}
