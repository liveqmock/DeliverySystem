package com.bjtu.deliverysystem.dao;

import java.util.List;

import com.bjtu.deliverysystem.model.OrderItem;

public interface ItemDao {
   public int addItem(OrderItem item);
   public List<OrderItem> getItemsByUid(String user);
   public void modifyItem(OrderItem item);
}
