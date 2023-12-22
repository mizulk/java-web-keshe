package team.skadi.javaweb.filter;

import lombok.extern.slf4j.Slf4j;
import team.skadi.javaweb.pojo.Manager;
import team.skadi.javaweb.pojo.Reader;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.*;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@Slf4j
public class LoginFilter implements Filter {
	public void init(FilterConfig config) throws ServletException {

	}

	public void destroy() {

	}

	@Override
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws ServletException, IOException {
		HttpServletRequest req = (HttpServletRequest) request;
		HttpServletResponse resp = (HttpServletResponse) response;
		HttpSession session = req.getSession();
		Manager manager = (Manager) session.getAttribute("manager");
		Reader reader = (Reader) session.getAttribute("reader");
		String url = req.getRequestURI();

		String[] endwith = {".js", ".css", ".jpg", ".png", "index.jsp", "error.jsp"};
		String[] contains = {"Login", "Register", "login", "register"};
		boolean flag = true;
		for (String str : endwith) {
			if (url.endsWith(str)) {
				flag = false;
				break;
			}
		}
		for (String str : contains) {
			if (url.contains(str)) {
				flag = false;
				break;
			}
		}
		if (flag) {
			if (reader != null || manager != null) {
				log.debug("Have session to assess {}", url);
				chain.doFilter(request, response);
			} else {
				log.debug("Have no session to assess {}", url);
				resp.sendRedirect("index.jsp");
			}
		} else {
			log.debug("static resource: {}", url);
			chain.doFilter(request, response);
		}

	}
}
