package chap02.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/formTest")
public class FormTestServlet extends HttpServlet {

	// doGet() : GET 방식을 요청받으면 호출되는 메서드
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// GET 방식의 암묵적인 뜻 : DB에서 꺼낸 데이터를 가져가겠다 get
		System.out.println("GET");
		System.out.println("GET : " + req.getParameter("user-name"));
		System.out.println("GET : " + req.getParameter("user-age"));
		
		resp.getWriter().append("<p>getget</p>");
	}

	// doPost() : POST 방식을 요청받으면 호출되는 메서드
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// POST 방식의 암묵적인 뜻 : 받은 데이터를 DB에 INSERT해라
		System.out.println("POST");
		System.out.println("POST : " + req.getParameter("user-name"));
		System.out.println("POST : " + req.getParameter("user-age"));
		
		resp.getWriter().append("<p>postpost</p>");
	}

	// service() : 방식의 구분없이 요청받으면 호출되는 메서드
	// service 메서드는 받은 요청의 방식에 따라 doGet, doPost를 호출함
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		System.out.println("Service가 호출됨");
		super.service(req, resp); // 이 한 줄의 코드가 원래 서비스의 역할임
		System.out.println(req);
		// form으로 보낸 데이터는 req.getParameter(name)으로 꺼낼 수 있다

		System.out.println(req.getParameter("user-name"));
		System.out.println(req.getParameter("user-age"));
		System.out.println(req.getParameter("user-password"));
		System.out.println(req.getParameter("user-key"));
		System.out.println(req.getParameter("user-color"));

		resp.getWriter().append("<h1>check</h1>");
		// 요청 방식은 요청 객체가 가지고있음
		if (req.getMethod().equals("GET")) {
			doGet(req, resp);
			System.out.println("1");
		} else if (req.getMethod().equals("POST")) {
			doPost(req, resp);
			System.out.println("2");
		}
	}
}
