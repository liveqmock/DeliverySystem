package com.bjtu.deliverysystem.dao.impl;

import java.util.List;

import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.bjtu.deliverysystem.dao.DispatchSiteDao;
import com.bjtu.deliverysystem.model.DispatchSite;

public class DispatchSiteDaoImpl  extends HibernateDaoSupport implements DispatchSiteDao{
	/*
	 * 添加派送点信息
	 */
	public boolean addDispatchSite(DispatchSite ds){
		boolean addDS = true;
		List list = getHibernateTemplate().find("from DispatchSite ds where ds.NO like ?", ds.getNO());
		if(list.size()>0){
			addDS=false;
		}else{
			getHibernateTemplate().save(ds);	
		}
		return addDS;
	}
	
	/*
	 * 根据派送点级别查看派送点
	 */
	public List viewDispatchSite(int level){
		List list = getHibernateTemplate().find("from DispatchSite ds where ds.level like ?", level);
		int n = list.size();
		DispatchSite site = (DispatchSite)list.get(0);
		System.out.println(site.getName()+" "+site.getAddress());
		System.out.println(n);
		return list;
	}
	
	/*
	 * 查看所有派送点
	 */
	public List getAllSite(){
		List list = getHibernateTemplate().find("from DispatchSite ds ");
		return list;
	}

	/*
	 * 根据派送点编号获取派送点信息
	 */
	public DispatchSite getDispatchSite(String no){
		System.out.println("dao:"+no);
		List list = getHibernateTemplate().find("from DispatchSite ds where ds.NO like ?", no);
		int n = list.size();
		DispatchSite site = (DispatchSite)list.get(0);
		System.out.println("dao:"+no);
		System.out.println("DAO:"+site.getName()+" "+site.getAddress()+n);
		
		return site;
	}
	
	/*
	 * 根据派送点编号删除派送点
	 */
	public boolean deleteDispatchSite(String no) {
		boolean delete = false;
		DispatchSite ds = (DispatchSite)getDispatchSite(no);
		getHibernateTemplate().delete(ds);
		getHibernateTemplate().flush();
		delete = true;
		return delete;
	}

	/*
	 * 更新派送点信息
	 */
	public boolean saveUpdate(DispatchSite ds) {
		//boolean update =false;
		System.out.println(ds.getAddress());
		System.out.println(ds.getId());
		DispatchSite oldds = getDispatchSite(ds.getNO());
		oldds.setAddress(ds.getAddress());
		oldds.setName(ds.getName());
		oldds.setLevel(ds.getLevel());
		getHibernateTemplate().update(oldds);
		getHibernateTemplate().flush();
		return true;
	}
}
