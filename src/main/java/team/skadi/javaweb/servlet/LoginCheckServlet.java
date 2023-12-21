package team.skadi.javaweb.servlet;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "LoginCheckServlet", value = "/LoginCheckServlet")
public class LoginCheckServlet extends HttpServlet{
	@Override
	public void init() throws ServletException {
		super.init();
	}
}
