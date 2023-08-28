package com.SpringMVC.CustomEditors;

import java.beans.PropertyEditorSupport;

public class CustomEditor extends PropertyEditorSupport {
	@Override
	public void setAsText(String text) throws IllegalArgumentException {
		String newString = text.toUpperCase();
		setValue(newString);
	}
}
