package team.skadi.javaweb.controller;

import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import team.skadi.javaweb.pojo.Book;
import team.skadi.javaweb.pojo.Result;
import team.skadi.javaweb.service.BookService;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@Slf4j
@RestController
public class BookController {

	@Autowired
	private BookService bookService;

	@RequestMapping("/bookType")
	public void getBooksByType(String type, HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		log.debug("Find books by book type, param: {}", type);
		List<Book> books = bookService.queryBooksByType(type);
		request.setAttribute("type", type);
		request.setAttribute("books", books);
		request.getRequestDispatcher("bookKinds.jsp").forward(request, response);
	}

	@RequestMapping("/readerIndex")
	public void getPopularBook(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		log.debug("Get popular book");
		List<Book> books = bookService.queryPopularBook();
		request.setAttribute("books", books);
		request.getRequestDispatcher("readerIndex.jsp").forward(request, response);
	}

	@RequestMapping("/book")
	public Result getBook(Integer bookId) {
		log.debug("Get book, id: {}", bookId);
		Book book = bookService.queryBookById(bookId);
		if (book == null) {
			return Result.error(404, "not found");
		}
		return Result.ok(book);
	}

	@RequestMapping("/searchBook")
	public void searchBook(String search, HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		List<Book> books = bookService.queryBooksByName(search);
		request.setAttribute("books", books);
		request.getRequestDispatcher("bookSearch.jsp").forward(request, response);
	}

	@RequestMapping("/getAllBook")
	public void getAllBook(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		List<Book> books = bookService.queryAllBook();
		request.setAttribute("books", books);
		request.getRequestDispatcher("manageBook.jsp").forward(request, response);
	}

	@RequestMapping("/delBook")
	public Result delBook(Integer id) {
		return bookService.delBook(id) ? Result.ok(null) : Result.error(404, "删除失败");
	}

	@RequestMapping("/addBook")
	public Result addBook(
			String bookName,
			String publisher,
			String author,
			Double price,
			String path,
			String bookType
	) {
		Book book = new Book();
		book.setBookName(bookName);
		book.setPublisher(publisher);
		book.setAuthor(author);
		book.setPrice(price);
		book.setPath(path);
		book.setBookType(bookType);

		bookService.addNewBook(book);
		return Result.ok(book);
	}

	@RequestMapping("/modifyBook")
	public Result modifyBook(
			Integer id,
			String bookName,
			String publisher,
			String author,
			Double price,
			String path,
			String bookType
	) {
		Book book = bookService.queryBookById(id);
		book.setBookName(bookName);
		book.setPublisher(publisher);
		book.setAuthor(author);
		book.setPrice(price);
		book.setPath(path);
		book.setBookType(bookType);
		return bookService.modifyBook(book) ? Result.ok(book) : Result.error(410, "error");
	}
}
