package team.skadi.javaweb.pojo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.time.LocalDateTime;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class MyOrder {
	private String readerName;
	private Integer orderId;
	private String bookName;
	private Integer bookId;
	private Double bookPrice;
	private LocalDateTime orderTime;
	private Integer orderAmount;
	private Integer readerId;
}
