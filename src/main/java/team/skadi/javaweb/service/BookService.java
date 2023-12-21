package team.skadi.javaweb.service;

import team.skadi.javaweb.pojo.Book;

import java.util.List;

public interface BookService {

	boolean modifyBook(Book book);

	void addNewBook(Book book);

	List<Book> queryBooksByType(String bookType);

	List<Book> queryBooksByName(String bookName);

	List<Book> queryPopularBook();

	List<Book> queryAllBook();

	Book queryBookById(Integer bookId);

	boolean delBook(Integer id);
}
