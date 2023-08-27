package com.SpringMVC.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.SpringMVC.api.RegisterDTO;
import com.SpringMVC.api.UserInfoDTO;

import jakarta.validation.Valid;

@Controller
public class RCControllers{
	@RequestMapping("/")
	public String test(@Valid @ModelAttribute("userInfo") UserInfoDTO userInfo, BindingResult res) {
		if(res.hasErrors()) {
			return "homePage";
		}
		return "homePage";
	}
	
	@RequestMapping("/result")
	public String result(@Valid @ModelAttribute("userInfo") UserInfoDTO userInfo,BindingResult res) {
		if(res.hasErrors()) {
			return "homePage";
		}
		return "resultPage";
	}
	
	@RequestMapping("/register")
	public String register(@Valid @ModelAttribute("registerInfo") RegisterDTO registerDTO, BindingResult res) {
	    return "register";
	}


	
	@RequestMapping("registerSuccess")
	public String success(@Valid @ModelAttribute("registerInfo") RegisterDTO registerInfo,BindingResult res) {
		if(res.hasErrors()) {
			return "register";
		}
		return "registerSuccess";
	}
}
