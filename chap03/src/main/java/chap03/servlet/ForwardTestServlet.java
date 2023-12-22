package chap03.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/forward/test/*")
public class ForwardTestServlet extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		// 하나의 서블릿에서 URI를 통해 여러 종류의 요청을 처리하는 것도 가능함
		String uri = req.getRequestURI();
		System.out.println(req.getRequestURI());
		System.out.println(req.getParameter("firstName"));
		System.out.println(req.getParameter("lastName"));

		// 다른 서블릿으로 포워딩 (경로는 Webapp 이하의 경로를 사용)

		// /chap03/forward/test/1이랑 같아야 연결해줌
		if (uri.equals("/chap03/forward/test/1")) {

			// RequestDispatcher : 요청을 분배해줄 수 있는 객체
			RequestDispatcher dispatcher = req.getRequestDispatcher("/forward/page1.jsp");

			// forward : 응답을 마무리하지 않고 다음 페이지에서 처리를 이어나감
			dispatcher.forward(req, resp);
		} else if(uri.equals("/chap03/forward/test/2")) {
			// 이 요청을 보낸 클라이언트에게 이 주소로 다시 요청하라고 응답
			// 경로는 클라이언트 입장에서의 URL 경로를 사용
			// 기본적으로 기존의 데이터는 전달불가능
			// 주소 뒤에 get방식 파라미터를 추가하는 것은 가능, post방식은 불가능함
			resp.sendRedirect("/chap03/forward/page1.jsp?firstName=ds&lastName=go");
		}

	}

}
