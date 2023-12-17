package team.skadi.javaweb.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import team.skadi.javaweb.mapper.ReaderMapper;
import team.skadi.javaweb.pojo.Reader;
import team.skadi.javaweb.service.ReaderService;

import java.time.LocalDateTime;

@Service
public class ReaderServiceImpl implements ReaderService {

	@Autowired
	private ReaderMapper readerMapper;

	@Override
	public Reader login(String account, String password) {
		return readerMapper.selectReaderByAccountAndPassword(account, password);
	}

	@Override
	public void register(Reader reader) {
		reader.setCreateTime(LocalDateTime.now());
		readerMapper.insertNewReader();
	}

	@Override
	public void modifyReader(Reader reader) {
		reader.setUpdateTime(LocalDateTime.now());
		readerMapper.updateReader(reader);
	}


}
