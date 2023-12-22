package team.skadi.javaweb.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import team.skadi.javaweb.pojo.Manager;
import team.skadi.javaweb.pojo.Reader;
import team.skadi.javaweb.service.ManagerService;
import team.skadi.javaweb.service.ReaderService;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@RestController
public class LoginController {

	@Autowired
	private ReaderService readerService;

	@Autowired
	private ManagerService managerService;

	@RequestMapping("/readerLogin")
	public void readerLogin(String account, String password, HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
		Reader reader = readerService.login(account, password);
		if (reader == null) {
			request.setAttribute("msg", "密码或账号错误");
			request.getRequestDispatcher("error.jsp").forward(request, response);
			return;
		}
		HttpSession session = request.getSession();
		session.setAttribute("reader", reader);
		session.setMaxInactiveInterval(120);// 2h
		request.getRequestDispatcher("readerIndex").forward(request, response);
	}

	@RequestMapping("/readerRegister")
	public void readerRegister(String account, String tel, String password, String m, HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
		Reader reader = new Reader();
		reader.setAccount(account);
		reader.setTelephone(tel);
		reader.setPassword(password);
		if (readerService.register(reader)) {
			response.setHeader("refresh", "3;login.jsp");
			response.getWriter().print("<script>alert('success')</script>");
		} else {
			request.setAttribute("msg", "注册失败");
			request.getRequestDispatcher("error.jsp").forward(request, response);
		}
	}

	@RequestMapping("/managerLogin")
	public void managerLogin(String account, String password, HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Manager manager = managerService.login(Integer.parseInt(account), password);
		if (manager == null) {
			request.setAttribute("msg", "密码或账号错误,请检查");
			request.getRequestDispatcher("error.jsp").forward(request, response);
			return;
		}
		HttpSession session = request.getSession();
		session.setAttribute("manager", manager);
		session.setMaxInactiveInterval(120);// 2h
		request.getRequestDispatcher("managerIndex.jsp").forward(request, response);
	}

	@RequestMapping("/readerLogout")
	public void readerLogout(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.getSession().invalidate();
		request.getRequestDispatcher("index.jsp").forward(request, response);
	}

	@RequestMapping("/managerLogout")
	public void managerLogout(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.getSession().invalidate();
		request.getRequestDispatcher("index.jsp").forward(request, response);
	}
}
