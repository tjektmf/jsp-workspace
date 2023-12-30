package chap07.servlet;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import chap07.JdbcConnection;
import chap07.DTO.CafeDTO;
import chap07.DTO.EmployeeDTO;
import chap07.util.UriParser;

public class ApplicationServlet extends HttpServlet {

	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		String cmd = UriParser.getCmd(req);

		if (cmd.equals("/")) {
			req.getRequestDispatcher("/WEB-INF/views/index.jsp").forward(req, resp);
		} else if (cmd.equals("/dbtest/list")) {

			// DB에서 값을 꺼낸 후
			try {
				Class.forName("oracle.jdbc.driver.OracleDriver");
			} catch (ClassNotFoundException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}

			try (Connection conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE", "hr", "1234");
					PreparedStatement pstmt = conn.prepareStatement("select * from employees");
					ResultSet rs = pstmt.executeQuery();) {

				// dto : 읽기/쓰기 가능
				// vo : 읽기 전용
				List<EmployeeDTO> employees = new ArrayList<>();
				while (rs.next()) {
					employees.add(new EmployeeDTO(rs.getInt("employee_id"), rs.getString("first_name"),
							rs.getString("last_name"), rs.getDouble("salary"), rs.getDouble("commission_pct"),
							rs.getDate("hire_date"), rs.getString("job_id"), rs.getInt("manager_id"),
							rs.getInt("department_id")));
				}

				req.setAttribute("employees", employees);
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}

			// 포워딩
			req.getRequestDispatcher("/WEB-INF/views/dbtest/list.jsp").forward(req, resp);

		} else if (cmd.equals("/dbtest/cafe")) {

			try (Connection conn = JdbcConnection.getConnection();

					PreparedStatement pstmt = conn.prepareStatement("select * from coffee");
					ResultSet rs = pstmt.executeQuery();) {
				List<CafeDTO> coffee = new ArrayList();
				while (rs.next()) {
					coffee.add(new CafeDTO(rs.getInt("coffee_number"), rs.getString("coffee_name"),
							rs.getInt("coffee_price"), rs.getString("coffee_size")));
				}
				// 이렇게 뽑았으면 뽑아서 배열에 차곡차곡 쌓은 값을 while 문이 끝나고 어트리뷰트에 넣어서 보냄
				// 그래야 포워딩한곳에서 데이터 사용가능함
				req.setAttribute("coffee", coffee);

			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}

			// 포워딩
			req.getRequestDispatcher("/WEB-INF/views/dbtest/cafe.jsp").forward(req, resp);

		} else if (cmd.equals("/dbtest/insert")) {
			System.out.println("insert로 접근");

			String name = req.getParameter("name");
			String price = req.getParameter("price");
			String size = req.getParameter("size");

			if (name == null || price == null || size == null || name.equals("") || price.equals("")
					|| size.equals("")) {
				req.getRequestDispatcher("/WEB-INF/views/dbtest/insert.jsp").forward(req, resp);
				return;
			}

			if (price != null && !price.equals("")) {
				Integer.parseInt(price);
			}

			try (Connection conn = JdbcConnection.getConnection();
					PreparedStatement pstmt = conn.prepareStatement("insert into coffee " + "values(coffee_number_seq.nextval,'" + name + "', "
							+ price + ",'" + size + "' )");
					ResultSet rs = pstmt.executeQuery();) {
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}

			req.getRequestDispatcher("/WEB-INF/views/dbtest/insert.jsp").forward(req, resp);

		} else if (cmd.equals("/dbtest/delete")) {
			System.out.println("delete로 접근");

			String delete = req.getParameter("delete");
			System.out.println(delete);

			if (delete == null || delete.equals("")) {
				req.getRequestDispatcher("/WEB-INF/views/dbtest/delete.jsp").forward(req, resp);
				// resp.sendRedirect(req.getContextPath() + "/dbtest/delete?error=1");
				return;
			}
			System.out.println("delete 진행중");

			try (Connection conn = JdbcConnection.getConnection();
					// delete 를 사용해 데이터를 삭제할 때 열이 지워짐
					// 그래서 where 조건을 사용해 특정 값만 제거해야하며
					// 이 경우 중복값이 존재하지 않는 PK를 사용하는게 일반적이다
					// delete from coffee where
					PreparedStatement pstmt = conn.prepareStatement("select * from coffee");
					ResultSet rs = pstmt.executeQuery();) {

				while (rs.next()) {
					if (rs.getString("coffee_name").equals(delete)) {
						PreparedStatement pstmt2 = conn
								.prepareStatement("delete from coffee where coffee_name = '" + delete + "'");
						pstmt2.executeQuery();
					}
				}
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}

			req.getRequestDispatcher("/WEB-INF/views/dbtest/delete.jsp").forward(req, resp);

		} else if (cmd.equals("/dbtest/update")) {
			System.out.println("update로 접근");

			String number = req.getParameter("number");
			String name = req.getParameter("name");
			String price = req.getParameter("price");
			String size = req.getParameter("size");

			if ((name == null && price == null && size == null)
					|| name.equals("") && price.equals("") && size.equals("")) {
				req.getRequestDispatcher("/WEB-INF/views/dbtest/update.jsp").forward(req, resp);
				return;
			}

			System.out.println("update 진행중");
			int price2 = Integer.parseInt(price);
			int number2 = Integer.parseInt(number);
			System.out.println(number2);

			try (Connection conn = JdbcConnection.getConnection();
					PreparedStatement pstmt = conn.prepareStatement("select * from coffee");
					ResultSet rs = pstmt.executeQuery();) {

				while (rs.next()) {
					if (rs.getInt("coffee_number") == number2) {
						PreparedStatement pstmt2 = conn
								.prepareStatement("update coffee set coffee_name = '" + name + "', coffee_price = "
										+ price2 + ", coffee_size = '" + size + "' where coffee_number = " + number2);
						pstmt2.executeUpdate();
						System.out.println("추가 완료");
					}
				}

			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}

			req.getRequestDispatcher("/WEB-INF/views/dbtest/update.jsp").forward(req, resp);
		}
//
	}

}
