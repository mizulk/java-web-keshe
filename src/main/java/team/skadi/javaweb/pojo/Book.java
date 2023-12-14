package team.skadi.javaweb.pojo;

import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.AllArgsConstructor;

import java.time.LocalDateTime;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class Book {
	private Integer id;
	private String bookName;
	private String author;
	private String publisher;
	private Double price;
	private String bookType;
	private Integer repertory;
	private LocalDateTime createTime;
	private LocalDateTime updateTime;
}
