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
	public Result modifyReader(
			String account,
			String name,
			String oldPassword,
			String tel,
			String newpassword,
			String confirmpsw,
			String email,
			String notes,
			HttpServletRequest request
	) {

		Reader reader1 = readerService.getUserByAccount(account);

		if (request.getSession().getAttribute("reader") instanceof Reader
				&& !reader1.getPassword().equals(oldPassword))
			return Result.error(400, "密码错误");

		reader1.setName(name);
		reader1.setTelephone(tel);
		if (newpassword != null && !newpassword.equals("")) {
			reader1.setPassword(newpassword);
		}
		reader1.setEMail(email);
		reader1.setRemark(notes);
		log.debug("Modify reader, new value: {}", reader1);
		boolean b = readerService.modifyReader(reader1);
		return b ? Result.ok(reader1) : Result.error(410, "error");
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
		return readerService.delReader(id) ? Result.ok(null) : Result.error(404, "删除失败");
	}

	@RequestMapping("/addReader")
	public Result addReader(
			String account,
			String password,
			String name,
			String tel,
			String email,
			String notes
	) {
		Reader reader = new Reader();
		reader.setAccount(account);
		reader.setPassword(password);
		reader.setName(name);
		reader.setTelephone(tel);
		reader.setEMail(email);
		reader.setRemark(notes);

		return readerService.addReader(reader) ? Result.ok(null) : Result.error(500, "error");
	}
}
