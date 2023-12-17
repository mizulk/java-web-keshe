package team.skadi.javaweb;

import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit.jupiter.web.SpringJUnitWebConfig;
import team.skadi.javaweb.mapper.ManagerMapper;
import team.skadi.javaweb.mapper.ReaderMapper;

@SpringJUnitWebConfig
@ContextConfiguration(locations = {"classpath:spring-config.xml"})
public class MainTest {

	@Autowired
	private ManagerMapper managerMapper;

	@Test
	public void testMapper(){
		managerMapper.findManagerByWorkNumber(1111);
	}
}
