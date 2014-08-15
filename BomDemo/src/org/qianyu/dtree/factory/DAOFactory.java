package org.qianyu.dtree.factory;

import org.qianyu.dtree.dao.ItemDAO;
import org.qianyu.dtree.impl.ItemDAOImpl;

public class DAOFactory {
	public static ItemDAO getItemDAOInstance(){
		return new ItemDAOImpl();
	}
}
