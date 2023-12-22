package team.skadi.javaweb.filter;

import lombok.extern.slf4j.Slf4j;

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
		String url = req.getRequestURI();

		if (url.endsWith("/")) {
			log.debug("index.jsp, doFilter");
			chain.doFilter(request, response);
			return;
		}

		if (url.endsWith("readerRegister") || url.endsWith("readerLogin") || url.endsWith("managerLogin")) {
			log.debug("Controller login register method, doFilter");
			chain.doFilter(request, response);
			return;
		}

		if (url.endsWith("login.jsp") || url.endsWith("register.jsp")) {
			log.debug("login.jsp or register.jsp, doFilter");
			chain.doFilter(request, response);
			return;
		} else {
			if (session.getAttribute("reader") != null || session.getAttribute("manager") != null) {
				log.debug("Have session doFilter");
				chain.doFilter(request, response);
			} else {
				log.debug("Have no session redirect to login.jsp");
				resp.sendRedirect("login.jsp");
				return;
			}
		} 
		chain.doFilter(request, response);
	}
}
