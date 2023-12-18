package team.skadi.javaweb.controller;

import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import team.skadi.javaweb.pojo.Reader;
import team.skadi.javaweb.pojo.Result;
import team.skadi.javaweb.service.ReaderService;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;


@Slf4j
@RestController
public class ReaderController {

	@Autowired
	private ReaderService readerService;

	@RequestMapping("/modifyReader")
	public void modifyReader(
			String account,
			String name,
			String oldPassword,
			String tel,
			String newpassword,
			String confirmpsw,
			String email,
			String notes,
			HttpServletResponse response
	) throws IOException {
		Reader reader = new Reader();
		reader.setAccount(account);
		reader.setName(name);
		reader.setTelephone(tel);
		if (newpassword != null && !newpassword.equals(""))
			reader.setPassword(newpassword);
		reader.setEMail(email);
		reader.setRemark(notes);
		log.debug("Modify reader, new value: {}", reader);
		readerService.modifyReader(reader);
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8;");
		response.getWriter().print("<script>alert('修改成功');window.history.go(-1);</script>");
	}

	@RequestMapping("/getReader")
	public Result getReader(Integer id) {
		Reader user = readerService.getUserById(id);
		if (user == null) {
			return Result.error(404, "没有该id的读者");
		}
		return Result.ok(user);
	}

	@RequestMapping("/getAllReader")
	public void getAllReader(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		List<Reader> readers = readerService.queryAllUser();
		request.setAttribute("readers", readers);
		request.getRequestDispatcher("manageReader.jsp").forward(request, response);
	}

	@RequestMapping("/delReader")
	public Result delReader(Integer id) {
//		boolean b = readerService.delReader(id);
		boolean b = true;
		return b ? Result.ok(null) : Result.error(404, "删除失败");
	}
}
