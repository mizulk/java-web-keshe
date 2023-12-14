package team.skadi.javaweb.mapper;

import org.apache.ibatis.annotations.Select;
import team.skadi.javaweb.pojo.Reader;

import java.util.List;

public interface ReaderMapper {
	@Select("SELECT * FROM readers;")
	List<Reader> selectAll();

	void updateReader(Reader reader);
}