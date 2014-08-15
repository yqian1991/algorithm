package com.oreilly.struts.banking.service;

import java.util.ArrayList;
import java.util.Calendar;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import com.oreilly.struts.banking.view.AccountDetailView;
import com.oreilly.struts.banking.view.AccountSummaryView;
/**
 * Used by the example banking application to simulate a datastore.
 */
public class AccountService {
  // A map to hold the users accounts
  private static Map accountMap = new HashMap();
  /**
   * Default Constructor
   */
  public AccountService() {
    super();
  }
  /**
   * Retrieve an AccountDetailView belonging to the user with the acctId.
   */
  public AccountDetailView getAccountDetailView( String acctId ) {
    return (AccountDetailView)accountMap.get( acctId );
  }


  /**
   * Retrieve a collection of AccountSummaryView objects for the user.
   */
  public List getAccountSummaries(String userId) {
    return new ArrayList( accountMap.values() );
  }
  
  public List getTransferAccount(String accID) {
	    Map accMap = new HashMap();
	    Collection<AccountSummaryView> viewlist=accountMap.values();
	    Iterator<?> iter=viewlist.iterator();
	    for(;iter.hasNext();){
	    	AccountSummaryView sview=(AccountSummaryView)iter.next();
	    	if(!sview.getAccountId().equals(accID)){
	    		accMap.put(sview.getAccountId(), sview);
	    	}
	    }
	    return new ArrayList( accMap.values() );
  }
  public void transferAccount(String preid, String postid, String number){
	  Double dnum=Double.valueOf(number);
	  AccountDetailView view=new  AccountDetailView();
	  view=(AccountDetailView) accountMap.get( preid );
	  ((AccountDetailView) accountMap.get( preid )).setAccountBalance(view.getAccountBalance()-dnum);
	  view=(AccountDetailView) accountMap.get( postid );
	  ((AccountDetailView) accountMap.get( postid )).setAccountBalance(view.getAccountBalance()+dnum);
  }
  // This data is just dummied up for the example. In a real application,
  // all of this would come from the database.
  static{
    Calendar cal = java.util.GregorianCalendar.getInstance();
    AccountDetailView view1 = new AccountDetailView();
    view1.setAccountId("1211-098");
    view1.setAccountType("CHECKING");
    view1.setAccountBalance(new Double(372.63));
    view1.setAccountName("PERFORMANCE");
    view1.setWithdrawls( new Double(100.00) );
    view1.setDeposits( new Double(472.63) );
    cal.set( 1999, 1, 23 );
    view1.setOpeningDate( cal.getTime() );
    accountMap.put( view1.getAccountId(), view1 );

    AccountDetailView view2 = new AccountDetailView();
    view2.setAccountId("389-341");
    view2.setAccountType("SAVINGS");
    view2.setAccountBalance(new Double(1372.63));
    view2.setAccountName("REGULAR");
    view2.setWithdrawls( new Double(20.00) );
    view2.setDeposits( new Double(1392.63) );
    cal.set( 2000, 5, 3 );
    view2.setOpeningDate( cal.getTime() );
    accountMap.put( view2.getAccountId(), view2 );
    
    AccountDetailView view3 = new AccountDetailView();
    view3.setAccountId("2012-666");
    view3.setAccountType("PENSION FUND");
    view3.setAccountBalance(new Double(5000.00));
    view3.setAccountName("REGULAR");
    view3.setWithdrawls( new Double(3000.00) );
    view3.setDeposits( new Double(8000.00) );
    cal.set( 2012, 5, 18 );
    view3.setOpeningDate( cal.getTime() );
    accountMap.put( view3.getAccountId(), view3 );

  }
}
