package com.devsuperior.movieflix.exceptions;

import java.util.ArrayList;
import java.util.List;

public class ValidationError extends StandardError {
	private static final long serialVersionUID = -6917313140850265791L;
	
	private List<FieldMessage> errors = new ArrayList<>();
	
	public List<FieldMessage> getErrors() {
		return errors;
	}

	public void addError(String fieldName, String message) {
		errors.add(new FieldMessage(fieldName, message));
	}
}
