package team.skadi.javaweb.service;

import team.skadi.javaweb.pojo.MyOrder;
import team.skadi.javaweb.pojo.Order;

import java.util.List;

public interface OrderService {

	void modifyOrder(Order order);

	void addNewOrder(Integer readerId, Integer bookId);

	List<MyOrder> queryOrder(Integer id);
}
