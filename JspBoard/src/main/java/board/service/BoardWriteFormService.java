package board.service;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class BoardWriteFormService implements Service{

	@Override
	public String service(HttpServletRequest request, HttpServletResponse response) {
	
		return "/WEB-INF/views/board/writeForm.jsp";
	}
}
