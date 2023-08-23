package com.SpringMVC.config;

import org.springframework.web.servlet.support.AbstractAnnotationConfigDispatcherServletInitializer;

public class DispatcherConfig extends AbstractAnnotationConfigDispatcherServletInitializer{
	@Override
	protected Class<?>[] getRootConfigClasses() {
		// TODO Auto-generated method stub
		return null;
	}
	
	@Override
	protected Class<?>[] getServletConfigClasses() {
		// TODO Auto-generated method stub
		Class<?>[] arr = {MyApplicationContext.class};
		System.out.println("start");
		return arr;
	}
	
	@Override
	protected String[] getServletMappings() {
		// TODO Auto-generated method stub
		String arr[] = {"/"};
		System.out.println("in getservlet");
		return arr;
	}
}
