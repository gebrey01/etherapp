package etherapp.technologies.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


import etherapp.technologies.models.User;
import etherapp.technologies.services.LoginService;

@Controller
public class LoginController {
	
	LoginService loginService = new LoginService();
	
	@RequestMapping(value = "/welcome", method = RequestMethod.GET)
	public String showLoginPage(ModelMap model){
		User userForm = new User();
		model.put("userForm", userForm);
		return "login";
	}
	
	@RequestMapping(value = "/home", method = RequestMethod.POST)
	public String showWelcomePage(@ModelAttribute("userForm") User user){
		
		if(!loginService.validateUser(user)){
			return "login";
		}
		
		return "welcome";
	}
	
	

}
