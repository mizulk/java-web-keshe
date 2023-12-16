package team.skadi.javaweb.mapper;

import org.apache.ibatis.annotations.*;
import team.skadi.javaweb.pojo.Order;

import java.util.List;

@Mapper
public interface OrderMapper {
	@Select("SELECT * FROM orders;")
	List<Order> selectAll();

	void updateOrder(Order order);
}
