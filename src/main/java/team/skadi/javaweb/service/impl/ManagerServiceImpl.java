package team.skadi.javaweb.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import team.skadi.javaweb.mapper.ManagerMapper;
import team.skadi.javaweb.pojo.Manager;
import team.skadi.javaweb.service.ManagerService;

@Service
public class ManagerServiceImpl implements ManagerService {

	@Autowired
	private ManagerMapper managerMapper;

	@Override
	public Manager login(Integer workNumber, String password) {
		return managerMapper.findManagerByWorkNumberAndPassword(workNumber,password);
	}
}
