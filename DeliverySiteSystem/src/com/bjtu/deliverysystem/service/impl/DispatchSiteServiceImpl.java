package com.bjtu.deliverysystem.service.impl;

import com.bjtu.deliverysystem.dao.DispatchSiteDao;
import com.bjtu.deliverysystem.model.DispatchSite;
import com.bjtu.deliverysystem.service.DispatchSiteService;

public class DispatchSiteServiceImpl implements DispatchSiteService{
	private DispatchSiteDao dispatchSiteDao;
    
	public DispatchSiteDao getDispatchSiteDao() {
		return dispatchSiteDao;
	}

	public void setDispatchSiteDao(DispatchSiteDao dispatchSiteDao) {
		this.dispatchSiteDao = dispatchSiteDao;
	}


	public DispatchSite getDispatchSite(String name) {
		return dispatchSiteDao.getDeliverySiteByName(name);
	}

}
