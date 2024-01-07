package homework.web;


import javax.servlet.http.HttpServletRequest;

import homework.item.FreeDAO;
import homework.servlet.WebProcess;

public class TableListWebProcess implements WebProcess {
	FreeDAO freeDAO = new FreeDAO();

	public String process(HttpServletRequest request) {
		
		request.setAttribute("tableList", freeDAO.getList());
		return "/WEB-INF/community/tableList.jsp";
	}

}
