package team.skadi.javaweb.controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@RestController
public class LoginController {

	@RequestMapping("/reader-login")
	public String readerLogin(String account, String password) throws IOException {
		if (account.equals("123456")){
			return "ok";
		}
		return account + password;
	}
}
