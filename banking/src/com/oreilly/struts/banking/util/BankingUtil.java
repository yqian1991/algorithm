package com.oreilly.struts.banking.util;

import javax.servlet.http.HttpServletRequest;
import com.oreilly.struts.banking.IConstants;

public class BankingUtil {
  /**
   * Return true if there's a UserView object stored in the session, false otherwise.
   */
  public static boolean isLoggedIn( HttpServletRequest request ){
    if ( request.getSession(false) == null ||
         (request.getSession().getAttribute( IConstants.USER_VIEW_KEY ) == null)){
      return false;
    } else{
      return true;
    }
  }
}