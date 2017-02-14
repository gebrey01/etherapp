package etherapp.technologies.validations;

import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;

import etherapp.technologies.models.User;

public class LoginValidator implements Validator {
	
	public boolean supports(Class<?> clazz) {
		return etherapp.technologies.models.User.class.equals(clazz);
	}
	
	@Override
	public void validate(Object target, Errors errors) {
		User user = (User) target;
		
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "userName", "field.required", "Required field");
		if ( ! errors.hasFieldErrors("userName")) {
			if (user.getUserName().isEmpty())
				errors.rejectValue("userName", "not_empty", "Username is required.");
		}	
	}

}
