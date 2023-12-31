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

	int updateBook(Book book);

	@Insert("INSERT INTO books(book_name, author, publisher, price, book_type, `path`, create_time, update_time) " +
			"VALUES(#{bookName}, #{author}, #{publisher}, #{price}, #{bookType}, #{path}, #{createTime}, #{updateTime})")
	void insertNewBook(Book book);

	@Select("SELECT * FROM books WHERE book_type = #{bookType}")
	List<Book> selectBooksByType(@Param("bookType") String bookType);

	@Select("SELECT * FROM books WHERE book_name LIKE CONCAT('%', #{bookName}, '%')")
	List<Book> selectBooksByName(@Param("bookName") String bookName);

	@Select("SELECT * FROM books ORDER BY bought DESC limit 10;")
	List<Book> selectBooks();

	@Select("SELECT * FROM books WHERE id = #{id}")
	Book selectBookById(@Param("id") Integer id);


	@Delete("DELETE FROM books WHERE id = #{id}")
	int delBookById(@Param("id") Integer id);
}
