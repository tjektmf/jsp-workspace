package chap07.servlet;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import chap07.util.UriParser;
import chap07.webprocess.BreadAddFormWebProcess;
import chap07.webprocess.BreadAddWebProcess;
import chap07.webprocess.BreadDeleteFormWebProcess;
import chap07.webprocess.BreadDeleteWebProcess;
import chap07.webprocess.BreadListWebProcess;
import chap07.webprocess.BreadUpdateFormWebProcess;
import chap07.webprocess.BreadUpdateWebProcess;
import chap07.webprocess.DBTestWebProcess;
import chap07.webprocess.IndexWebProcess;
import chap07.webprocess.WebProcess;

public class ApplicationServlet extends HttpServlet {

	static Map<String, WebProcess> uriMapping = new HashMap<>();

	static {

		// (1) 전달받은 URI(cmd)에 따라 알맞은 웹 프로세스를 꺼내줄 수 있는 맵을 생성해두면 if 문을 사용하지 않을 수 있다 (커맨드
		// 패턴)
		// WebProcess 를 상속받았으므로 uriMapping 의 매개변수로 사용이 가능함

		// 기본적으로 web.xml 에서 모든 URI를 ApplicationServlet 으로 보내게끔 설정을 해놨기 때문에 이런 작업도 가능한거임

		uriMapping.put("GET::/", new IndexWebProcess());
		uriMapping.put("GET::/dbtest/list", new DBTestWebProcess());
		uriMapping.put("GET::/bread/list", new BreadListWebProcess());
		// 같은 주소에 다른 메서드를 연결하고 싶을 때 겟 포스트 두가지로 가능
		uriMapping.put("GET::/bread/add", new BreadAddFormWebProcess());
		uriMapping.put("POST::/bread/add", new BreadAddWebProcess());
		
		uriMapping.put("GET::/bread/delete", new BreadDeleteFormWebProcess());
		uriMapping.put("POST::/bread/delete", new BreadDeleteWebProcess());
		
		uriMapping.put("GET::/bread/update", new BreadUpdateFormWebProcess());
		uriMapping.put("POST::/bread/update", new BreadUpdateWebProcess());
	}

	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		String cmd = UriParser.getCmd(req);
	//	System.out.println("method : " + req.getMethod());

		// 내가 전달받은 URI를 문자열 형태로 전달받으면 다음으로 가야할 뷰 페이지를 반환하는 메서드가 있으면
		// 코드가 전체적으로 간결해질 수 있음을 파악해야함 코드는 간결할수록 좋음

		// 1. URI를 문자열 형태로 전달받는다
		// 2. 해당 URI에 알맞은 처리를 한다(DB 등)
		// 3. 내가 다음으로 가야할 뷰 페이지로 포워드하거나 리다이렉트한다

		String nextPage = uriMapping.get(cmd).process(req);
	//	System.out.println(uriMapping.get(cmd));
		System.out.println(nextPage);
		if (nextPage.startsWith("redirect::")) {
			resp.sendRedirect(nextPage.substring("redirect::".length()));
		} else {
			req.getRequestDispatcher(nextPage).forward(req, resp);
		}

		// if 문을 사용할 때의 문제점
		// 코드의 양이 과하게 늘어나기 때문에 유지보수가 힘들어짐
		// 이런 특성을 가진 if 문은 제거해야함 - Interface 와 Map 을 활용

//		if (cmd.equals("/")) {
//			req.getRequestDispatcher("/WEB-INF/views/index.jsp").forward(req, resp);
//		} else if (cmd.equals("/dbtest/list")) {
//
//			// DB에서 값을 꺼낸 후
//			try {
//				Class.forName("oracle.jdbc.driver.OracleDriver");
//			} catch (ClassNotFoundException e) {
//				// TODO Auto-generated catch block
//				e.printStackTrace();
//			}
//
//			try (Connection conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE", "hr", "1234");
//					PreparedStatement pstmt = conn.prepareStatement("select * from employees");
//					ResultSet rs = pstmt.executeQuery();) {
//
//				// dto : 읽기/쓰기 가능
//				// vo : 읽기 전용
//				List<EmployeeDTO> employees = new ArrayList<>();
//				while (rs.next()) {
//					employees.add(new EmployeeDTO(rs.getInt("employee_id"), rs.getString("first_name"),
//							rs.getString("last_name"), rs.getDouble("salary"), rs.getDouble("commission_pct"),
//							rs.getDate("hire_date"), rs.getString("job_id"), rs.getInt("manager_id"),
//							rs.getInt("department_id")));
//				}
//
//				req.setAttribute("employees", employees);
//			} catch (SQLException e) {
//				// TODO Auto-generated catch block
//				e.printStackTrace();
//			}
//
//			// 포워딩
//			req.getRequestDispatcher("/WEB-INF/views/dbtest/list.jsp").forward(req, resp);
//
//		} else if (cmd.equals("/dbtest/cafe")) {
//
//			try (Connection conn = JdbcConnection.getConnection();
//
//					PreparedStatement pstmt = conn.prepareStatement("select * from coffee");
//					ResultSet rs = pstmt.executeQuery();) {
//				List<CafeDTO> coffee = new ArrayList();
//				while (rs.next()) {
//					coffee.add(new CafeDTO(rs.getInt("coffee_number"), rs.getString("coffee_name"),
//							rs.getInt("coffee_price"), rs.getString("coffee_size")));
//				}
//				// 이렇게 뽑았으면 뽑아서 배열에 차곡차곡 쌓은 값을 while 문이 끝나고 어트리뷰트에 넣어서 보냄
//				// 그래야 포워딩한곳에서 데이터 사용가능함
//				req.setAttribute("coffee", coffee);
//
//			} catch (SQLException e) {
//				// TODO Auto-generated catch block
//				e.printStackTrace();
//			}
//
//			// 포워딩
//			req.getRequestDispatcher("/WEB-INF/views/dbtest/cafe.jsp").forward(req, resp);
//
//		} else if (cmd.equals("/dbtest/insert")) {
//			System.out.println("insert로 접근");
//
//			String name = req.getParameter("name");
//			String price = req.getParameter("price");
//			String size = req.getParameter("size");
//
//			if (name == null || price == null || size == null || name.equals("") || price.equals("")
//					|| size.equals("")) {
//
//				req.getRequestDispatcher("/WEB-INF/views/dbtest/insert.jsp").forward(req, resp);
//				return;
//			}
//
//			if (price != null && !price.equals("")) {
//				Integer.parseInt(price);
//			}
//
//			try (Connection conn = JdbcConnection.getConnection();
//					PreparedStatement pstmt = conn.prepareStatement("insert into coffee "
//							+ "values(coffee_number_seq.nextval,'" + name + "', " + price + ",'" + size + "' )");
//					ResultSet rs = pstmt.executeQuery();) {
//			} catch (SQLException e) {
//				// TODO Auto-generated catch block
//				e.printStackTrace();
//			}
//
//			req.getRequestDispatcher("/WEB-INF/views/dbtest/insert.jsp").forward(req, resp);
//
//		} else if (cmd.equals("/dbtest/delete")) {
//			System.out.println("delete로 접근");
//
//			int errorNumber = 1;
//			boolean error = true;
//			req.setAttribute("errorNumber", errorNumber);
//			String delete = req.getParameter("deleteMenu");
//			System.out.println(delete);
//
//			if (delete == null || delete.equals("")) {
//				
//				req.getRequestDispatcher("/WEB-INF/views/dbtest/delete.jsp").forward(req, resp);
//				// resp.sendRedirect(req.getContextPath() + "/dbtest/delete?error=1");
//				return;
//			}
//			System.out.println("delete 진행중");
//
//			try (Connection conn = JdbcConnection.getConnection();
//					// delete 를 사용해 데이터를 삭제할 때 열이 지워짐
//					// 그래서 where 조건을 사용해 특정 값만 제거해야하며
//					// 이 경우 중복값이 존재하지 않는 PK를 사용하는게 일반적이다
//					// delete from coffee where
//					PreparedStatement pstmt = conn.prepareStatement("select * from coffee");
//					ResultSet rs = pstmt.executeQuery();) {
//
//				while (rs.next()) {
//					if (rs.getString("coffee_name").equals(delete)) {
//						PreparedStatement pstmt2 = conn
//								.prepareStatement("delete from coffee where coffee_name = '" + delete + "'");
//						pstmt2.executeQuery();
//						error = false;
//					} 
//				}
//				if (error) {
//					System.out.println("on");
//					errorNumber = 0;
//					req.setAttribute("errorNumber", errorNumber);
//				}
//			} catch (SQLException e) {
//				// TODO Auto-generated catch block
//				e.printStackTrace();
//			}
//
//			req.getRequestDispatcher("/WEB-INF/views/dbtest/delete.jsp").forward(req, resp);
//
//		} else if (cmd.equals("/dbtest/update")) {
//			System.out.println("update로 접근");
//
//			String number = req.getParameter("number");
//			String name = req.getParameter("name");
//			String price = req.getParameter("price");
//			String size = req.getParameter("size");
//
//			if ((name == null && price == null && size == null)
//					|| name.equals("") && price.equals("") && size.equals("")) {
//				req.getRequestDispatcher("/WEB-INF/views/dbtest/update.jsp").forward(req, resp);
//				return;
//			}
//
//			System.out.println("update 진행중");
//			int price2 = Integer.parseInt(price);
//			int number2 = Integer.parseInt(number);
//			System.out.println(number2);
//
//			try (Connection conn = JdbcConnection.getConnection();
//					PreparedStatement pstmt = conn.prepareStatement("select * from coffee");
//					ResultSet rs = pstmt.executeQuery();) {
//
//				while (rs.next()) {
//					if (rs.getInt("coffee_number") == number2) {
//						PreparedStatement pstmt2 = conn
//								.prepareStatement("update coffee set coffee_name = '" + name + "', coffee_price = "
//										+ price2 + ", coffee_size = '" + size + "' where coffee_number = " + number2);
//						pstmt2.executeUpdate();
//						System.out.println("추가 완료");
//					}
//				}
//
//			} catch (SQLException e) {
//				// TODO Auto-generated catch block
//				e.printStackTrace();
//			}
//
//			req.getRequestDispatcher("/WEB-INF/views/dbtest/update.jsp").forward(req, resp);
//		} else if(cmd.equals("dbtest/bread/list")) {
//			
//			req.getRequestDispatcher("/WEB-INF/views/dbtest/bread/list.jsp").forward(req, resp);
//		}
//
	}

}
