package team.skadi.javaweb.service;

import team.skadi.javaweb.pojo.Manager;

public interface ManagerService {
	Manager login(Integer workNumber,String password);
}
