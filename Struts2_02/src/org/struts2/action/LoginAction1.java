package org.struts2.action;

import java.util.Map;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class LoginAction1 extends ActionSupport{
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private Map request;
	private Map session;
	private Map application;

	public LoginAction1() {
		request = (Map)ActionContext.getContext().get("request");
		session = ActionContext.getContext().getSession();
		application = ActionContext.getContext().getApplication();
	}
	
	public String execute(){
		request.put("r1", "qianyu r1");
		session.put("s1", "qianyu s1");
		application.put("a1", "qianyu a1");
		return SUCCESS; 
	}
}
