package etherapp.technologies.validations;

import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;

import etherapp.technologies.models.User;

public class LoginValidator implements Validator {
	
	public boolean supports(Class<?> clazz) {
		return User.class.equals(clazz);
	}
	
	@Override
	public void validate(Object target, Errors errors) {
		User user = (User) target;
		
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "userName", "UserName cannot be empty");
	}


}
