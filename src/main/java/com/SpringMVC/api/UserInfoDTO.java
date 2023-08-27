package com.SpringMVC.api;

import jakarta.validation.constraints.AssertTrue;
import jakarta.validation.constraints.NotNull;
import jakarta.validation.constraints.Size;

public class UserInfoDTO {
	@NotNull()
	@Size(min=3,max=15,message = "* name should be 3 - 15 characters")
	private String yourName;
	@Size(min=3,max=15,message = "* name should be 3 - 15 characters")
	private String crushName;
	@AssertTrue(message = "* Check the tickBox")
	private boolean agree;
	public String getYourName() {
		return yourName;
	}
	public void setYourName(String yourName) {
		this.yourName = yourName;
	}
	public String getCrushName() {
		return crushName;
	}
	public void setCrushName(String crushName) {
		this.crushName = crushName;
	}
	public boolean isAgree() {
		return agree;
	}
	public void setAgree(boolean agree) {
		this.agree = agree;
	}
	
}
