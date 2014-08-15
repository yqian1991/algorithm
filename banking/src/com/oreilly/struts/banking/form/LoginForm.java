package com.oreilly.struts.banking.form;

import javax.servlet.http.HttpServletRequest;
import org.apache.struts.action.Action;
import org.apache.struts.action.ActionError;
import org.apache.struts.action.ActionErrors;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionMapping;
import org.apache.struts.util.MessageResources;
/**
 * This ActionForm is used by the online banking appliation to validate
 * that the user has entered an accessNumber and a pinNumber. If one or
 * both of the fields are empty when validate is called by the
 * ActionServlet, error messages are created.
 */
public class LoginForm extends ActionForm {
  // The user's private id number
  private String pinNumber;
  // The user's access number
  private String accessNumber;

  public LoginForm() {
    super();
    resetFields();
  }
  /**
   * Called by the framework to validate the user has entered the
   * accessNumber and pin fields.
   */
  public ActionErrors validate(ActionMapping mapping, HttpServletRequest req ){
    ActionErrors errors = new ActionErrors();

    // Get access to the message resources for this application
    // There's not an easy way to access the resources from an ActionForm
    MessageResources resources =
      (MessageResources)req.getAttribute( Action.MESSAGES_KEY );

    // Check and see if the access number is missing
    if(accessNumber == null || accessNumber.length() == 0) {
      String accessNumberLabel = resources.getMessage( "label.accessnumber" );
      ActionError newError =
        new ActionError("global.error.login.requiredfield", accessNumberLabel );
      errors.add(ActionErrors.GLOBAL_ERROR, newError);
    }

    // Check and see if the pin number is missing
    if(pinNumber == null || pinNumber.length() == 0) {
      String pinNumberLabel = resources.getMessage( "label.pinnumber" );
      ActionError newError =
        new ActionError("global.error.login.requiredfield", pinNumberLabel );
      errors.add(ActionErrors.GLOBAL_ERROR, newError);
    }
    // Return the ActionErrors, in any.
    return errors;
  }

  /**
   * Called by the framework to reset the fields back to their default values.
   */
  public void reset(ActionMapping mapping, HttpServletRequest request) {
    // Clear out the access number and pin number fields
    resetFields();
  }
  /**
   * Reset the fields back to their defaults.
   */
  protected void resetFields() {
    this.accessNumber = "";
    this.pinNumber = "";
  }

  public void setAccessNumber(String nbr) {
    this.accessNumber = nbr;
  }

  public String getAccessNumber() {
    return this.accessNumber;
  }

  public String getPinNumber() {
    return this.pinNumber;
  }
  public void setPinNumber(String nbr) {
    this.pinNumber = nbr;
  }
}
