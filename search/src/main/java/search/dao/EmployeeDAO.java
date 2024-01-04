package search.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import search.dto.EmployeeDTO;

public class EmployeeDAO {

	public List<EmployeeDTO> search(String type, String query) {
		
		List<EmployeeDTO> emps = new ArrayList<>();
		String sql = "select employee_id, first_name, last_name, salary, "
				+ "hire_date, department_name from employees e, departments d "
				+ "where e.department_id = d.department_id and lower("+ type + ") like ?";

		try(
			Connection conn = DBConnector.getConnection();
			PreparedStatement pstmt = conn.prepareStatement(sql);
		){
			pstmt.setString(1, "%"+query.toLowerCase()+"%");
			
			try(ResultSet rs = pstmt.executeQuery()){
				while(rs.next()) {
					emps.add(new EmployeeDTO(
							rs.getInt("employee_id"), rs.getString("first_name"),
							rs.getString("last_name"), rs.getDouble("salary"),
							rs.getDate("hire_date"), rs.getString("department_name")));
				}
			}
			return emps;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return null;
		}
	}

}
