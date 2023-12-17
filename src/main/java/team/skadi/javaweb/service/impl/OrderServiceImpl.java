package team.skadi.javaweb.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import team.skadi.javaweb.mapper.OrderMapper;
import team.skadi.javaweb.pojo.Order;
import team.skadi.javaweb.service.OrderService;

import java.time.LocalDateTime;

@Service
public class OrderServiceImpl implements OrderService {

	@Autowired
	private OrderMapper orderMapper;

	@Override
	public void modifyOrder(Order order) {
		orderMapper.updateOrder(order);
	}

	@Override
	public void addNewOrder(Order order) {
		order.setOrderTime(LocalDateTime.now());
		orderMapper.insertNewOrder(order);
	}
}
