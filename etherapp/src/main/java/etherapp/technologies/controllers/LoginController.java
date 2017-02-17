package etherapp.technologies.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


import etherapp.technologies.models.User;
import etherapp.technologies.services.LoginService;
import etherapp.technologies.validations.LoginValidator;

@Controller
public class LoginController {
	
	LoginService loginService = new LoginService();
	LoginValidator loginValidator = new LoginValidator();
	
	@RequestMapping(value = "/welcome", method = RequestMethod.GET)
	public String showLoginPage(@ModelAttribute ("userForm") User user){
		return "login";
	}
	
	@RequestMapping(value = "/home", method = RequestMethod.POST)
	public String showWelcomePage(@ModelAttribute ("userForm") User user, BindingResult result){
		
		loginValidator.validate(user, result);
		
		if(result.hasErrors()){
			return"login";			
		}
		
		if(!loginService.authenticateUser(user)){
			return "login";
		}
		
		return "welcome";
	}
	
	

}
