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

@WebServlet("/quiz2/register/")
public class RegisterServlet extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		// Servlet에서 application 영역 사용
		ServletContext application = req.getServletContext();
		// Servlet에서 session 영역 사용
		// req.getSession
		// 페이지 영역은 사용 불가능

		// Parameter는 웹에서 받아오므로 무조건 String으로 반환됨
		String id = req.getParameter("id");
		String pw = req.getParameter("pw");

		// parameter의 값이 빈 값인지 체크할 때 null뿐만 아니라 빈 문자도 체크해야함
		// 회원가입에 뭔가 문제가 있으면 다시 index.jsp로 돌려보냄
		// 에러 발생시 return으로 끝내버림 return의 활용이 중요했음
		if (id == null || pw == null || id.equals("") || pw.equals("")) {
			resp.sendRedirect("/chap04/quiz2/index.jsp?error=1");
			return;
		}

		// id 중복 체크
		if (application.getAttribute(id) != null) {
			resp.sendRedirect("/chap04/quiz2/index.jsp?error=1&dup=1");
			return;
		}

		// 비밀번호 정규표현식

		// id를 application 객체에 등록
		Map<String, Object> infoMap = new HashMap<>();
		infoMap.put("pw", pw);
		application.setAttribute(id, infoMap);
		resp.sendRedirect("/chap04/quiz2/index.jsp");

	}
}
