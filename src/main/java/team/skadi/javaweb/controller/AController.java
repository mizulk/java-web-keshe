package team.skadi.javaweb.controller;


import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class AController {

	@RequestMapping("/a")
	public String s(){
		return "fffff";
	}
}
