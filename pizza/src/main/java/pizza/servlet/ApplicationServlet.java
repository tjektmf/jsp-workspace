package pizza.servlet;

import java.io.IOException;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class ApplicationServlet extends HttpServlet {

	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		// web.xml 에서 <url-pattern> / </url-pattern> 을 사용했기 때문에 죄다 여기로 들어옴
		System.out.println(req.getRequestURI());
		System.out.println(req.getRequestURL());
		System.out.println(req.getContextPath());

		// 1. 요청을 받으면 URI를 통해 알맞은 처리로 안내한다
		String cmd = req.getRequestURI().substring(req.getContextPath().length());
		System.out.println("------");
		System.out.println(cmd);

		// 2. 원하는 코드로 처리한 후 뷰 페이지에서 필요한 데이터는 어트리뷰트에 실어 보냄
		if (cmd.equals("/pizza")) {

			// DB에서 데이터를 가져와서 attribute 에 저장
			String snowLarge = req.getParameter("snowlarge");
			String snowMedium = req.getParameter("snowmedium");
			String snowLargeCount = req.getParameter("snowL");
			String snowMediumCount = req.getParameter("snowM");

			String shrimpLarge = req.getParameter("shrimplarge");
			String shrimpMedium = req.getParameter("shrimpmedium");
			String shrimpLargeCount = req.getParameter("shrimpL");
			String shrimpMediumCount = req.getParameter("shrimpM");

			String stakeLarge = req.getParameter("stakelarge");
			String stakeMedium = req.getParameter("stakemedium");
			String stakeLargeCount = req.getParameter("stakeL");
			String stakeMediumCount = req.getParameter("stakeM");

			String bbqLarge = req.getParameter("bbqlarge");
			String bbqMedium = req.getParameter("bbqmedium");
			String bbqLargeCount = req.getParameter("bbqL");
			String bbqMediumCount = req.getParameter("bbqM");

			Map<String, String> resultMap = new HashMap<String, String>();

			if (snowLarge != null && !snowLargeCount.equals("0")) {
				resultMap.put("snowLarge " + snowLargeCount + "판 ",
						" " + Integer.parseInt(snowLargeCount) * 35900 + "원");
			}
			if (snowMedium != null && !snowMediumCount.equals("0")) {
				resultMap.put("snowMedium", snowMediumCount);
			}
			if (shrimpLarge != null && !shrimpLargeCount.equals("0")) {
				resultMap.put("shrimpLarge " + shrimpLargeCount + "판 ",
						" " + Integer.parseInt(shrimpLargeCount) * 37900 + "원");
			}
			if (shrimpMedium != null && !shrimpMediumCount.equals("0")) {
				resultMap.put("shrimpMedium " + shrimpMediumCount + "판 ",
						" " + Integer.parseInt(shrimpMediumCount) * 31000 + "원");
			}

			if (stakeLarge != null && !stakeLargeCount.equals("0")) {
				resultMap.put("stakeLarge " + stakeLargeCount + "판 ",
						" " + Integer.parseInt(stakeLargeCount) * 34900 + "원");
			}
			if (stakeMedium != null && !stakeMediumCount.equals("0")) {
				resultMap.put("stakeMedium " + stakeMediumCount + "판 ",
						" " + Integer.parseInt(stakeMediumCount) * 29000 + "원");
			}

			if (bbqLarge != null && !bbqLargeCount.equals("0")) {
				resultMap.put("bbqLarge " + bbqLargeCount + "판 ", " " + Integer.parseInt(bbqLargeCount) * 34900 + "원");
			}
			if (bbqMedium != null && !bbqMediumCount.equals("0")) {
				resultMap.put("bbqMedium " + bbqMediumCount + "판 ",
						" " + Integer.parseInt(bbqMediumCount) * 29000 + "원");
			}

			req.setAttribute("result", resultMap);

			Set<String> resultSet = new HashSet<>();
			resultSet.add("AA");
			resultSet.add("AB");
			resultSet.add("AC");

			// req.setAttribute("result", resultSet);
			req.getRequestDispatcher("/WEB-INF/pizzaResult/price.jsp").forward(req, resp);

		} else if (cmd.equals("/hihi/h2")) {

		}

		// 3. 포워딩

	}

}
