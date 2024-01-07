package homework.web;

import javax.servlet.http.HttpServletRequest;

import homework.servlet.WebProcess;

public class HomeworkWebProcess implements WebProcess{
	@Override
	public String process(HttpServletRequest request) {
		
		return "/homework.jsp";
	}

}
