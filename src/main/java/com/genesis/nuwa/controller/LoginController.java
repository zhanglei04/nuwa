package com.genesis.nuwa.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
@RequestMapping("rest/login")
public class LoginController {
	@RequestMapping(method = RequestMethod.GET)
	public String login() {
		return "login.jsp";
	}

	@RequestMapping(method = RequestMethod.POST, value = "/checkLoginUser")
	public String checkLoginUser() {

		return "main.jsp";

	}

	@RequestMapping(method = RequestMethod.GET, value = "/getTableDataTest")
	@ResponseBody
	public String getTableDataTest() {
		return "{\"total\":800,\"rows\":[{\"id\":0,\"name\":\"Item0\",\"price\":\"$0\"},{\"id\":1,\"name\":\"Item1\",\"price\":\"$1\"},{\"id\":2,\"name\":\"Item2\",\"price\":\"$2\"},{\"id\":3,\"name\":\"Item3\",\"price\":\"$3\"},{\"id\":4,\"name\":\"Item4\",\"price\":\"$4\"},{\"id\":5,\"name\":\"Item5\",\"price\":\"$5\"},{\"id\":6,\"name\":\"Item6\",\"price\":\"$6\"},{\"id\":7,\"name\":\"Item7\",\"price\":\"$7\"},{\"id\":8,\"name\":\"Item8\",\"price\":\"$8\"},{\"id\":9,\"name\":\"Item9\",\"price\":\"$9\"}]}";
	}

	@RequestMapping(method = RequestMethod.GET, value = "/export")
	public String export() {
		return "nuwa/export.html";
	}

}
