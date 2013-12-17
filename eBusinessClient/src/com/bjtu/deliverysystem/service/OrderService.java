package com.bjtu.deliverysystem.service;

import java.util.List;

import com.bjtu.deliverysystem.model.Order;
import com.bjtu.deliverysystem.model.User;

public interface OrderService {
    public int addOrder(Order order);
    public List<Order> findOrderByUser(User u);
}
