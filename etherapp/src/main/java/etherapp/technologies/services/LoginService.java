package etherapp.technologies.services;

import etherapp.technologies.models.User;

public class LoginService {
	
	public boolean validateUser(User user){
		
		String userName = user.getUserName();
		String password = user.getPassword();
		
		return userName.equalsIgnoreCase("gebrey01") && password.equals("Password1234%");
	}

}
