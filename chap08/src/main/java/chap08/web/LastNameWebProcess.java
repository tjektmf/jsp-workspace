package chap08.web;

import javax.servlet.http.HttpServletRequest;

import chap08.database.DataList;
import chap08.servlet.WebProcess;

public class LastNameWebProcess implements WebProcess{
	
	DataList dataList = new DataList();

	@Override
	public String process(HttpServletRequest request) {

		String lastName = request.getParameter("last_name");
		request.setAttribute("last_name", dataList.getLastName(lastName));

		System.out.println("겟 : " + request.getAttribute("last_name"));

		return "/WEB-INF/show/lastName.jsp";
	}

}
