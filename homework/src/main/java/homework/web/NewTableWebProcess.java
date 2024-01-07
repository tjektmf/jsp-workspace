package homework.web;

import javax.servlet.http.HttpServletRequest;

import homework.item.FreeDAO;
import homework.servlet.WebProcess;

public class NewTableWebProcess implements WebProcess {

	FreeDAO freeDAO = new FreeDAO();

	@Override
	public String process(HttpServletRequest request) {

		String free_id = request.getParameter("free_id");
		String free_pw = request.getParameter("free_pw");
		String free_body = request.getParameter("free_body");

		if (free_id == null || free_pw == null || free_body == null || free_id.equals("") || free_pw.equals("")
				|| free_body.equals("")) {
			System.out.println("값이 없어");
			return "/WEB-INF/community/freeTable.jsp";
		} else {
			System.out.println("값이 있어");
			int free_pw2 = Integer.parseInt(free_pw);
			freeDAO.getWriting(free_id, free_pw2, free_body);
			request.setAttribute("tableList", freeDAO.getList());
			return "/WEB-INF/community/tableList.jsp";
		}
	}

}
