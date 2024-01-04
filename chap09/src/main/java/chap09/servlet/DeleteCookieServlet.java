package chap09.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/cookie/delete")
public class DeleteCookieServlet extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		String contextPath = req.getContextPath();
		Cookie[] cookies = req.getCookies();
		if (cookies != null) {

			for (Cookie cookie : cookies) {
				if(cookie.getName().equals("age")) {
					cookie.setPath(contextPath+"/cookie");
					cookie.setMaxAge(0); // 쿠키수명 0초로 만들면 실행 후 바로 쿠키 삭제
					resp.addCookie(cookie);
				} else if(cookie.getName().equals("fav")) {
					cookie.setPath(contextPath);
					cookie.setMaxAge(0);
					resp.addCookie(cookie);
				}
			}
		}
		resp.sendRedirect(contextPath+ "/cookie/index.jsp");
	}

}
