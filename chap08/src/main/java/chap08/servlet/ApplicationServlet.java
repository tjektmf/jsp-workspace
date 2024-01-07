package chap08.servlet;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import chap08.item.UriParser;
import chap08.web.DepartmentNameWebProcess;
import chap08.web.FirstNameWebProcess;
import chap08.web.LastNameWebProcess;
import chap08.web.SearchWebProcess;

public class ApplicationServlet extends HttpServlet {

	static Map<String, WebProcess> uriMapping = new HashMap<>();

	// static { }
	static {
		// 들어갈 페이지의 주소를 하나씩 전부 넣어줘야함
		uriMapping.put("GET::/", new SearchWebProcess());
		uriMapping.put("GET::/show/", new SearchWebProcess());
		uriMapping.put("POST::/show/firstName", new FirstNameWebProcess());
		uriMapping.put("POST::/show/lastName", new LastNameWebProcess());
		uriMapping.put("POST::/show/departmentName", new DepartmentNameWebProcess());
	}

	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		String cmd = UriParser.getCmd(req);
		System.out.println("1 : " + cmd);
		String page = uriMapping.get(cmd).process(req);
		System.out.println("2 : " + uriMapping.get(cmd).process(req));

		req.getRequestDispatcher(page).forward(req, resp);
	}

}
