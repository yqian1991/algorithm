package org.qianyu.dtree.dao;

import java.util.List;

import org.qianyu.dtree.pojo.Item;

public interface ItemDAO {
	public void insert(Item item);
	public void delete(int id);
	public void deleteByPlevel(int id);
	public void update(Item item);
	public List<?> queryAll();
	public Item queryById(int id);
	public List<?> queryClevel();
}
