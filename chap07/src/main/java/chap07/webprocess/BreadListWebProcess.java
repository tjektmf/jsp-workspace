package chap07.webprocess;

import java.sql.Connection;
import java.sql.SQLException;

import javax.servlet.http.HttpServletRequest;

import chap07.BreadDao;
import chap07.DBConnector;

public class BreadListWebProcess implements WebProcess{
	
	BreadDao breadDao = new BreadDao();

	@Override
	public String process(HttpServletRequest request) {
		// DB에서 꺼낸 후
		
		
		// attribute 에 넣음
		
		request.setAttribute("breads", breadDao.getAll());
		
		return "/WEB-INF/views/bread/list.jsp";
	}
	
}


