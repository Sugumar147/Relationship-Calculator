package com.SpringMVC.validator;

import jakarta.validation.ConstraintValidator;
import jakarta.validation.ConstraintValidatorContext;

public class PhoneValidator implements ConstraintValidator<Phone, String> {
    @Override
    public boolean isValid(String value, ConstraintValidatorContext context) {
        System.out.println(value);
        try {
            String[] arr = value.split("-");
            String num = "1234567890";
            if (arr.length != 2 || arr[1].length() != 10) {
                return false;
            }
            for (char ch : arr[1].toCharArray()) {
                if (num.indexOf(ch) == -1) {
                    return false;
                }
            }
        } catch (Exception e) {
            return false;
        }

        return true;
    }
}
