package com.SpringMVC.communicationDTO;

import java.util.logging.Formatter;
import java.util.logging.LogRecord;

public class Phone{
	private String countryCode;
	private String userNumber;
	public String getCountryCode() {
		return countryCode;
	}
	public void setCountryCode(String countryCode) {
		this.countryCode = countryCode;
	}
	public String getUserNumber() {
		return userNumber;
	}
	public void setUserNumber(String userNumber) {
		this.userNumber = userNumber;
	}

}