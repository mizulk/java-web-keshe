package team.skadi.javaweb.service;

import team.skadi.javaweb.pojo.Order;

public interface OrderService {

	void modifyOrder(Order order);

	void addNewOrder(Order order);
}
