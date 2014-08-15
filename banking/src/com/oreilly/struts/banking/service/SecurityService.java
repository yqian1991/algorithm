package com.oreilly.struts.banking.service;

import com.oreilly.struts.banking.view.UserView;
/**
 * Used by the example banking application to simulate a security service.
 */
public class SecurityService implements IAuthentication {

  public UserView login(String accessNumber, String pin )
    throws InvalidLoginException {

    // A real security service would check the login against a security realm
    // This example is hard coded to only let in 123/456
    if( "123".equals( accessNumber) && "456".equals(pin) ){
      /* Dummy a UserView for this example.
       * This data/object would typically come from the business layer
       * after proper authentication/authorization had been done.
       */
      UserView userView = new UserView( "John", "Doe" );
      userView.setId( "39017" );
      return userView;
    }
    else {
      // If the login method is invalid, throw an InvalidLoginException
      // Create a msg that can be inserted into a log file
      String msg = "Invalid Login Attempt by " + accessNumber + ":" + pin;
      throw new InvalidLoginException( msg );
    }
  }
}
