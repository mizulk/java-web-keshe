package team.skadi.javaweb.pojo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.time.LocalDateTime;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class Order {
	private Integer id;
	private Integer readerId;
	private Integer bookId;
	private Integer amount;
	private Double price;
	private LocalDateTime orderTime;
}
