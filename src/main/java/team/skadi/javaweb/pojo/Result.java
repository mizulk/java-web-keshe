package team.skadi.javaweb.pojo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class Result {
	private int code;
	private String msg;
	private Object data;

	public static Result ok(Object data) {
		return new Result(200, "ok", data);
	}

	public static Result error(int code, String errorMsg) {
		return new Result(code, errorMsg, null);
	}
}
