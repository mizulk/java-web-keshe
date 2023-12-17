package team.skadi.javaweb.mapper;

import org.apache.ibatis.annotations.*;
import team.skadi.javaweb.pojo.Book;
import team.skadi.javaweb.pojo.Order;

import java.util.List;

@Mapper
public interface BookMapper {
	@Select("SELECT * FROM books;")
	List<Book> selectAll();

	List<Book> page(Book book);

	void updateBook(Book book);

	@Insert("INSERT INTO books(book_name, author, publisher, price, book_type, repertory) " +
			"VALUES(#{bookName}, #{author}, #{publisher}, #{price}, #{bookType}, #{repertory})")
	void insertNewBook(Book book);
}
