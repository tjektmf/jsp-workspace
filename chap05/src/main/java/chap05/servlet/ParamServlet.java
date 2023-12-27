package chap05.servlet;

import java.io.IOException;

import javax.servlet.ServletConfig;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class ParamServlet extends HttpServlet {

	// init() : 이 서블릿이 최초로 실행될 때 호출되는 메서드
	@Override
	public void init(ServletConfig config) throws ServletException {
		System.out.println("이닛 실행");
		System.out.println("web.xml에서 받아온 초기화 파라미터");
		System.out.println(config.getInitParameter("dsds"));
		System.out.println(config.getInitParameter("sdsd"));
		System.out.println(config.getInitParameter("driverName"));
		System.out.println(config.getInitParameter("maybeNull"));
	}

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		ServletContext application = req.getServletContext();
		System.out.println("두갯 실행");
		System.out.println("전역 초기화 파라미터");
		System.out.println(application.getInitParameter("version"));

	}

	@Override
	public void destroy() {
		System.out.println("디스뜨로이");
	}
}
