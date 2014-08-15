package org.qianyu.dtree.factory;

import org.hibernate.Session;
import org.hibernate.cfg.Configuration;

public class DefaultSessionFactory {
	public static Session getSession(){
		Session session=null;
		session=new Configuration().configure().buildSessionFactory().openSession();
		return session;
	}
}
