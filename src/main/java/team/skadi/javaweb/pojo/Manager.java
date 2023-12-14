package team.skadi.javaweb.pojo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class Manager {
	private Integer id;
	private Integer workNumber;
	private String password;
	private String name;
}
