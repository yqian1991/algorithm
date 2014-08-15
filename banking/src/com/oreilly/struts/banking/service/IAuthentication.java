package com.oreilly.struts.banking.service;

import com.oreilly.struts.banking.view.UserView;
/**
 * Provides methods that the banking security service should implement.
 */
public interface IAuthentication {
  /**
   * The login method is called when a user wishes to login to
   * the online banking application.
   * @param accessNumber The account access number.
   * @param pin The account private id number.
   * @returns A DTO object representing the user's personal data.
   * @throws InvalidLoginException if the credentials are invalid.
   */
  public UserView login( String accessNumber, String pin )
    throws InvalidLoginException;
}
