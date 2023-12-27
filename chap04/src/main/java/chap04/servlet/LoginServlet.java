package chap04.servlet;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/quiz2/login/")
public class LoginServlet extends HttpServlet {

	// loginForm.jsp에서 post 타입으로 요청을 보냄 
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// JSP 에서 자동으로 만들어져 있는 객체 (JSP 내장객체)
		// 서블릿에서는 application, session 객체를 직접 만들어야함
		ServletContext application = req.getServletContext();
		HttpSession session = req.getSession();

		String id = req.getParameter("id");
		String pw = req.getParameter("pw");

		Map<String, Object> infoMap = (Map) application.getAttribute(id);
		String pw2 = (String)(infoMap).get("pw");

		// id가 존재하고 id의 비밀번호가 맞으면 로그인
		if (pw2 != null && pw.equals(pw2)) {

			// 어트리뷰트는 Context 내부에서 활용하는 값이기 때문에 모든 자바 객체 타입을 값으로 활용 가능함
			// map list set int boolean 그냥 모든 타입이 가능함
			infoMap.put("login", "ok");
			session.setAttribute("info", infoMap);

			// 로그인 성공하면 메모페이지로 바로 보내버림
			resp.sendRedirect("/chap04/quiz2/memo/main");
		} else {
			resp.sendRedirect("/chap04/quiz2/index.jsp");
		}
	}

}
