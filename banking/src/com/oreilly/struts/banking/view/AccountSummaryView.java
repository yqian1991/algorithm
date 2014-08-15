package com.oreilly.struts.banking.view;
/**
 * A value object that holds summary information for a user account.
 */
public class AccountSummaryView implements java.io.Serializable {
  private String accountId;
  private Double accountBalance;
  private String accountName;
  private String accountType;
  /**
   * Default Constructor
   */
  public AccountSummaryView() {
    super();
  }

  public String getAccountType() {
    return accountType;
  }
  public void setAccountBalance(Double newAccountBalance) {
    accountBalance = newAccountBalance;
  }
  public String getAccountId() {
    return accountId;
  }
  public void setAccountId(String newAccountId) {
    accountId = newAccountId;
  }
  public Double getAccountBalance() {
    return accountBalance;
  }
  public String getAccountName() {
    return accountName;
  }
  public void setAccountType(String newAccountType) {
    accountType = newAccountType;
  }
  public void setAccountName(String newAccountName) {
    accountName = newAccountName;
  }

}
