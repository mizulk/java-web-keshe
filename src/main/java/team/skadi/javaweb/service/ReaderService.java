package team.skadi.javaweb.service;

import team.skadi.javaweb.pojo.Reader;

import java.util.List;

public interface ReaderService {
	Reader login(String account, String password);

	boolean register(Reader reader);

	boolean modifyReader(Reader reader);

	Reader getUserById(Integer id);

	Reader getUserByAccount(String account);

	List<Reader> queryAllUser();

	boolean delReader(Integer id);

	boolean addReader(Reader reader);
}
