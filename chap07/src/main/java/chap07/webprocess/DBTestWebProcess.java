package chap07.webprocess;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import chap07.DBConnector;
import chap07.DTO.EmployeeDTO;

public class DBTestWebProcess implements WebProcess{
	
	@Override
	public String process(HttpServletRequest request) {
		
	//	 DB에서 값을 꺼낸 후
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		try (Connection conn = DBConnector.getConnection();
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

			// public String process(HttpServletRequest request) 에서 
			// 매개변수로 request 를 override 해야 여기서 데이터를 보낼 수 있음 
			request.setAttribute("employees", employees);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		return "/WEB-INF/views/dbtest/list.jsp";
	}

}
