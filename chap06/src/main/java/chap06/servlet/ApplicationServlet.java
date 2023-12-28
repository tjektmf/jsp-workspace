package chap06.servlet;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import chap06.model.PizzaOrder;

/* 
 	# Front Controller Design Pattern
	
	- 모든 요청을 하나의 서블릿에서 받고 URI에 따라 알맞은 페이지로 포워딩
	
	- 요청 > URI 식별 > 처리 > 포워딩 > 뷰 생성 순서로 모든 요청을 처리할 수 있음
	
	
	
 */
public class ApplicationServlet extends HttpServlet {

	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		ServletContext application = req.getServletContext();
		HttpSession session = req.getSession();

		// web.xml 에서 <url-pattern> / </url-pattern> 을 사용했기 때문에 죄다 여기로 들어옴
		System.out.println(req.getRequestURI());
		System.out.println(req.getRequestURL());
		System.out.println(req.getContextPath());

		// 1. 요청을 받으면 URI를 통해 알맞은 처리로 안내한다
		String cmd = req.getRequestURI().substring(req.getContextPath().length());
		System.out.println("------");
		System.out.println(cmd);

		// 2. 원하는 코드로 처리한 후 뷰 페이지에서 필요한 데이터는 어트리뷰트에 실어 보냄
		if (cmd.equals("/hello")) {

			// DB에서 데이터를 가져와서 attribute 에 저장
			String userName = req.getParameter("userName");

			Set<String> resultSet = new HashSet<>();
			resultSet.add("AA");
			resultSet.add("AB");
			resultSet.add("AC");

			req.setAttribute("result", resultSet);
			req.getRequestDispatcher("/WEB-INF/views/hello.jsp").forward(req, resp);

		} else if (cmd.equals("/pizza/form")) {
			req.getRequestDispatcher("/WEB-INF/views/pizza/form.jsp").forward(req, resp);
		} else if (cmd.equals("/pizza/cart/add")) {
			String size = req.getParameter("size1");
			String qtyStr = req.getParameter("qty1");

			if (size == null || qtyStr == null || size.equals("") || qtyStr.equals("")) {
				throw new ServletException();
			}
			int qty = Integer.parseInt(qtyStr);

			System.out.println(size);
			System.out.println(qty);
			Object c = session.getAttribute("cart");

			if (c == null) {
				// 새로운 장바구니 리스트 추가
				List<PizzaOrder> newCart = new ArrayList<>();
				newCart.add(new PizzaOrder(size, qty));
				session.setAttribute("cart", newCart);
			} else {
				List<PizzaOrder> cart = (List) c;
				cart.add(new PizzaOrder(size, qty));
			}
			// req.getContextPath() 를 사용하면 저 주소가 변해도 대응가능함
			resp.sendRedirect(req.getContextPath() + "/pizza/form");

		}

		// 3. 포워딩

	}

}
