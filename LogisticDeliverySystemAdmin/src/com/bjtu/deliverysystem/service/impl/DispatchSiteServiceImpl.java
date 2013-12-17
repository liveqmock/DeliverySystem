package com.bjtu.deliverysystem.service.impl;

import java.util.List;

import com.bjtu.deliverysystem.dao.DispatchSiteDao;
import com.bjtu.deliverysystem.model.DispatchSite;
import com.bjtu.deliverysystem.service.DispatchSiteService;

public class DispatchSiteServiceImpl implements DispatchSiteService{
	DispatchSiteDao dsd;
	
	public DispatchSiteDao getDsd() {
		return dsd;
	}

	public void setDsd(DispatchSiteDao dsd) {
		this.dsd = dsd;
	}

	public boolean addDispatchSite(DispatchSite ds){
		boolean addDS = false;
		addDS =dsd.addDispatchSite(ds);
		return addDS;
	}
	
	public List viewDispatchSite(int level){
		List siteList = dsd.viewDispatchSite(level);
		return siteList;
	}
	
	public List getAllSite(){
		List siteList = dsd.getAllSite();
		return siteList;
	}
	
	public boolean deleteDispatchSite(String no){
		boolean delete = false;
		delete = dsd.deleteDispatchSite(no);
		return delete;
	}

	public DispatchSite getDispatchSite(String no) {
		DispatchSite ds = dsd.getDispatchSite(no);
		System.out.println("service:"+no);
		System.out.println("Service:"+ds.getName()+" "+ds.getAddress());
 		return ds;
	}

	public boolean saveUpdate(DispatchSite ds) {
		boolean save = dsd.saveUpdate(ds);
		return save;
	}
}
