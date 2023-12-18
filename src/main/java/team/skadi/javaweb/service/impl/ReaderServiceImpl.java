package team.skadi.javaweb.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import team.skadi.javaweb.mapper.ReaderMapper;
import team.skadi.javaweb.pojo.Reader;
import team.skadi.javaweb.service.ReaderService;

import java.time.LocalDateTime;
import java.util.List;

@Service
public class ReaderServiceImpl implements ReaderService {

	@Autowired
	private ReaderMapper readerMapper;

	@Override
	public Reader login(String account, String password) {
		return readerMapper.selectReaderByAccountAndPassword(account, password);
	}

	@Override
	public boolean register(Reader reader) {
		reader.setCreateTime(LocalDateTime.now());
		reader.setUpdateTime(LocalDateTime.now());
		return readerMapper.insertNewReader(reader) > 0;
	}

	@Override
	public void modifyReader(Reader reader) {
		reader.setUpdateTime(LocalDateTime.now());
		readerMapper.updateReader(reader);
	}

	@Override
	public Reader getUserById(Integer id) {
		return readerMapper.selectReaderById(id);
	}

	@Override
	public List<Reader> queryAllUser() {
		return readerMapper.selectAll();
	}

	@Override
	public boolean delReader(Integer id) {
		return readerMapper.delReaderById(id) > 0;
	}


}
