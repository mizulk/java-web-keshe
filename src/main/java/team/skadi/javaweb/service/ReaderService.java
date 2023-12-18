package team.skadi.javaweb.service;

import team.skadi.javaweb.pojo.Reader;

import java.util.List;

public interface ReaderService {
	Reader login(String account, String password);

	boolean register(Reader reader);

	void modifyReader(Reader reader);

	Reader getUserById(Integer id);

	List<Reader> queryAllUser();

	boolean delReader(Integer id);
}
