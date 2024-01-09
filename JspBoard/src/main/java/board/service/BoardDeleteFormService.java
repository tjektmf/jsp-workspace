package board.service;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class BoardDeleteFormService implements Service{

	@Override
	public String service(HttpServletRequest request, HttpServletResponse response) {
		System.out.println(request.getParameter("board_id"));
		
		return "/WEB-INF/views/board/realDel.jsp";
	}
}
