package etherapp.technologies.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import etherapp.technologies.services.LoginService;

@Controller
public class LoginController {
	
	LoginService loginService = new LoginService();
	
	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String showLoginPage(){		
		return "login";
	}
	
	@RequestMapping(value = "/login", method = RequestMethod.POST)
	public String showWelcomePage(@RequestParam String userName, @RequestParam String password, ModelMap model){
		
		return "welcome";
	}
	
	

}
