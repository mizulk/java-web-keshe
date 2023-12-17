package team.skadi.javaweb.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import team.skadi.javaweb.mapper.BookMapper;
import team.skadi.javaweb.pojo.Book;
import team.skadi.javaweb.service.BookService;

import java.time.LocalDateTime;

@Service
public class BookServiceImpl implements BookService {

	@Autowired
	private BookMapper bookMapper;

	@Override
	public void modifyBook(Book book) {
		book.setUpdateTime(LocalDateTime.now());
		bookMapper.updateBook(book);
	}

	@Override
	public void addNewBook(Book book) {
		book.setCreateTime(LocalDateTime.now());
		bookMapper.insertNewBook(book);
	}
}
