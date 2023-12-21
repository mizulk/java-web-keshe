package team.skadi.javaweb.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import team.skadi.javaweb.mapper.BookMapper;
import team.skadi.javaweb.pojo.Book;
import team.skadi.javaweb.service.BookService;

import java.time.LocalDateTime;
import java.util.List;

@Service
public class BookServiceImpl implements BookService {

	@Autowired
	private BookMapper bookMapper;

	@Override
	public boolean modifyBook(Book book) {
		book.setUpdateTime(LocalDateTime.now());
		return bookMapper.updateBook(book) > 0;
	}

	@Override
	public void addNewBook(Book book) {
		book.setCreateTime(LocalDateTime.now());
		book.setUpdateTime(LocalDateTime.now());
		bookMapper.insertNewBook(book);
	}

	@Override
	public List<Book> queryBooksByType(String bookType) {
		return bookMapper.selectBooksByType(bookType);
	}

	@Override
	public List<Book> queryBooksByName(String bookName) {
		return bookMapper.selectBooksByName(bookName);
	}

	@Override
	public List<Book> queryPopularBook() {
		return bookMapper.selectBooks();
	}

	@Override
	public List<Book> queryAllBook() {
		return bookMapper.selectAll();
	}

	@Override
	public Book queryBookById(Integer bookId) {
		return bookMapper.selectBookById(bookId);
	}

	@Override
	public boolean delBook(Integer id) {
		return bookMapper.delBookById(id) > 0;
	}
}
