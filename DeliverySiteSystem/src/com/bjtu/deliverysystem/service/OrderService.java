package com.bjtu.deliverysystem.service;

import java.util.List;

import com.bjtu.deliverysystem.model.Order;

public interface OrderService {
    public int updateOrder(Order order);
    public List<Order> findOrders(int orderstatus);
    public Order findOrderById(int orderId);
}
