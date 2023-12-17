package team.skadi.javaweb.service;

import team.skadi.javaweb.pojo.Reader;

public interface ReaderService {
	Reader login(String account, String password);

	void register(Reader reader);

	void modifyReader(Reader reader);
}
