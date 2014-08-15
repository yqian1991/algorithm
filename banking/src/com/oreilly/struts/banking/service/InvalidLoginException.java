package com.oreilly.struts.banking.service;
/**
 * Thrown when a user attempts to login with invalid credentials.
 */
public class InvalidLoginException extends Exception {
  public InvalidLoginException( String msg ){
    super( msg );
  }
}
