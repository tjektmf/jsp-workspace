package chap08.web;

import javax.servlet.http.HttpServletRequest;

import chap08.database.DataList;
import chap08.servlet.WebProcess;

public class DepartmentNameWebProcess implements WebProcess{
	
	DataList dataList = new DataList();

	@Override
	public String process(HttpServletRequest request) {

		String depName = request.getParameter("department_name");
		request.setAttribute("department_name", dataList.getDepName(depName));

		System.out.println("겟 : " + request.getAttribute("department_name"));

		return "/WEB-INF/show/departmentName.jsp";
	}

}
