package com.bjtu.deliverysystem.service.impl;

import java.util.List;

import com.bjtu.deliverysystem.dao.ItemDao;
import com.bjtu.deliverysystem.model.OrderItem;
import com.bjtu.deliverysystem.service.ItemService;

public class ItemServiceImpl implements ItemService{
	private ItemDao itemDao;
	
	

	public ItemDao getItemDao() {
		return itemDao;
	}

	public void setItemDao(ItemDao itemDao) {
		this.itemDao = itemDao;
	}

	public List<OrderItem> findItemsById(String user) {
		return itemDao.getItemsByUid(user);
	}

	public int saveItem(OrderItem item) {
		return itemDao.addItem(item);
	}

}
