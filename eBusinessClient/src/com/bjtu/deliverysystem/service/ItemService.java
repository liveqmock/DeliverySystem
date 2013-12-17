package com.bjtu.deliverysystem.service;

import java.util.List;

import com.bjtu.deliverysystem.model.OrderItem;

public interface ItemService {
    public int saveItem(OrderItem item);
    public List<OrderItem> findItemsByUsername(String user);
    public void modifyItem(OrderItem item);
}
