package team.skadi.javaweb.mapper;

import org.apache.ibatis.annotations.*;
import team.skadi.javaweb.pojo.Reader;

import java.util.List;

@Mapper
public interface ReaderMapper {
	@Select("SELECT * FROM readers;")
	List<Reader> selectAll();

	String updateReader(Reader reader);

	@Select("SELECT * FROM readers WHERE `account`=#{account} AND `password`=#{password}")
	Reader selectReaderByAccountAndPassword(@Param("account") String account, @Param("password") String password);

	@Insert("INSERT INTO readers(`account`, `password`, `name`, sex, telephone, birth, address, e_mail, remark)" +
			"VALUES(#{account}, #{password}, #{name}, #{sex}, #{telephone}, #{birth}, #{address}, #{eMail}, #{remark})")
	String insertNewReader();

}
