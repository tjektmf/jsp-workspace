package homework.web;

import javax.servlet.http.HttpServletRequest;

import homework.servlet.WebProcess;

public class NewTableFormWebProcess implements WebProcess{
	
	@Override
	public String process(HttpServletRequest request) {
		
		return "/WEB-INF/community/newTableForm.jsp";

	}

}
