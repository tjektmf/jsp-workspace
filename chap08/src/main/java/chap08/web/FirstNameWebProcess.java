package chap08.web;

import javax.servlet.http.HttpServletRequest;

import chap08.servlet.WebProcess;

public class FirstNameWebProcess implements WebProcess{

	@Override
	public String process(HttpServletRequest request) {
		System.out.println("들렀다감");
		System.out.println(request.getMethod());
		
		return "/WEB-INF/show/firstName.jsp";
	}
}
