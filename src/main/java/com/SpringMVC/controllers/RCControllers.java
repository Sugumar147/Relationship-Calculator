package com.SpringMVC.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.SpringMVC.api.RegisterDTO;
import com.SpringMVC.api.UserInfoDTO;

import jakarta.validation.Valid;

@Controller
public class RCControllers{
	@RequestMapping("/")
	public String test(@ModelAttribute("userInfo") UserInfoDTO userInfo) {
		return "homePage";
	}
	
	@RequestMapping("/result")
	public String result(@Valid @ModelAttribute("userInfo") UserInfoDTO userInfo, BindingResult res) {
		if(res.hasErrors()) {
			return "homePage";
		}
		return "resultPage";
	}
	
	@RequestMapping("/register")
	public String register(@Valid @ModelAttribute("registerInfo") RegisterDTO registerDTO,BindingResult res) {
		if(res.hasErrors()) {
			return "register";
		}
		return "register";
	}
	
	@RequestMapping("registerSuccess")
	public String success(@ModelAttribute("registerInfo") RegisterDTO dto) {
		
		return "registerSuccess";
	}
}
