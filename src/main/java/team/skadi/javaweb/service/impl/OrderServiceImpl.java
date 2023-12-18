package team.skadi.javaweb.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import team.skadi.javaweb.mapper.BookMapper;
import team.skadi.javaweb.mapper.OrderMapper;
import team.skadi.javaweb.pojo.Book;
import team.skadi.javaweb.pojo.MyOrder;
import team.skadi.javaweb.pojo.Order;
import team.skadi.javaweb.service.OrderService;

import java.time.LocalDateTime;
import java.util.List;

@Service
public class OrderServiceImpl implements OrderService {

	@Autowired
	private OrderMapper orderMapper;

	@Autowired
	private BookMapper bookMapper;

	@Override
	public void modifyOrder(Order order) {
		orderMapper.updateOrder(order);
	}

	@Override
	public void addNewOrder(Integer readerId, Integer bookId) {
		Book book = bookMapper.selectBookById(bookId);
		Order order = new Order();
		order.setReaderId(readerId);
		order.setBookId(bookId);
		order.setAmount(1);
		order.setPrice(book.getPrice());
		order.setOrderTime(LocalDateTime.now());
		orderMapper.insertNewOrder(order);
	}

	@Override
	public List<MyOrder> queryOrder(Integer id) {
		return orderMapper.selectMyOrderByReaderId(id);
	}
}
