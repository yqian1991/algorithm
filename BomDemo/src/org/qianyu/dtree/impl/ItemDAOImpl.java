package org.qianyu.dtree.impl;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.qianyu.dtree.dao.ItemDAO;
import org.qianyu.dtree.factory.DefaultSessionFactory;
import org.qianyu.dtree.pojo.Item;

public class ItemDAOImpl implements ItemDAO {
	private Session session;
	
	public ItemDAOImpl (){
		this.session=DefaultSessionFactory.getSession();
	}
	public void delete(int id) {
		// TODO Auto-generated method stub
		String hql="DELETE FROM Item AS i WHERE clevel=? ";
		Query q=this.session.createQuery(hql);
		q.setInteger(0, id);
		q.executeUpdate();
		this.session.beginTransaction().commit();
		this.session.close();
	}
	
	public void deleteByPlevel(int id) {
		// TODO Auto-generated method stub
		String hql="DELETE FROM Item AS i WHERE plevel=? ";
		Query q=this.session.createQuery(hql);
		q.setInteger(0, id);
		q.executeUpdate();
		this.session.beginTransaction().commit();
		this.session.close();
	}

	public void insert(Item item) {
		// TODO Auto-generated method stub
		this.session.save(item);
		this.session.beginTransaction().commit();
		this.session.close();
	}

	public List<?> queryAll() {
		// TODO Auto-generated method stub
		List<?> all = null;
		String hql="FROM Item AS i";
		all=this.session.createQuery(hql).list();
		this.session.close();
		return all;
	}

	public Item queryById(int id) {
		Item item = null;
		String hql = "FROM Item  AS i WHERE id=?";
		Query q=this.session.createQuery(hql);
		q.setInteger(0, id);
		List<?> all=q.list();
		if(all.size()>0){
			item=(Item) all.get(0);
		}
		this.session.close();
		return item;
	}

	public void update(Item item) {
		// TODO Auto-generated method stub
		this.session.update(item);
		this.session.beginTransaction().commit();
		this.session.close();
	}
	public List<?> queryClevel() {
		// TODO Auto-generated method stub
		return null;
	}
}
