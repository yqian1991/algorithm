package org.qianyu.dtree.pojo;

public class Item {
	private int clevel;
	private int plevel;
	private String name;
	private String property;
	private int outsource ;
	private int outadd;
	private int produce ;
	
	public int getOutsource() {
		return outsource;
	}
	public void setOutsource(int outsource) {
		this.outsource = outsource;
	}
	public int getOutadd() {
		return outadd;
	}
	public void setOutadd(int outadd) {
		this.outadd = outadd;
	}
	public int getProduce() {
		return produce;
	}
	public void setProduce(int produce) {
		this.produce = produce;
	}
	public int getClevel() {
		return clevel;
	}
	public void setClevel(int clevel) {
		this.clevel = clevel;
	}
	public int getPlevel() {
		return plevel;
	}
	public void setPlevel(int plevel) {
		this.plevel = plevel;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getProperty() {
		return property;
	}
	public void setProperty(String property) {
		this.property = property;
	}
}
