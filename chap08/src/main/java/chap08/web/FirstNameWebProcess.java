package chap08.web;

import javax.servlet.http.HttpServletRequest;

import chap08.database.DataList;
import chap08.servlet.WebProcess;

public class FirstNameWebProcess implements WebProcess {

	DataList dataList = new DataList();

	@Override
	public String process(HttpServletRequest request) {

		String firstName = request.getParameter("first_name");
		request.setAttribute("first_name", dataList.getFirstName(firstName));

		System.out.println("겟 : " + request.getAttribute("first_name"));

		return "/WEB-INF/show/firstName.jsp";
	}
}
