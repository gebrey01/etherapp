package etherapp.technologies.services;

import etherapp.technologies.models.User;

public class LoginService {
	
	public boolean authenticateUser(User user){
		
		String userName = user.getUserName();
		String password = user.getPassword();
		
		return userName.equalsIgnoreCase("gebrey01") && password.equals("Password1234%");
	}

}
