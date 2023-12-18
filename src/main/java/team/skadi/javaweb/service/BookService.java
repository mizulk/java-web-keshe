package team.skadi.javaweb.service;

import team.skadi.javaweb.pojo.Book;

import java.util.List;

public interface BookService {

	void modifyBook(Book book);

	void addNewBook(Book book);

	List<Book> queryBooksByType(String bookType);

	List<Book> queryBooksByName(String bookName);

	List<Book> queryPopularBook();

	Book queryBookById(Integer bookId);

}
