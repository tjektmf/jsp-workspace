package homework.servlet;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import homework.item.UriParser;
import homework.web.FreeTableWebProcess;
import homework.web.HomeworkWebProcess;
import homework.web.NewTableFormWebProcess;
import homework.web.NewTableWebProcess;
import homework.web.TableListWebProcess;

public class ApplicationServlet extends HttpServlet{
	
	static Map<String, WebProcess> uriMapping = new HashMap<>();
	
	static {
		uriMapping.put("GET::/", new HomeworkWebProcess());
		uriMapping.put("GET::/community/freeTable", new FreeTableWebProcess());
		uriMapping.put("GET::/community/newTable", new NewTableFormWebProcess());
		uriMapping.put("POST::/community/add", new NewTableWebProcess());
		uriMapping.put("GET::/community/tableList", new TableListWebProcess());		
	}
	
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("EUC-KR");
		String cmd = UriParser.getCmd(req);
	//	System.out.println("1 : " + cmd);
		String page = uriMapping.get(cmd).process(req);
	//	System.out.println("2 : " + uriMapping.get(cmd));
	//	System.out.println("page : " + uriMapping.get(cmd).process(req));
		
		req.getRequestDispatcher(page).forward(req, resp);
	}
}
