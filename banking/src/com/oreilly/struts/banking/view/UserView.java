package com.oreilly.struts.banking.view;

import java.util.Set;
import java.util.HashSet;
/**
 * A value object for that wraps all of the user's security information
 */
public class UserView implements java.io.Serializable {
  private String id;
  private String lastName;
  private String firstName;

  // A unique collection of permission String objects
  private Set permissions = null;

  public UserView(String first, String last) {
    this(first, last, new HashSet());
  }

  public UserView(String first, String last, Set userPermissions) {
    super();
    firstName = first;
    lastName = last;
    permissions = userPermissions;
  }

  public boolean containsPermission(String permissionName) {
    return permissions.contains(permissionName);
  }

  public String getLastName() {
    return lastName;
  }

  public void setLastName(String name) {
    lastName = name;
  }

  public String getFirstName() {
    return firstName;
  }

  public void setFirstName(String name) {
    firstName = name;
  }

  public String getId() {
    return id;
  }

  public void setId(String id) {
    this.id = id;
  }
}