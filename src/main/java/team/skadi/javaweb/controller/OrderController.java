package team.skadi.javaweb.controller;

import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import team.skadi.javaweb.pojo.Book;
import team.skadi.javaweb.pojo.MyOrder;
import team.skadi.javaweb.pojo.Reader;
import team.skadi.javaweb.pojo.Result;
import team.skadi.javaweb.service.BookService;
import team.skadi.javaweb.service.OrderService;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@Slf4j
@RestController
public class OrderController {

	@Autowired
	private OrderService orderService;

	@Autowired
	private BookService bookService;

	@GetMapping("/readerOrder")
	public void getReaderOrder(Integer id, HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		log.debug("Get orders by reader id, id: {}", id);
		Reader reader = (Reader) request.getSession().getAttribute("reader");
		List<MyOrder> orders = orderService.queryOrder(reader.getId());
		request.setAttribute("orders", orders);
		request.getRequestDispatcher("readerOrder.jsp").forward(request, response);
	}

	@RequestMapping("/addOrder")
	public Result addOrder(Integer readerId, Integer bookId) {
		log.debug("Add order, readerId: {}, bookId: {}", readerId, bookId);
		orderService.addNewOrder(readerId, bookId);
		Book book = bookService.queryBookById(bookId);
		book.setBought(book.getBought() + 1);
		bookService.modifyBook(book);
		return Result.ok(null);
	}
}
