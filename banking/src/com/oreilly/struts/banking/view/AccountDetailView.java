package com.oreilly.struts.banking.view;
import java.util.Date;
/**
 * A value object that holds detailed information for a user account.
 */
public class AccountDetailView extends AccountSummaryView {
  private Double withdrawls;
  private Date openingDate;
  private Double deposits;
  /**
   * Default Constructor
   */
  public AccountDetailView() {
    super();
  }

  public Double getWithdrawls() {
    return withdrawls;
  }
  public void setWithdrawls(Double newWithdrawls) {
    withdrawls = newWithdrawls;
  }

  public void setDeposits(Double newDeposits) {
    deposits = newDeposits;
  }
  public Double getDeposits() {
    return deposits;
  }
  public Date getOpeningDate(){
    return openingDate;
  }
  public void setOpeningDate( Date aDate ){
    openingDate = aDate;
  }
}
