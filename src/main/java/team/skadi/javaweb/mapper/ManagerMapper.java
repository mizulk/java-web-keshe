package team.skadi.javaweb.mapper;


import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import team.skadi.javaweb.pojo.Manager;

@Mapper
public interface ManagerMapper {

	@Select("SELECT * FROM managers WHERE work_number = #{workNumber} AND `password` = #{password}")
	Manager findManagerByWorkNumberAndPassword(@Param("workNumber") Integer workNumber, @Param("password") String password);

	@Select("SELECT * FROM managers WHERE work_number = #{workNumber}")
	Manager findManagerByWorkNumber(@Param("workNumber") Integer workNumber);
}
