package com.SpringMVC.Formatter;

import java.text.ParseException;
import java.util.Locale;

import org.springframework.format.Formatter;

import com.SpringMVC.communicationDTO.Phone;

public class PhoneFormatter implements Formatter<Phone>{

	@Override
	public String print(Phone object, Locale locale) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Phone parse(String text, Locale locale) throws ParseException {
		Phone p = new Phone();
		try {
			String arr[] = text.split("-");
			p.setCountryCode(arr[0]);
			p.setUserNumber(arr[1]);
			
		} catch (Exception e) {
			// TODO: handle exception
			return p;
		}
		return p;
	}

}
