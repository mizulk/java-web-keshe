package team.skadi.javaweb.mapper;

import org.apache.ibatis.annotations.*;
import team.skadi.javaweb.pojo.Book;

import java.util.List;

@Mapper
public interface BookMapper {
	@Select("SELECT * FROM books;")
	List<Book> selectAll();

	List<Book> page(Book book);

	void updateBook(Book book);
}
