package team.skadi.javaweb.mapper;

import org.apache.ibatis.annotations.*;
import team.skadi.javaweb.pojo.Order;
import team.skadi.javaweb.pojo.MyOrder;

import java.util.List;

@Mapper
public interface OrderMapper {
	@Select("SELECT * FROM orders;")
	List<Order> selectAll();

	void updateOrder(Order order);

	@Insert("INSERT INTO orders(reader_id, book_id, amount, price,order_time) " +
			"VALUES(#{readerId}, #{bookId}, #{amount}, #{price}, #{orderTime})")
	void insertNewOrder(Order order);

	@Select("SELECT * FROM my_order WHERE reader_id = #{readerId}")
	List<MyOrder> selectMyOrderByReaderId(@Param("readerId") Integer readerId);
}
