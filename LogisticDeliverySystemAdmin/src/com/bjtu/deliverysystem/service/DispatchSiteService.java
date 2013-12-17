package com.bjtu.deliverysystem.service;

import java.util.List;
import com.bjtu.deliverysystem.model.DispatchSite;

public interface DispatchSiteService {
	public boolean addDispatchSite(DispatchSite ds);
	public List viewDispatchSite(int level);
	public List getAllSite();
	public boolean deleteDispatchSite(String no);
	public DispatchSite getDispatchSite(String no);
	public boolean saveUpdate(DispatchSite ds);
}
