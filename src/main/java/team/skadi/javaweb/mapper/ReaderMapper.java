package team.skadi.javaweb.mapper;

import org.apache.ibatis.annotations.*;
import team.skadi.javaweb.pojo.Reader;

import java.util.List;

@Mapper
public interface ReaderMapper {
	@Select("SELECT * FROM readers;")
	List<Reader> selectAll();

	int updateReader(Reader reader);

	@Select("SELECT * FROM readers WHERE `account`=#{account} AND `password`=#{password}")
	Reader selectReaderByAccountAndPassword(@Param("account") String account, @Param("password") String password);

	@Insert("INSERT INTO readers(`account`, `password`, telephone, create_time, update_time)" +
			"VALUES(#{account}, #{password}, #{telephone}, #{createTime}, #{updateTime})")
	int insertNewReader(Reader reader);

	@Insert("INSERT INTO readers(`account`, `password`, `name`, telephone, create_time, update_time, e_mail, remark) " +
			"VALUES(#{account}, #{password}, #{name}, #{telephone}, #{createTime}, #{updateTime}, #{eMail}, #{remark})")
	int addNewReader(Reader reader);

	@Select("SELECT * FROM readers WHERE id = #{id}")
	Reader selectReaderById(@Param("id") Integer id);

	@Select("SELECT * FROM readers WHERE `account` = #{account}")
	Reader selectReaderByAccount(@Param("account") String account);

	@Delete("DELETE FROM readers WHERE id = #{id}")
	int delReaderById(@Param("id") Integer id);
}
