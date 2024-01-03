package chap08.web;

import javax.servlet.http.HttpServletRequest;

import chap08.servlet.WebProcess;

public class LastNameWebProcess implements WebProcess{
	
	@Override
	public String process(HttpServletRequest request) {
		
		return "/WEB-INF/show/lastName.jsp";
	}

}
