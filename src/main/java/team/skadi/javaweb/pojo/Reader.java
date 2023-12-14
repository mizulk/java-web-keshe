package team.skadi.javaweb.pojo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.time.LocalDateTime;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class Reader {
	private Integer id;
	private String account;
	private String password;
	private String name;
	private Byte sex;
	private String telephone;
	private LocalDateTime birth;
	private String address;
	private LocalDateTime createTime;
}
